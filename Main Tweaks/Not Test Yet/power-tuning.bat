@echo off
::Check Administrator Privileges
dism >nul 2>&1 || (echo ^<Run the script as administrator^> && pause>nul && cls&exit)
title power-tuning
set power_key=HKLM\SYSTEM\CurrentControlSet\Control\Power
set proc_key=HKLM\System\CurrentControlSet\Control\Processor
echo info: configuring power....
::power tuning
reg add "%proc_key%" /v Capabilities /t reg_dword /d 0x7c044 /f >nul
reg add "%proc_key%" /v DisableAsserts /t reg_dword /d 1 /f >nul
reg add "%power_key%" /v EventProcessorEnabled /t reg_dword /d 0 /f >nul
reg add "%power_key%" /v ThermalPollingMode /t reg_dword /d 0 /f >nul
reg add "%power_key%" /v PerfBoostAtGuaranteed /t reg_dword /d 1 /f >nul
reg add "%power_key%" /v DisableInboxPepGeneratedConstraints /t reg_dword /d 1 /f >nul
reg add "%power_key%" /v ParkWithCoreGranularity /t reg_dword /d 0 /f >nul
reg add "%power_key%" /v ThermalTelemetryVerbosity /t reg_dword /d 0 /f >nul
reg add "%power_key%" /v FxAccountingTelemetryDisabled /t reg_dword /d 0 /f >nul
reg add "%power_key%" /v PerfCalculateActualUtilization /t reg_dword /d 1 /f >nul
reg add "%power_key%" /v PerfArtificialDomain /t reg_dword /d 0 /f >nul
reg add "%power_key%" /v DisableVsyncLatencyUpdate /t reg_dword /d 1 /f >nul
pause