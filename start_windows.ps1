$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$Python = Join-Path $ProjectRoot "venv\Scripts\python.exe"

if (-not (Test-Path $Python)) {
    Write-Error "Virtual environment Python not found at $Python"
    exit 1
}

Start-Process -FilePath $Python -ArgumentList "engine.py" -WorkingDirectory $ProjectRoot
Start-Sleep -Seconds 2
& $Python (Join-Path $ProjectRoot "api.py")
