@echo off
(cls & cls)
setlocal enabledelayedexpansion
REM Blank/Color Character 
For /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & Echo on & For %%b in (1) Do REM"') Do (Set "DEL=%%a" & Set "COL=%%b")
REM Disable USB Selective Suspend. \ Device Manager
title Disable USB Selective Suspend. \ Device Manager
For /f "tokens=*" %%d in ('powercfg -devicequery wake_programmable') do (
Set "DeviceName=%%d"
echo Disable Power Saving For ^| %COL%[91m!DeviceName!%COL%[0m
Powercfg -DeviceDisableWake "!DeviceName!"
)
REM Disable Network Adapters PowerSaving Options. \ Device Manager
title Disable Network Adapters PowerSaving Options. \ Device Manager
echo %COL%[0mDisable Power Saving For%COL%[0m ^|%COL%[91m Network Adapters %COL%[0m
PowerShell -executionpolicy bypass -command "&{$PnPValue=24;$Adapter=Get-NetAdapter | Where-Object {($_.Status -eq 'Up') -and ($_.PhysicalMediaType -eq '802.3')};$KeyPath='HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\';foreach ($Entry in (Get-ChildItem $KeyPath -ErrorAction SilentlyContinue).Name) {If ((Get-ItemProperty REGISTRY::$Entry).DriverDesc -eq $Adapter.InterfaceDescription) {$Value=(Get-ItemProperty REGISTRY::$Entry).PnPCapabilities;If ($Value -ne $PnPValue) {Set-ItemProperty -Path REGISTRY::$Entry -Name PnPCapabilities -Value $PnPValue -Force;Disable-PnpDevice -InstanceId $Adapter.PnPDeviceID -Confirm:$false;Enable-PnpDevice -InstanceId $Adapter.PnPDeviceID -Confirm:$false;$Value=(Get-ItemProperty REGISTRY::$Entry).PnPCapabilities};If ($Value -eq $PnPValue) {Write-Host 'Has Been Disabled'} else {Write-Host 'Is Not Working'}}}}"
echo %COL%[0m
Timeout /T 2 /NoBreak >nul
(cls & cls)
REM Disable USB Hubs PowerSaving. \ Device Manager
title Disable USB Root Hubs PowerSaving
PowerShell -Command "$powerMgmt = Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi; foreach ($p in $powerMgmt) { $p.enable = $False; $p.psbase.put(); Write-Host ('Disabled Power Saving For | ' + $p.InstanceName) }"
Timeout /T 1 /NoBreak >nul
(cls & cls)
echo %COL%[97mWe Are Done, Press Any Key To Continue.%COL%[0m (:
EndLocal
pause >nul
