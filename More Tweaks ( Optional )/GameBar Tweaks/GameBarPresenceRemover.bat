
cls
color D
echo Removing GameBarPresenceWriter...
set "fileToDelete=%SystemRoot%\System32\GameBarPresenceWriter.exe"
if exist "%fileToDelete%" (
    echo Taking ownership of the file.
    takeown /F "%fileToDelete%" >nul 2>&1
    echo Adjusting permissions.
    icacls "%fileToDelete%" /grant administrators:F >nul 2>&1
    echo Removing Gamebar Presence Writer.
    del "%fileToDelete%" /s /f /q
) else (
    echo File not found: %fileToDelete%.
)
timeout 1 > nul

