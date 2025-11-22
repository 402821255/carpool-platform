@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo ===================================
echo   🚀 XiangM Carpool Platform - Cloud Deploy
echo ===================================
echo.

:: 设置基本信息
set "GITHUB_USERNAME=402821255"
set "REPO_NAME=carpool-platform"
set "LOCAL_PATH=%~dp0"
set "COMMIT_MESSAGE=Update: Admin recharge and share reward system (first 5 times valid)"

echo 📍 Current Directory: %LOCAL_PATH%
echo 📦 Target Repository: %GITHUB_USERNAME%/%REPO_NAME%
echo 💬 Commit Message: %COMMIT_MESSAGE%
echo.

:: 进入项目目录
cd /d "%LOCAL_PATH%"

:: 检查Git状态
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Error: Git not installed
    echo 📥 Please download Git: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo ✅ Git installed
echo.

:: 添加所有文件
echo 📝 Adding files to staging area...
git add .

:: 提交更改
echo 💾 Committing local changes...
git commit -m "%COMMIT_MESSAGE%"

:: 推送到远程仓库
echo 🚀 Pushing to GitHub...
git push -u origin main
if errorlevel 1 (
    echo ❌ Push failed! Possible reasons:
    echo    1. Network connection issue
    echo    2. Authentication failure
    echo    3. Repository permission issue
    echo.
    echo 💡 Solutions:
    echo    1. Check network connection
    echo    2. Configure GitHub Personal Access Token
    echo    3. Confirm repository access permissions
) else (
    echo ✅ Push successful!
)

echo.
echo ===================================
echo   📊 Deployment Result
echo ===================================
echo.

:: 显示远程仓库信息
echo 🌐 Remote Repository:
echo    https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
echo.

echo 🌍 GitHub Pages:
echo    https://%GITHUB_USERNAME%.github.io/%REPO_NAME%/
echo.

:: 检查主要文件
echo 📁 Main Files Status:
if exist "index.html" (
    echo    ✅ index.html - Main page
) else (
    echo    ❌ index.html - Missing
)

if exist "README.md" (
    echo    ✅ README.md - Documentation
) else (
    echo    ❌ README.md - Missing
)

if exist "admin_recharge_and_share_guide.md" (
    echo    ✅ admin_recharge_and_share_guide.md - Admin guide
) else (
    echo    ❌ admin_recharge_and_share_guide.md - Missing
)

echo.
echo 🎯 Latest Features:
echo    🔧 Admin recharge management
echo    📱 Share reward system (first 5 times valid)
echo    👤 Complete user registration/login system
echo    💰 Phone number hidden with payment (0.2 yuan)
echo    🌾 Agricultural products publishing
echo    💼 Business opportunities publishing
echo    🔐 Announcement password management
echo    📱 Responsive design optimization
echo    💾 localStorage data persistence
echo.

echo ⏰ Deployment completed at: %date% %time%
echo.
echo 🌟 Tips:
echo    1. GitHub Pages may take a few minutes to update
echo    2. If issues occur, check GitHub repository settings
echo    3. Ensure GitHub Pages is enabled
echo.
pause