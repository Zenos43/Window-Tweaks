rem # Enable DNS Client (Dnscache)
rem # !!! WARNING !!!
rem # Disabling DNS Client borks internet
rem # !!! CAUTION !!!

rem # Was able to be disabled in Windows 7

PAUSE

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f

net start Dnscache

PAUSE