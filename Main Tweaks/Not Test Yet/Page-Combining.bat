@echo off
:: Check Administrator Privileges
dism >nul 2>&1 || (echo ^<Run the script as administrator^> && pause>nul && cls&exit)

title set-page-combining
mode 60,10
set mm_key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management

echo.
echo Page Combining Control
echo ----------------------
echo [1] Disable Page Combining
echo [2] Restore Default
echo ----------------------
choice /c 12 /n /m "Select option: "

:: Disable
if %errorlevel%==1 (
    reg add "%mm_key%" /v "DisablePageCombining" /t reg_dword /d 1 /f >nul
    PowerShell -Command "Disable-MMAgent -PageCombining" >nul 2>&1
    echo Page Combining disabled.
)

:: Default
if %errorlevel%==2 (
    reg delete "%mm_key%" /v "DisablePageCombining" /f >nul 2>&1
    PowerShell -Command "Enable-MMAgent -PageCombining" >nul 2>&1
    echo Page Combining restored to default.
)

exit
