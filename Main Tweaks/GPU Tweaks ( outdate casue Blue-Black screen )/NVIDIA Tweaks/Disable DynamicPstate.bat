@echo off
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: GUID für Grafikkartenklasse
set "gpuClass=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}"

:: Schleife durch alle möglichen Unterschlüssel (0000 bis 0020)
for /L %%i in (0,1,20) do (
    set "subkey=000%%i"
    if %%i GEQ 10 set "subkey=00%%i"
    if %%i GEQ 100 set "subkey=0%%i"

    :: Abfrage des DriverDesc-Wertes
    reg query "%gpuClass%\!subkey!" /v DriverDesc >nul 2>&1
    if !errorlevel! equ 0 (
        for /f "tokens=3,*" %%a in ('reg query "%gpuClass%\!subkey!" /v DriverDesc 2^>nul ^| find /i "DriverDesc"') do (
            set "desc=%%a %%b"
            echo Gefunden: !desc!
            echo Prüfe auf bekannte GPU-Hersteller...

            echo !desc! | findstr /i "NVIDIA AMD Intel" >nul
            if !errorlevel! equ 0 (
                echo Setze DisableDynamicPstate auf 1 in !subkey!
                reg add "%gpuClass%\!subkey!" /v DisableDynamicPstate /t REG_DWORD /d 1 /f >nul
            )
        )
    )
)

echo.
echo Vorgang abgeschlossen.
pause
