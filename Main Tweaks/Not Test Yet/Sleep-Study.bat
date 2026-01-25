@echo off
:: Check Administrator Privileges
dism >nul 2>&1 || (echo ^<Run the script as administrator^> && pause>nul && cls&exit)

title set-sleep-study
mode 60,10
set power_key=HKLM\SYSTEM\CurrentControlSet\Control\Power
set sspower_key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power

echo.
echo Sleep Study Control
echo ------------------
echo [1] Disable Sleep Study
echo [2] Restore Default
echo ------------------
choice /c 12 /n /m "Select option: "

:: Disable
if %errorlevel%==1 (
    reg add "%sspower_key%" /v "SleepStudyDisabled" /t reg_dword /d 1 /f >nul
    reg add "%sspower_key%" /v "SleepStudyDeviceAccountingLevel" /t reg_dword /d 0 /f >nul
    reg add "%power_key%" /v "SleepstudyAccountingEnabled" /t reg_dword /d 0 /f >nul
    echo Sleep Study disabled.
)

:: Default
if %errorlevel%==2 (
    for %%i in (
        "SleepStudyDeviceAccountingLevel"
        "SleepStudyDisabled"
    ) do (
        reg delete "%sspower_key%" /v %%~i /f >nul 2>&1
    )
    reg delete "%power_key%" /v "SleepstudyAccountingEnabled" /f >nul 2>&1
    echo Sleep Study restored to default.
)

exit
