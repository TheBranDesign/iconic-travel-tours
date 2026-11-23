# Iconic Travel & Tours - Automated Deployment Helper Script
# This script sets up PATH, checks GitHub login, creates the repository, and pushes the code.

$toolsPath = "C:\Users\Troy\tools\node-v20.18.0-win-x64;C:\Users\Troy\tools\git\cmd;C:\Users\Troy\tools\gh\bin;"
$env:PATH = $toolsPath + $env:PATH

Set-Location -Path $PSScriptRoot

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  ICONIC TRAVEL & TOURS - GITHUB PAGES DEPLOYMENT HELPER  " -ForegroundColor Gold
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Repository: https://github.com/thebrandesign/iconic-travel-tours"
Write-Host "Live URL: https://thebrandesign.github.io/iconic-travel-tours/"
Write-Host ""

# Check if authenticated with GitHub
$authCheck = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "[*] Authorizing with GitHub (thebrandesign)..." -ForegroundColor Yellow
    Write-Host "A browser window will open. Approve the login to continue."
    gh auth login --hostname github.com --git-protocol https --web
}

# Verify login succeeded
$authCheck = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "[!] GitHub login was not completed. Please run ./deploy.ps1 again when ready." -ForegroundColor Red
    exit 1
}

Write-Host "[✓] GitHub authentication verified!" -ForegroundColor Green

# Create repo if not already created
Write-Host "[*] Creating repository 'iconic-travel-tours' on GitHub..." -ForegroundColor Yellow
gh repo create iconic-travel-tours --public --source=. --remote=origin --push 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "[*] Repository might already exist. Attempting direct git push..." -ForegroundColor Yellow
    git push -u origin main
}

Write-Host ""
Write-Host "[✓] CODE SUCCESSFULLY PUSHED TO GITHUB!" -ForegroundColor Green
Write-Host "Repository URL: https://github.com/thebrandesign/iconic-travel-tours" -ForegroundColor Cyan
Write-Host ""
Write-Host "[*] Configuring GitHub Pages..." -ForegroundColor Yellow
gh api -X POST repos/thebrandesign/iconic-travel-tours/pages -f build_type=workflow 2>&1

Write-Host ""
Write-Host "==========================================================" -ForegroundColor Green
Write-Host "  DEPLOYMENT COMPLETE!                                    " -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green
Write-Host "GitHub Pages deployment is now running via GitHub Actions."
Write-Host "Actions Tab: https://github.com/thebrandesign/iconic-travel-tours/actions"
Write-Host "Published URL: https://thebrandesign.github.io/iconic-travel-tours/"
Write-Host "==========================================================" -ForegroundColor Green
