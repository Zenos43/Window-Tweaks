rem # Disables Themes service

rem # !!! WARNING !!!
rem # Breaks User Theme settings when disabled
rem # !!! WARNING !!!

PAUSE

rem net stop Themes

rem reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f

PAUSE
