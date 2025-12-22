@echo off
:: Check Administrator Privileges
dism >nul 2>&1 || (echo ^<Run the script as administrator^> && pause>nul && cls&exit)

title set-modern-standby
mode 60,10
set power_key=HKLM\SYSTEM\CurrentControlSet\Control\Power

echo.
echo Modern Standby Control
echo ----------------------
echo [1] Disable Modern Standby
echo [2] Restore Default
echo ----------------------
choice /c 12 /n /m "Select option: "

:: Disable
if %errorlevel%==1 (
    reg add "%power_key%" /v "PlatformAoAcOverride" /t reg_dword /d 0 /f >nul
    reg add "%power_key%" /v "PlatformRoleOverride" /t reg_dword /d 0 /f >nul
    reg add "%power_key%" /v "MSDisabled" /t reg_dword /d 1 /f >nul
    echo Modern Standby disabled.
)

:: Default
if %errorlevel%==2 (
    for %%i in (
        "PlatformAoAcOverride"
        "PlatformRoleOverride"
        "MSDisabled"
    ) do (
        reg delete "%power_key%" /v %%~i /f >nul 2>&1
    )
    echo Modern Standby restored to default.
)

exit
