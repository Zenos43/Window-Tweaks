rem # Disable WMI (Windows Management Instrumentation)

rem # !!! WARNING !!!

rem # Breaks shell script code from running

rem # !!! WARNING !!!

PAUSE

net stop Winmgmt
sc config Winmgmt start= disabled

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Winmgmt" /v "Start" /t REG_DWORD /d "4" /f

PAUSE
