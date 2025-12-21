@echo off
:: Full Xbox Game Bar/Game DVR/Game Mode removal and disabling script
:: Run as Administrator

REM ==== UNINSTALL XBOX GAME BAR AND XBOX APPS ====
echo Uninstalling Xbox Game Bar and Xbox Apps...
powershell -command "Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage"
powershell -command "Get-AppxPackage *Xbox* | Remove-AppxPackage"

REM ==== DISABLE GAME DVR AND GAME BAR IN REGISTRY ====
echo Disabling Game DVR, Game Bar, Game Mode, and related overlays...
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_Enabled /t REG_DWORD /d 0 /f

REG ADD "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
REG ADD "HKCU\System\GameConfigStore" /v GameDVR_FSEBehavior /t REG_DWORD /d 2 /f
REG ADD "HKCU\System\GameConfigStore" /v GameDVR_HonorUserFSEBehaviorMode /t REG_DWORD /d 0 /f
REG ADD "HKCU\System\GameConfigStore" /v GameDVR_DXGIHonorFSEWindowsCompatible /t REG_DWORD /d 0 /f
REG ADD "HKCU\System\GameConfigStore" /v GameDVR_EFSEFeatureFlags /t REG_DWORD /d 0 /f

REG ADD "HKCU\Software\Microsoft\GameBar" /v ShowStartupPanel /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v GamePanelStartupTipIndex /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v UseNexusForGameBarEnabled /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 0 /f

REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v value /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f

REM ==== REMOVE XBOX/GAMEBAR SCHEDULED TASKS ====
echo Removing Game Bar and Xbox scheduled tasks...
powershell -command "Get-ScheduledTask | ? { $_.TaskName -like '*Game*' -or $_.TaskName -like '*Xbox*' } | Unregister-ScheduledTask -Confirm:$false"

REM ==== DISABLE XBOX SERVICES ====
echo Disabling Xbox-related Windows services...
sc stop "XblAuthManager"
sc config "XblAuthManager" start=disabled
sc stop "XblGameSave"
sc config "XblGameSave" start=disabled
sc stop "XboxNetApiSvc"
sc config "XboxNetApiSvc" start=disabled
sc stop "XboxGipSvc"
sc config "XboxGipSvc" start=disabled

REM ==== DONE ====
echo.
echo Xbox Game Bar, Game DVR, Game Mode, and all Xbox background services have been removed or disabled!
echo Please reboot your system for all changes to fully apply.
pause
