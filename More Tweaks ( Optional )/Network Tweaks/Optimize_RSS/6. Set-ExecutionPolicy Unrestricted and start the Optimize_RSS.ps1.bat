@echo off
:: Check for admin rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges.
    echo Please right-click and "Run as administrator".
    pause
    exit /b 1
)

echo Setting PowerShell Execution Policy to Unrestricted...
powershell -NoProfile -Command "Set-ExecutionPolicy Unrestricted -Scope LocalMachine -Force"

echo Running 7._Optimize_RSS.ps1...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp07._Optimize_RSS.ps1"

echo Done.
pause
