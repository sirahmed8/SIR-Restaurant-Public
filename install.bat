@echo off
setlocal enabledelayedexpansion
title Installing SIR Restaurant POS & Kitchen Hub - SIR Ecosystem
color 0A

echo =========================================================================
echo   SIR Restaurant POS & Kitchen Hub
echo   SIR Official Production Desktop Application
echo =========================================================================
echo.
echo [1/3] Verifying environment & integrity...

if not exist "%CD%\SIR Restaurant-Setup-1.0.0.exe" (
    color 0C
    echo [ERROR] Application binary "SIR Restaurant-Setup-1.0.0.exe" was not found in this folder.
    echo Please make sure all files were extracted properly from the zip archive.
    echo.
    pause
    exit /b 1
)

echo [OK] Verified SIR Restaurant-Setup-1.0.0.exe.
echo [2/3] Launching installer: "SIR Restaurant-Setup-1.0.0.exe"...
start "" "%CD%\SIR Restaurant-Setup-1.0.0.exe"

echo [3/3] Installation initiated successfully.
echo.
echo Thank you for using SIR Restaurant POS & Kitchen Hub.
echo.
timeout /t 3 >nul
exit /b 0
