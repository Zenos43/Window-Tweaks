@echo off
:: Check Administrator Privileges
dism >nul 2>&1 || (echo ^<Run the script as administrator^> && pause>nul && cls&exit)

title set-hibernate
mode 60,10
set power_key=HKLM\SYSTEM\CurrentControlSet\Control\Power

echo.
echo Hibernate Control
echo -----------------
echo [1] Disable hibernation
echo [2] Restore default
echo -----------------
choice /c 12 /n /m "Select option: "

:: Disable
if %errorlevel%==1 (
    for %%i in (
        "AllowHibernate"
        "HibernateEnabled"
        "HiberbootEnabled"
        "HibernateEnabledDefault"
        "HibernateChecksummingEnabled"
        "SkipHibernateMemoryMapValidation"
    ) do (
        reg add "%power_key%" /v %%~i /t reg_dword /d 0 /f >nul
    )
    reg add "%power_key%\ForceHibernateDisabled" /v "Policy" /t reg_dword /d 1 /f >nul
    powercfg /h off >nul
    echo Hibernation disabled.
)

:: Default
if %errorlevel%==2 (
    for %%i in (
        "AllowHibernate"
        "HibernateEnabled"
        "HiberbootEnabled"
        "HibernateEnabledDefault"
        "HibernateChecksummingEnabled"
        "SkipHibernateMemoryMapValidation"
    ) do (
        reg delete "%power_key%" /v %%~i /f >nul 2>&1
    )
    reg delete "%power_key%\ForceHibernateDisabled" /f >nul 2>&1
    powercfg /h on >nul
    echo Hibernation restored to default.
)

exit
