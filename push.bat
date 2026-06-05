@echo off
cd /d "%~dp0"

set REPO_URL=https://github.com/pengyuyan-hd/HeartSync02.git

if not exist ".git" (
    echo [INIT] First run, initializing git repo...
    git init
    git remote add origin %REPO_URL%
    echo [DONE] Repo initialized
)

git add .
set /p MSG="Commit message (Enter for default): "
if "%MSG%"=="" set MSG=Update
git commit -m "%MSG%"
git push -u origin main

echo.
echo [DONE] Pushed to %REPO_URL%
pause
