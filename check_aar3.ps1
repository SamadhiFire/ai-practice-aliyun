[System.IO.Compression.ZipFile] | Out-Null
$root = Split-Path -Parent $PSCommandPath
$aar = Join-Path $root "frontend\nativeplugins\MnnQwenPlugin\android\MnnQwenPlugin.aar"
Write-Host "Looking at: $aar"
Write-Host "exists: $(Test-Path $aar)"

$z = [System.IO.Compression.ZipFile]::OpenRead($aar)
$hasAssets = $false
foreach ($e in $z.Entries) {
    if ($e.FullName.StartsWith("assets/")) {
        $mb = [math]::Round($e.Length/1MB, 2)
        Write-Host "$($e.FullName)  $mb MB"
        $hasAssets = $true
    }
}
if (-not $hasAssets) {
    Write-Host "NO ASSETS FOUND in AAR"
    Write-Host "Total entries: $($z.Entries.Count)"
    foreach ($e in $z.Entries) {
        Write-Host $e.FullName
    }
}
$z.Dispose()
