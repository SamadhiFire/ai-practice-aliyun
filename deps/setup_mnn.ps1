# setup_mnn.ps1 - Clone MNN + Convert Qwen model (no C++ build required)
# Usage: .\setup_mnn.ps1 [-SkipClone] [-SkipConvert]
# Requires: Git, Python 3.8+

param(
    [switch]$SkipClone,
    [switch]$SkipConvert,
    [string]$MnnConvertPath = ""
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$DepsDir = $ScriptDir
$MnnDir = Join-Path $DepsDir "MNN"
$ModelDir = Join-Path (Split-Path -Parent $DepsDir) "models"
$QwenHF = Join-Path $ModelDir "Qwen/Qwen2___5-0___5B-Instruct"
$QwenMnn = Join-Path $ModelDir "qwen-mnn"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " MNN + Qwen model conversion (Python only)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Clone MNN source (for llmexport.py script)

if (-not $SkipClone) {
    if ((Test-Path $MnnDir) -and (Test-Path (Join-Path $MnnDir "CMakeLists.txt"))) {
        Write-Host "[1/3] MNN already cloned" -ForegroundColor Yellow
    } else {
        # Remove empty/broken directory if exists
        if (Test-Path $MnnDir) {
            Remove-Item -Recurse -Force $MnnDir
        }
        Write-Host "[1/3] Cloning MNN (may take 2-5 min)..." -ForegroundColor Green
        
        # Increase buffer to avoid RPC failures on slow connections
        git config --global http.postBuffer 524288000
        git config --global http.lowSpeedLimit 0
        git config --global http.lowSpeedTime 999999
        
        $cloneOk = $false
        # Try GitHub first
        Write-Host "  Trying GitHub..."
        git clone --depth 1 https://github.com/alibaba/MNN.git $MnnDir 2>&1
        if ($LASTEXITCODE -eq 0) { $cloneOk = $true }
        
        # If GitHub fails, try gitee mirror (faster in China)
        if (-not $cloneOk) {
            Write-Host "  GitHub failed, trying Gitee mirror..." -ForegroundColor Yellow
            if (Test-Path $MnnDir) { Remove-Item -Recurse -Force $MnnDir }
            git clone --depth 1 https://gitee.com/mirrors/MNN.git $MnnDir 2>&1
            if ($LASTEXITCODE -eq 0) { $cloneOk = $true }
        }
        
        if (-not $cloneOk) {
            Write-Host "  ERROR: Both GitHub and Gitee clone failed" -ForegroundColor Red
            Write-Host "  Try manually: git clone https://gitee.com/mirrors/MNN.git $MnnDir" -ForegroundColor Yellow
            throw "Git clone failed"
        }
        Write-Host "  OK MNN cloned" -ForegroundColor Green
    }
} else {
    Write-Host "[1/3] Skip clone" -ForegroundColor Yellow
}

# Step 2: Install Python deps (no C++ build needed)

Write-Host "[2/3] Installing Python dependencies..." -ForegroundColor Green
pip install mnn torch transformers sentencepiece protobuf 2>&1
Write-Host "  OK Python deps installed" -ForegroundColor Green

# Step 3: Convert Qwen to MNN (4-bit)

if (-not $SkipConvert) {
    Write-Host "[3/3] Converting Qwen2.5-0.5B-Instruct to MNN 4bit..." -ForegroundColor Green
    
    if (-not (Test-Path $QwenHF)) {
        Write-Host "  ERROR Model not found: $QwenHF" -ForegroundColor Red
        Write-Host "  Download it first:" -ForegroundColor Yellow
        Write-Host "    huggingface-cli download Qwen/Qwen2.5-0.5B-Instruct --local-dir $QwenHF" -ForegroundColor White
        exit 1
    }
    
    $ExportScript = Join-Path $MnnDir "transformers/llm/export/llmexport.py"
    if (-not (Test-Path $ExportScript)) {
        Write-Host "  ERROR llmexport.py not found: $ExportScript" -ForegroundColor Red
        exit 1
    }
    
    New-Item -ItemType Directory -Force -Path $QwenMnn | Out-Null
    
    $pythonArgs = @(
        $ExportScript,
        "--path", $QwenHF,
        "--export", "mnn",
        "--quant_bit", "4",
        "--quant_block", "128"
    )
    if (-not [string]::IsNullOrWhiteSpace($MnnConvertPath)) {
        $pythonArgs += @("--mnnconvert", $MnnConvertPath)
        Write-Host "  Using standalone MNNConvert: $MnnConvertPath" -ForegroundColor Cyan
    } elseif ($IsWindows) {
        Write-Host "  WARN Windows fallback will invoke PyMNN converter in a subprocess." -ForegroundColor Yellow
        Write-Host "       If this still crashes, build host MNNConvert first:" -ForegroundColor Yellow
        Write-Host "       .\\build_mnn_host.ps1" -ForegroundColor White
    }
    
    python @pythonArgs
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "  ERROR Conversion failed (exit code $LASTEXITCODE)" -ForegroundColor Red
        exit 1
    }
    
    Write-Host "  OK Conversion done" -ForegroundColor Green
    
    # Move output to models/qwen-mnn/
    $OutputDefault = Join-Path (Get-Location) "model"
    if (Test-Path $OutputDefault) {
        Copy-Item -Recurse -Force "$OutputDefault/*" $QwenMnn
        Remove-Item -Recurse -Force $OutputDefault
        Write-Host "  OK Output moved to: $QwenMnn" -ForegroundColor Green
    }
} else {
    Write-Host "[3/3] Skip conversion" -ForegroundColor Yellow
}

