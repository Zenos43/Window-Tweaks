rem # Enable PDC (Primary Domain Controller)

rem # Manages security and user authentication for a Windows server's local domain

rem # !!! WARNING !!!

rem # causes sihost.exe error at sign in screen when disabled
rem # breaks theme settings when disabled

rem # !!! WARNING !!!

rem # TESTING ONLY

PAUSE

reg add "HKLM\SYSTEM\CurrentControlSet\Services\pdc" /v "Start" /t REG_DWORD /d "0" /f
net start pdc

PAUSE

