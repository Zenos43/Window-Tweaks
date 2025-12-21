@echo off

:: Disable VsyncIdleTimeout (https://learn.microsoft.com/en-us/windows-hardware/drivers/display/saving-energy-with-vsync-control) - VSync Control
::This reduces the amount of V-SYNC monitor refresh intrruptes occur

reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler /v VsyncIdleTimeout /t reg_dword /d 0 /f
pause