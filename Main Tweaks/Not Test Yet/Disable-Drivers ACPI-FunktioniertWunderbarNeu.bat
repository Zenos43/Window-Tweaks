@echo off
:: Skript zum Deaktivieren von Treibern und Setzen von Fehlerkontrollwerten

:: Array der Treiber
set drivers=Acpidev.sys Acpipagr.sys Acpitime.sys Acpipmi.sys wmiacpi.sys cad.sys

:: Registrierungs-Root für Treiber
set regPath=HKLM\SYSTEM\CurrentControlSet\Services

echo Deaktivieren der Treiber...

for %%D in (%drivers%) do (
    echo Verarbeite %%D ...
    reg add "%regPath%\%%~nD" /v Start /t REG_DWORD /d 4 /f
    reg add "%regPath%\%%~nD" /v ErrorControl /t REG_DWORD /d 0 /f
)

echo Alle Treiber wurden deaktiviert. Neustart des Systems erforderlich.

pause
exit
