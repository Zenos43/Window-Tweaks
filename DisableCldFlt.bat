rem # Disable Cloud Files Filter Driver (CldFlt)

rem # !!! WARNING !!!

rem # Breaks OneDrive desktop files from opening and other OneDrive files

rem # !!! WARNING !!!

PAUSE

net stop CldFlt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CldFlt" /v "Start" /t REG_DWORD /d "4" /f

PAUSE