# Verify output

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Verify output" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

$expectedFiles = @("config.json", "llm_config.json", "llm.mnn", "llm.mnn.weight", "tokenizer.mtok")
$allOk = $true

foreach ($f in $expectedFiles) {
    $path = Join-Path $QwenMnn $f
    if (Test-Path $path) {
        $size = (Get-Item $path).Length
        Write-Host "  OK $f ($([math]::Round($size/1MB, 2)) MB)" -ForegroundColor Green
    } else {
        Write-Host "  MISS $f" -ForegroundColor Red
        $allOk = $false
    }
}

$WeightPath = Join-Path $QwenMnn "llm.mnn.weight"
if (Test-Path $WeightPath) {
    $weightSize = (Get-Item $WeightPath).Length
    if ($weightSize -lt 50MB) {
        Write-Host "  WARN llm.mnn.weight is unexpectedly small ($([math]::Round($weightSize/1MB, 2)) MB)" -ForegroundColor Yellow
        Write-Host "       Re-check llmexport.py output before staging assets or building APK." -ForegroundColor Yellow
    }
}

Write-Host ""

if ($allOk) {
    Write-Host "========================================" -ForegroundColor Green
    Write-Host " SUCCESS - Model converted to MNN 4bit!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Output: $QwenMnn" -ForegroundColor Cyan
    Write-Host "Next:" -ForegroundColor Cyan
    if ($IsWindows -and [string]::IsNullOrWhiteSpace($MnnConvertPath)) {
        Write-Host "  1. Optional but recommended: .\\build_mnn_host.ps1" -ForegroundColor White
        Write-Host "  2. .\\build_mnn_android.ps1 -NdkPath <your-ndk-path>" -ForegroundColor White
        Write-Host "  3. .\\stage_mnn_android_assets.ps1" -ForegroundColor White
    } else {
        Write-Host "  1. .\\build_mnn_android.ps1 -NdkPath <your-ndk-path>" -ForegroundColor White
        Write-Host "  2. .\\stage_mnn_android_assets.ps1" -ForegroundColor White
    }
} else {
    Write-Host "========================================" -ForegroundColor Red
    Write-Host " Some files missing, check conversion logs" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
}
