@echo off
color 8b
::Check Administrator Privileges
dism >nul 2>&1 || (echo ^<Run the script as administrator^> && pause>nul && cls&exit)

echo info: configuring graphics power settings...

::power settings
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v EnableRuntimePowerManagement /t reg_dword /d 0 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v EnablePODebounce /t reg_dword /d 0 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DisableDevicePowerRequired /t reg_dword /d 1 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DefaultPowerNotRequiredTimeout /t reg_dword /d 0 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v DisablePStateManagement /t reg_dword /d 1 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v UseSelfRefreshVRAMInS3 /t reg_dword /d 0 /f >nul

echo Operation complete
pause