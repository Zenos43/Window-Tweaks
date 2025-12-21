@echo off
setlocal enabledelayedexpansion

echo Trovando adattatori di rete e le relative chiavi di registro...

rem Chiave di registro per gli adattatori di rete
set regKey="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}"

rem Estrae l'elenco degli adattatori di rete
reg query %regKey% /s /f "DriverDesc" > adapters.txt

rem Analizza il file per estrarre i nomi e le chiavi
for /f "tokens=3 delims= " %%A in (adapters.txt) do (
    set adapterName=%%A
    set adapterPath=%%B
    rem Estrae il percorso completo per l'adattatore
    for /f "tokens=1* delims=   " %%C in ('reg query %regKey% /s ^| findstr /i /c:"%%A"') do (
        echo Adattatore: !adapterName!
        echo Percorso Registro: %%C
        echo.
    )
)



echo Fine del processo.
endlocal
