echo == Disable Reserved Storage
REM dism /Online /Get-ReservedStorageState
>nul 2>&1 DISM /online /Set-ReservedStorageState /State:Disabled
>nul 2>&1 reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "MiscPolicyInfo" /t reg_DWORD /d 2
>nul 2>&1 reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "ShippedWithReserves" /t reg_DWORD /d 0
>nul 2>&1 reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ReserveManager" /f /v "PassedPolicy" /t reg_DWORD /d 0
pause