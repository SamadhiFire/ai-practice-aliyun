param(
    [string]$AppId = "__UNI__5B06C7F",
    [string]$HBuilderXRoot = "D:\Users\32530\Downloads\HBuilderX.5.07.2026041006\HBuilderX",
    [string]$InputApk = "",
    [string]$ResourceDir = "",
    [string]$OutputApk = ""
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path $PSScriptRoot -Parent
if ([string]::IsNullOrWhiteSpace($InputApk)) {
    $InputApk = Join-Path $repoRoot "frontend\dist\debug\android_debug.apk"
}
if ([string]::IsNullOrWhiteSpace($ResourceDir)) {
    $ResourceDir = Join-Path $repoRoot "frontend\unpackage\resources\$AppId\www"
}
if ([string]::IsNullOrWhiteSpace($OutputApk)) {
    $OutputApk = Join-Path $repoRoot "frontend\dist\release\ai-niuma-standalone-demo.apk"
}

$InputApk = [IO.Path]::GetFullPath($InputApk)
$ResourceDir = [IO.Path]::GetFullPath($ResourceDir)
$OutputApk = [IO.Path]::GetFullPath($OutputApk)
$resolvedRepoRoot = [IO.Path]::GetFullPath($repoRoot)
if (-not $OutputApk.StartsWith($resolvedRepoRoot, [StringComparison]::OrdinalIgnoreCase)) {
    throw "Output APK must stay inside the workspace: $OutputApk"
}
if (-not (Test-Path -LiteralPath $InputApk)) {
    throw "Custom base APK not found: $InputApk"
}
if (-not (Test-Path -LiteralPath (Join-Path $ResourceDir "__uniappview.html"))) {
    throw "Exported app resources are incomplete: $ResourceDir"
}

$keytool = Join-Path $HBuilderXRoot "plugins\amazon-corretto\bin\keytool.exe"
$java = Join-Path $HBuilderXRoot "plugins\amazon-corretto\bin\java.exe"
$javac = Join-Path $HBuilderXRoot "plugins\amazon-corretto\bin\javac.exe"
if (-not (Test-Path -LiteralPath $keytool) -or
    -not (Test-Path -LiteralPath $java) -or
    -not (Test-Path -LiteralPath $javac)) {
    throw "HBuilderX signing tools were not found under: $HBuilderXRoot"
}

$apkSigJar = Join-Path $PSScriptRoot "tools\apksig-8.5.2.jar"
$apkSignToolSource = Join-Path $PSScriptRoot "tools\ApkSignTool.java"
$apkSignToolClasses = Join-Path $PSScriptRoot "tools\apksig-classes"
if (-not (Test-Path -LiteralPath $apkSigJar) -or
    -not (Test-Path -LiteralPath $apkSignToolSource)) {
    throw "Google apksig signing tool is missing under deps\tools"
}

$outputDir = Split-Path $OutputApk -Parent
New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
$unsignedApk = "$OutputApk.unsigned"
if (Test-Path -LiteralPath $unsignedApk) {
    Remove-Item -LiteralPath $unsignedApk -Force
}
Copy-Item -LiteralPath $InputApk -Destination $unsignedApk -Force

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$resourcePrefix = "assets/apps/$AppId/www/"
$archive = [IO.Compression.ZipFile]::Open($unsignedApk, [IO.Compression.ZipArchiveMode]::Update)
try {
    foreach ($entry in @($archive.Entries | Where-Object {
        $_.FullName.StartsWith($resourcePrefix, [StringComparison]::OrdinalIgnoreCase) -or
        $_.FullName -match '^META-INF/.*\.(RSA|DSA|EC|SF|MF)$'
    })) {
        $entry.Delete()
    }

    foreach ($file in Get-ChildItem -LiteralPath $ResourceDir -Recurse -File) {
        $relativePath = $file.FullName.Substring($ResourceDir.Length).TrimStart('\').Replace('\', '/')
        $entry = $archive.CreateEntry(
            $resourcePrefix + $relativePath,
            [IO.Compression.CompressionLevel]::Optimal
        )
        $entry.LastWriteTime = $file.LastWriteTime
        $input = $file.OpenRead()
        $output = $entry.Open()
        try {
            $input.CopyTo($output)
        } finally {
            $output.Dispose()
            $input.Dispose()
        }
    }

    $controlPath = "assets/data/dcloud_control.xml"
    $controlEntry = $archive.GetEntry($controlPath)
    if ($controlEntry) {
        $reader = [IO.StreamReader]::new($controlEntry.Open(), [Text.Encoding]::UTF8)
        try {
            $controlXml = $reader.ReadToEnd()
        } finally {
            $reader.Dispose()
        }
        $controlXml = $controlXml.Replace('debug="true"', 'debug="false"')
        $controlXml = $controlXml.Replace('syncDebug="true"', 'syncDebug="false"')
        $controlEntry.Delete()
        $newControlEntry = $archive.CreateEntry($controlPath, [IO.Compression.CompressionLevel]::Optimal)
        $writer = [IO.StreamWriter]::new($newControlEntry.Open(), [Text.UTF8Encoding]::new($false))
        try {
            $writer.Write($controlXml)
        } finally {
            $writer.Dispose()
        }
    }
} finally {
    $archive.Dispose()
}

$keystore = Join-Path $PSScriptRoot "demo-debug.keystore"
$storePassword = "android"
$alias = "androiddebugkey"
if (-not (Test-Path -LiteralPath $keystore)) {
    & $keytool -genkeypair -noprompt `
        -keystore $keystore `
        -storepass $storePassword `
        -keypass $storePassword `
        -alias $alias `
        -dname "CN=AI Niuma Demo,O=Study Quiz,C=CN" `
        -keyalg RSA `
        -keysize 2048 `
        -validity 10000
    if ($LASTEXITCODE -ne 0) { throw "Demo keystore generation failed" }
}

New-Item -ItemType Directory -Force -Path $apkSignToolClasses | Out-Null
& $javac -encoding UTF-8 -cp $apkSigJar -d $apkSignToolClasses $apkSignToolSource
if ($LASTEXITCODE -ne 0) { throw "ApkSignTool compilation failed" }

if (Test-Path -LiteralPath $OutputApk) {
    Remove-Item -LiteralPath $OutputApk -Force
}
$signerClasspath = "$apkSignToolClasses;$apkSigJar"
& $java -cp $signerClasspath ApkSignTool sign `
    $unsignedApk `
    $OutputApk `
    $keystore `
    $storePassword `
    $alias `
    $storePassword
if ($LASTEXITCODE -ne 0) { throw "APK v2/v3 signing failed" }

& $java -cp $signerClasspath ApkSignTool verify $OutputApk
if ($LASTEXITCODE -ne 0) { throw "APK signature verification failed" }

Remove-Item -LiteralPath $unsignedApk -Force

$apkInfo = Get-Item -LiteralPath $OutputApk
$hash = (Get-FileHash -LiteralPath $OutputApk -Algorithm SHA256).Hash
Write-Host "Standalone demo APK ready: $($apkInfo.FullName)" -ForegroundColor Green
Write-Host "Size: $([math]::Round($apkInfo.Length / 1MB, 2)) MB"
Write-Host "SHA256: $hash"
