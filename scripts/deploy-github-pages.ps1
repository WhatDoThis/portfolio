# GitHub Pages 배포 스크립트 (PowerShell)
# 사용법: .\scripts\deploy-github-pages.ps1

$ErrorActionPreference = "Stop"
$repoName = "portfolio"

Write-Host "=== 1. GitHub 로그인 확인 ===" -ForegroundColor Cyan
gh auth status
if ($LASTEXITCODE -ne 0) {
    Write-Host "GitHub 로그인이 필요합니다. 브라우저에서 인증을 완료하세요." -ForegroundColor Yellow
    gh auth login --web --git-protocol https --hostname github.com
}

Write-Host "`n=== 2. GitHub 저장소 생성 (public) ===" -ForegroundColor Cyan
$remoteUrl = gh repo view $repoName --json url -q .url 2>$null
if (-not $remoteUrl) {
    gh repo create $repoName --public --source=. --remote=origin --description "Woo Haein developer portfolio"
} else {
    Write-Host "저장소가 이미 존재합니다: $remoteUrl"
    $existingRemote = git remote get-url origin 2>$null
    if (-not $existingRemote) {
        git remote add origin "https://github.com/$(gh api user -q .login)/$repoName.git"
    }
}

Write-Host "`n=== 3. main 브랜치 푸시 ===" -ForegroundColor Cyan
git push -u origin main

Write-Host "`n=== 4. GitHub Pages 활성화 ===" -ForegroundColor Cyan
gh api repos/$(gh api user -q .login)/$repoName/pages -X POST -f "build_type=workflow" -f "source[branch]=main" -f "source[path]=/" 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Pages API 설정은 이미 되어 있거나 workflow 배포를 사용합니다." -ForegroundColor Yellow
}

Write-Host "`n=== 5. 배포 URL 확인 ===" -ForegroundColor Cyan
$username = gh api user -q .login
$pagesUrl = "https://$username.github.io/$repoName/"
Write-Host "포트폴리오 URL: $pagesUrl" -ForegroundColor Green
Write-Host "Actions 탭에서 'Deploy GitHub Pages' workflow 완료 후 접속하세요 (1~3분)." -ForegroundColor Yellow
