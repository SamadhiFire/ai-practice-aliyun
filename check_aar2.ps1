Add-Type -AssemblyName System.IO.Compression.FileSystem
$aar = "D:\桌面\AGithub\ai-practice-aliyun\frontend\nativeplugins\MnnQwenPlugin\android\MnnQwenPlugin.aar"
$z = [System.IO.Compression.ZipFile]::OpenRead($aar)
$entries = $z.Entries | Where-Object { $_.FullName -like "assets/*" }
if ($entries.Count -gt 0) {
    foreach ($e in $entries) {
        Write-Host ($e.FullName + "  " + [math]::Round($e.Length/1MB,2) + "MB")
    }
} else {
    Write-Host "NO ASSETS FOUND"
}
$z.Dispose()
