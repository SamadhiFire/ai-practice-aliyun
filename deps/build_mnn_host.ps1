# build_mnn_host.ps1 - Build a standalone host-side MNNConvert executable for Windows model export
# Usage: .\build_mnn_host.ps1

param(
    [string]$Generator = "",
    [switch]$SkipConfigure
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$DepsDir = $ScriptDir
$MnnDir = Join-Path $DepsDir "MNN"
$BuildDir = Join-Path $MnnDir "build_host"

function Test-CommandExists {
    param([string]$Name)
    return $null -ne (Get-Command $Name -ErrorAction SilentlyContinue)
}

function Find-VisualStudioDevCmd {
    $vswhereCandidates = @(
        "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe",
        "$env:ProgramFiles\Microsoft Visual Studio\Installer\vswhere.exe"
    )
    foreach ($vswhere in $vswhereCandidates) {
        if (-not (Test-Path -LiteralPath $vswhere)) { continue }
        $installPath = & $vswhere -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath
        if (-not [string]::IsNullOrWhiteSpace($installPath)) {
            $candidate = Join-Path $installPath "Common7\Tools\VsDevCmd.bat"
            if (Test-Path -LiteralPath $candidate) { return $candidate }
        }
    }

    $visualStudioRoot = Join-Path $env:ProgramFiles "Microsoft Visual Studio"
    if (Test-Path -LiteralPath $visualStudioRoot) {
        $candidate = Get-ChildItem -LiteralPath $visualStudioRoot -Filter "VsDevCmd.bat" -Recurse -ErrorAction SilentlyContinue |
            Select-Object -First 1 -ExpandProperty FullName
        if ($candidate) { return $candidate }
    }
    return ""
}

function Import-VisualStudioEnvironment {
    if (Test-CommandExists "cl") { return }

    $vsDevCmd = Find-VisualStudioDevCmd
    if ([string]::IsNullOrWhiteSpace($vsDevCmd)) { return }

    Write-Host "Loading x64 Visual Studio toolchain: $vsDevCmd" -ForegroundColor DarkGray
    $environmentLines = & $env:ComSpec /d /s /c "`"$vsDevCmd`" -no_logo -arch=x64 -host_arch=x64 >nul && set"
    if ($LASTEXITCODE -ne 0) {
        throw "Failed to load the Visual Studio x64 developer environment from $vsDevCmd"
    }

    # Some parent processes expose both PATH and Path. MSBuild treats those as
    # duplicate case-insensitive keys and then fails before cl.exe can start.
    Remove-Item -Path "Env:PATH" -ErrorAction SilentlyContinue
    Remove-Item -Path "Env:Path" -ErrorAction SilentlyContinue

    $importedNames = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
    foreach ($line in $environmentLines) {
        $separator = $line.IndexOf("=")
        if ($separator -le 0) { continue }
        $name = $line.Substring(0, $separator)
        if (-not $importedNames.Add($name)) { continue }
        $value = $line.Substring($separator + 1)
        Set-Item -Path "Env:$name" -Value $value
    }

    if (-not (Test-CommandExists "cl")) {
        throw "Visual Studio environment loaded, but x64 cl.exe is still unavailable. Run this script from an x64 Visual Studio developer terminal."
    }
}

function Get-AvailableCMakeGenerators {
    try {
        return (cmake --help) 2>$null
    } catch {
        return @()
    }
}

function Resolve-VisualStudioGenerator {
    $helpText = Get-AvailableCMakeGenerators
    $preferred = @(
        "Visual Studio 18 2026",
        "Visual Studio 17 2022",
        "Visual Studio 16 2019"
    )
    foreach ($generator in $preferred) {
        if ($helpText -match [regex]::Escape($generator)) {
            return $generator
        }
    }
    return ""
}

function Resolve-Generator {
    param([string]$RequestedGenerator)
    if (-not [string]::IsNullOrWhiteSpace($RequestedGenerator)) {
        return $RequestedGenerator
    }
    $vsGenerator = Resolve-VisualStudioGenerator
    if (-not [string]::IsNullOrWhiteSpace($vsGenerator)) {
        return $vsGenerator
    }
    if (Test-CommandExists "ninja") {
        return "Ninja"
    }
    if ((Test-CommandExists "cl") -and (Test-CommandExists "nmake")) {
        return "NMake Makefiles"
    }
    return ""
}

function Assert-HostToolchainReady {
    $vsGenerator = Resolve-VisualStudioGenerator
    $hasNinja = Test-CommandExists "ninja"
    $hasCl = Test-CommandExists "cl"
    $hasNmake = Test-CommandExists "nmake"
    $hasGcc = Test-CommandExists "gcc"
    $hasGxx = Test-CommandExists "g++"

    if (-not [string]::IsNullOrWhiteSpace($vsGenerator) -or $hasNinja -or ($hasCl -and $hasNmake) -or ($hasGcc -and $hasGxx)) {
        return
    }

    throw @"
No usable Windows C/C++ host toolchain was found in the current terminal.

Checked commands:
  visual studio generator = $vsGenerator
  ninja  = $hasNinja
  cl     = $hasCl
  nmake  = $hasNmake
  gcc    = $hasGcc
  g++    = $hasGxx

What to install:
  1. Visual Studio Build Tools 2022
  2. Workload: Desktop development with C++
  3. Optional: Ninja

Recommended way to rerun after installation:
  - Open "x64 Native Tools Command Prompt for VS 2022" or "Developer PowerShell for VS 2022"
  - cd D:\桌面\AGithub\ai-practice-aliyun\deps
  - powershell -ExecutionPolicy Bypass -File .\build_mnn_host.ps1
"@
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Build host-side MNNConvert" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Source: $MnnDir" -ForegroundColor White
Write-Host " Build : $BuildDir" -ForegroundColor White
Write-Host ""

if (-not (Test-Path (Join-Path $MnnDir "CMakeLists.txt"))) {
    throw "MNN source not found. Run .\setup_mnn.ps1 -SkipConvert first or clone deps/MNN."
}

Import-VisualStudioEnvironment
Assert-HostToolchainReady
$ResolvedGenerator = Resolve-Generator $Generator
if ([string]::IsNullOrWhiteSpace($ResolvedGenerator)) {
    throw "Failed to resolve a usable CMake generator. Install Ninja, or rerun inside a Visual Studio developer terminal that provides cl + nmake."
}

$UseVisualStudioGenerator = $ResolvedGenerator.StartsWith("Visual Studio")

New-Item -ItemType Directory -Force -Path $BuildDir | Out-Null

Push-Location $BuildDir
try {
    if ($SkipConfigure) {
        if (-not (Test-Path -LiteralPath (Join-Path $BuildDir "CMakeCache.txt"))) {
            throw "Cannot skip configure because $BuildDir\CMakeCache.txt does not exist."
        }
        Write-Host "Continuing the existing configured build..." -ForegroundColor DarkGray
    } else {
        $cmakeArgs = @(
            "--fresh",
            "-S", "..",
            "-B", ".",
            "-G", $ResolvedGenerator,
            "-DMNN_BUILD_CONVERTER=ON",
            "-DMNN_BUILD_LLM=OFF",
            "-DMNN_BUILD_SHARED_LIBS=OFF",
            "-DMNN_WIN_RUNTIME_MT=ON",
            "-DMNN_SEP_BUILD=OFF",
            "-Dprotobuf_BUILD_SHARED_LIBS=OFF",
            "-Dprotobuf_MSVC_STATIC_RUNTIME=ON",
            "-DCMAKE_BUILD_TYPE=Release"
        )
        if ($UseVisualStudioGenerator) {
            $cmakeArgs += @("-A", "x64")
        }
        & cmake @cmakeArgs
        if ($LASTEXITCODE -ne 0) { throw "CMake configure failed" }
    }

    cmake --build . --config Release --target MNNConvert --parallel 8
    if ($LASTEXITCODE -ne 0) { throw "Host build failed" }
} finally {
    Pop-Location
}

$candidatePaths = @(
    (Join-Path $BuildDir "MNNConvert.exe"),
    (Join-Path $BuildDir "Release/MNNConvert.exe"),
    (Join-Path $BuildDir "tools/converter/MNNConvert.exe"),
    (Join-Path $BuildDir "tools/converter/Release/MNNConvert.exe")
)
$mnnConvertExe = $candidatePaths | Where-Object { Test-Path $_ } | Select-Object -First 1

if (-not $mnnConvertExe) {
    throw "Build finished, but MNNConvert.exe was not found. Search under $BuildDir manually."
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host " Host MNNConvert is ready" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host "Executable: $mnnConvertExe" -ForegroundColor Cyan
Write-Host ""
Write-Host "Recommended next command:" -ForegroundColor Cyan
Write-Host "  .\setup_mnn.ps1 -SkipClone -MnnConvertPath `"$mnnConvertExe`"" -ForegroundColor White
