@echo off
setlocal enabledelayedexpansion >nul
cls

echo AIM+ OPTIMIZER 1.0
echo By RemiaCS
timeout /t 2 >nul
cls

timeout /t 1 /nobreak >nul
set /p choice=Do you want to create a System Restore Point? (y/n): 
if /i "%choice%"=="y" (
    PowerShell -Command "Checkpoint-Computer -Description 'Platinum+OptimizerRestorePoint' -RestorePointType 'MODIFY_SETTINGS'"
    echo Restore Point created.
) else (
    echo Operation canceled.
)
timeout /t 1 >nul
chcp 65001 >nul
mode con: cols=120 lines=60
cls
timeout /t 1 >nul


:: ====================== 
:: MAIN MENU 
:: ====================== 
:main_menu 
cls 
title AIM+ OPTIMIZER
color 0B
echo. 
echo                                            ░█████╗░██╗███╗░░░███╗░░░░░░░░░░░░ 
echo                                            ██╔══██╗██║████╗░████║░░░░░░░██╗░░ 
echo                                            ███████║██║██╔████╔██║░░░░░██████╗ 
echo                                            ██╔══██║██║██║╚██╔╝██║░░░░░╚═██╔═╝ 
echo                                            ██║░░██║██║██║░╚═╝░██║░░░░░░░╚═╝░░ 
echo                                            ╚═╝░░╚═╝╚═╝╚═╝░░░░░╚═╝░░░░░░░░░░░░ 
echo. 
echo                            ░█████╗░██████╗░████████╗██╗███╗░░░███╗██╗███████╗███████╗██████╗░ 
echo                            ██╔══██╗██╔══██╗╚══██╔══╝██║████╗░████║██║╚════██║██╔════╝██╔══██╗ 
echo                            ██║░░██║██████╔╝░░░██║░░░██║██╔████╔██║██║░░███╔═╝█████╗░░██████╔╝ 
echo                            ██║░░██║██╔═══╝░░░░██║░░░██║██║╚██╔╝██║██║██╔══╝░░██╔══╝░░██╔══██╗ 
echo                            ╚█████╔╝██║░░░░░░░░██║░░░██║██║░╚═╝░██║██║███████╗███████╗██║░░██║ 
echo                            ░╚════╝░╚═╝░░░░░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚═╝╚══════╝╚══════╝╚═╝░░╚═╝ 
echo.
echo.
echo                                                       By RemiaCS
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║               AIM+ OPTIMIZER                 ║ 
echo                                     ║                Version 1.0                   ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   [1] CPU PERFORMANCE OPTIMIZATION           ║ 
echo                                     ║                                              ║ 
echo                                     ║   [2] GPU PERFORMANCE OPTIMIZATION           ║ 
echo                                     ║                                              ║ 
echo                                     ║   [3] SYSTEM DEBLOATER                       ║ 
echo                                     ║                                              ║ 
echo                                     ║   [4] APP DEBLOATER                          ║ 
echo                                     ║                                              ║ 
echo                                     ║   [5] SERVICES OPTIMIZER                     ║ 
echo                                     ║                                              ║ 
echo                                     ║   [6] MOUSE OPTIMIZER                        ║ 
echo                                     ║                                              ║ 
echo                                     ║   [7] NETWORK OPTIMIZER                      ║ 
echo                                     ║                                              ║
echo                                     ║   [8] RAM/MEMORY OPTIMIZER                   ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   [0] EXIT                                   ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto cpu_menu 
if "%choice%"=="2" goto gpu_menu 
if "%choice%"=="3" goto debloat 
if "%choice%"=="4" goto app_debloat 
if "%choice%"=="5" goto start 
if "%choice%"=="6" goto mouse_tweak 
if "%choice%"=="7" goto network 
if "%choice%"=="8" goto ram_optimizer 
if "%choice%"=="0" exit 
goto main_menu 
:: ====================== 
:: CPU MENU 
:: ====================== 
:cpu_menu
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║     CPU EXTREME PERFORMANCE OPTIMIZATION     ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   [1] INTEL PROCESSOR                        ║ 
echo                                     ║   [2] AMD PROCESSOR                          ║  
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   [0] BACK TO MAIN MENU                      ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto intel_cpu_menu 
if "%choice%"=="2" goto amd_cpu 
if "%choice%"=="0" goto main_menu 
goto cpu_menu 
:: ====================== 
:: GPU MENU 
:: ====================== 
:gpu_menu 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║    GPU EXTREME PERFORMANCE OPTIMIZATION      ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   [1] NVIDIA GPU                             ║ 
echo                                     ║   [2] AMD GPU                                ║ 
echo                                     ║   [3] INTEL GPU                              ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   [0] BACK TO MAIN MENU                      ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto nvidia_gpu 
if "%choice%"=="2" goto amd_gpu 
if "%choice%"=="3" goto intel_gpu 
if "%choice%"=="0" goto main_menu 
goto gpu_menu 
:: ====================== 
:: NVIDIA GPU SUBMENU 
:: ====================== 
:nvidia_gpu 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║           NVIDIA GPU OPTIMIZATION            ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   [1] SAFE OPTIMIZATION (Recommended)        ║ 
echo                                     ║   [2] AGGRESSIVE OPTIMIZATION (EXTREME)      ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   [0] BACK TO GPU MENU                       ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto nvidia_safe 
if "%choice%"=="2" goto nvidia_aggressive 
if "%choice%"=="3" goto nvidia_custom 
if "%choice%"=="0" goto gpu_menu 
goto nvidia_gpu 
:: ====================== 
:: OPTIMIZATION SECTIONS 
:: ====================== 

:intel_cpu_menu
cls
echo.
echo                                     ╔══════════════════════════════════════════════╗
echo                                     ║                                              ║
echo                                     ║           INTEL CPU OPTIMIZATION             ║
echo                                     ║                                              ║
echo                                     ╠══════════════════════════════════════════════╣
echo                                     ║                                              ║
echo                                     ║   [1] SAFE OPTIMIZATION (Recommended)        ║
echo                                     ║   [2] AGGRESSIVE OPTIMIZATION (EXTREME)      ║
echo                                     ║                                              ║
echo                                     ╠══════════════════════════════════════════════╣
echo                                     ║                                              ║
echo                                     ║   [0] BACK TO CPU MENU                       ║
echo                                     ║                                              ║
echo                                     ╚══════════════════════════════════════════════╝
echo.
set /p choice=      SELECT OPTION:

if "%choice%"=="1" goto intel_safe
if "%choice%"=="2" goto intel_aggressive
if "%choice%"=="0" goto cpu_menu







:intel_aggressive
cls
echo.
echo                             If you notice lag, crashes or unstable behavior,
echo                         return to the CPU menu and select SAFE MODE to revert.
echo.
timeout /t 3 >nul 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║      INTEL CPU OPTIMIZATION (EXTREME)        ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  Applying Intel-specific optimizations...    ║ 
echo                                     ║                                              ║ 
timeout /t 2 >nul 
echo                                     ║  - Enabling Performance Boost                ║ 
echo                                     ║  - Adjusting Power Limits                    ║ 
echo                                     ║  - Optimizing Cache Settings                 ║
echo                                     ║  - Optimizing Kernel                         ║ 
echo                                     ║  - Force Max Power Mode                      ║
echo                                     ║  - Disable CPU Limitations (EXTREME)         ║
echo                                     ║  - Force Extreme Performance mode            ║
timeout /t 2 >nul 
echo.
chcp 1251 >nul 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v Start /t REG_DWORD /d 4 /f
for /f "tokens=4" %%A in ('powercfg -getactivescheme') do set ACTIVE_GUID=%%A
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 ea062031-0e34-4ff1-9b6d-eb1059334028 100
powercfg -setdcvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 ea062031-0e34-4ff1-9b6d-eb1059334028 100
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 7f2f5cfa-f10c-4823-b5e1-e93ae85f46b5 0
powercfg -setdcvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 7f2f5cfa-f10c-4823-b5e1-e93ae85f46b5 0
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 93b8b6dc-0698-4d1c-9ee4-0644e900c85d 1
powercfg -setdcvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 93b8b6dc-0698-4d1c-9ee4-0644e900c85d 1
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 e796ccd1-b01a-42c2-b5e1-e93ae85f46b5 0
powercfg -setdcvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 e796ccd1-b01a-42c2-b5e1-e93ae85f46b5 0
powercfg -setactive %ACTIVE_GUID%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d 0 /f
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0
powercfg -setactive scheme_current
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d 0 /f
powercfg -setactive scheme_current
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm" /v "Start" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TCPNoDelay /t REG_DWORD /d 1 /f
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global initialrto=2000
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
fsutil behavior set disable8dot3 1
fsutil behavior set memoryusage 2
fsutil behavior set mftzone 2
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm" /v "Start" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
powercfg -h off
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 380000000 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v AlwaysUnloadDll /t REG_DWORD /d 1 /f
sc config "DiagTrack" start= disabled
sc config "dmwappushservice" start= disabled
sc config "RetailDemo" start= disabled
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f
reg add "HKCU\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d 1000 /f
reg add "HKCU\Control Panel\Desktop" /v LowLevelHooksTimeout /t REG_SZ /d 1000 /f
echo  bcdedit /set disabledynamictick yes
echo  bcdedit /set useplatformclock No
echo  bcdedit /set tscsyncpolicy Expanded
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CoalescingTimerDisabled /t REG_DWORD /d 1 /f
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Idle Maintenance" /Disable
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /Disable
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleResiliency /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleLatency /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t reg_DWORD /d "38" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v "ValueMax" /t reg_DWORD /d "100" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMin" /t reg_DWORD /d "100" /f
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "IoPrioritySeparation" -Value 2 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "Win32PrioritySeparation" -Value 26 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "InterruptPrioritySeparation" -Value 2 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" -Name "DpcWatchdogThreshold" -Value 0x7FFFFFFF -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" -Name "DpcWatchdogProfile" -Value 0 -Type DWord
powercfg -setacvalueindex scheme_current sub_processor procthrottlemax 100
powercfg -setdcvalueindex scheme_current sub_processor procthrottlemax 100
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "IoPrioritySeparation" -Value 38 -Type DWord
fsutil behavior set disablelastaccess 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IoPrioritySeparation" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "InterruptPrioritySeparation" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DpcWatchdogProfile" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "WaitForIdleState" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
powercfg -setacvalueindex scheme_current sub_processor procthrottlemax 100
powercfg -setdcvalueindex scheme_current sub_processor procthrottlemax 100
sc config "Themes" start= auto >nul
net stop "Themes" >nul 2>&1
net start "Themes" >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "WaitForIdleState" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
netsh int tcp set global autotuninglevel=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
bcdedit /set useplatformclock no
bcdedit /set tscsyncpolicy Enhanced
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableTsx" /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\b4869f26-634b-448f-abc6-b5f2a6d7c5a2" /v "Attributes" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\36687f9e-e3a5-4dbf-b1dc-15eb381c6863" /v "Attributes" /t reg_DWORD /d "2" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v "Attributes" /t reg_DWORD /d "2" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t reg_DWORD /d "1" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t reg_DWORD /d "0" /f
powershell -Command "Checkpoint-Computer -Description 'Pre-Optimization-NVIDIA' -RestorePointType MODIFY_SETTINGS" >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 4 >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100 >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100 >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 26 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 1 /f
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PERFBOOSTMODE 4
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PERFBOOSTPOLICY 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR HETEROPOLICY 2
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableL1LowPower" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableALPM" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MessageSignaledInterrupts" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePowerManagement" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f

#fix TURBO BOOST
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 4
powercfg -setactive scheme_current
# end

powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR HPETMODE 1
powercfg -setacvalueindex scheme_current sub_processor CPMAXCORES 100 >nul 2>&1
powercfg -setactive scheme_current >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v DisableDynamicPstate /t REG_DWORD /d 1 /f >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PCIEXPRESS ASPM 0 >nul 2>&1
powercfg -setdcvalueindex SCHEME_CURRENT SUB_PCIEXPRESS ASPM 0 >nul 2>&1
powercfg -setactive SCHEME_CURRENT >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v Attributes /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\ea062031-0e34-4ff1-9b6d-eb1059334028" /v Attributes /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HeteroPolicy /t REG_DWORD /d 0 /f >nul 2>&1
del /q "%localappdata%\NVIDIA\*" /s >nul 2>&1
del /q "%ProgramData%\NVIDIA Corporation\Drs\nvdrsdb0.bin" >nul 2>&1
del /q "%ProgramData%\NVIDIA Corporation\Drs\nvdrsdb1.bin" >nul 2>&1
powercfg -h off >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f >nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\06cadf0e-64ed-448a-8927-ce7bf90eb35d" /v "Attributes" /t reg_DWORD /d "2" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" /v "Attributes" /t reg_DWORD /d "2" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\45bcc044-d885-43e2-8605-ee0ec6e3b2e5" /v "Attributes" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t reg_DWORD /d "100" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t reg_DWORD /d "100" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v "Attributes" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v "Attributes" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\HPET" /v "Start" /t reg_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceMetadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_SZ /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" /v "Type" /t REG_SZ /d "NoSync" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
sc config "DiagTrack" start= disabled
net.exe stop "Windows Search" >nul 2>&1
sc config "WSearch" start= disabled
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ13Priority" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318584" /v "ValueMax" /t REG_DWORD /d "100" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
bcdedit /set isolatedcontext No
bcdedit /set vsmlaunchtype Off
bcdedit /set vm No
bcdedit /set hypervisorlaunchtype off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d 0x0000e0fe /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\933e09c5-c54d-426b-9c3f-c0c3ee8b8f2c" /v Attributes /t REG_DWORD /d 2 /f
powercfg -setacvalueindex scheme_current sub_processor SCHEDPOLICY 2
bcdedit /set disabledynamictick yes
bcdedit /set tscsyncpolicy ForceAll
bcdedit /set useplatformclock No
bcdedit /set useplatformtick Yes
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DpcQueueDepth" /t REG_DWORD /d 288 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "CountOperations" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MEIx64\Parameters" /v "DisableD3" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ICPS\Parameters" /v "EnablePowerSaving" /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGI_HonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "RssBaseCpu" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "ProcessorAffinityMask" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableTsx" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HPET" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ13Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v IoPriority /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TSFairShare\Disk" /v EnableFairShare /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TSFairShare\NetFS" /v EnableFairShare /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v CountOperations /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v GlobalMaxTcpWindowSize /t REG_DWORD /d 2097152 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpWindowSize /t REG_DWORD /d 2097152 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxFreeTcbs /t REG_DWORD /d 65535 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxHashTableSize /t REG_DWORD /d 65536 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NoLazyMode /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v AlwaysOn /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v Obsolete /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX1 100
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX1 100
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\36687f9e-e3a5-4dbf-b1dc-15eb381c6863" /v "Attributes" /t REG_DWORD /d "2" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR LATENCYHYPERVISOR 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR LATENCYHYPERVISOR 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "NumaAware" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
sc config "TrkWks" start= disabled >nul 2>&1
sc config "WalletService" start= disabled >nul 2>&1
sc config "WerSvc" start= disabled >nul 2>&1
sc config "lfsvc" start= disabled >nul 2>&1
sc config "MapsBroker" start= disabled >nul 2>&1
sc config "WdiServiceHost" start= disabled >nul 2>&1
sc config "WdiSystemHost" start= disabled >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
powercfg -setacvalueindex scheme_current sub_processor 0cc5b647-c1df-4637-891a-dec35c318583 0
powercfg -setacvalueindex scheme_current sub_processor ea062031-0e34-4ff1-9b6d-eb1059334028 100

#FIX TURBO BOOST INTEL
for /f "tokens=4" %%A in ('powercfg -getactivescheme') do set ACTIVE_GUID=%%A
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 be337238-0d82-4146-a960-4f3749d470c7 4
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 0cc5b647-c1df-4637-891a-dec35c318583 0
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 26 /f
powercfg -setacvalueindex %ACTIVE_GUID% SUB_PCIEXPRESS ASPM 0
powercfg -setactive %ACTIVE_GUID%
powercfg -setactive scheme_current
#END

chcp 65001 >nul 2>&1
timeout /t 3 /nobreak >nul 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║    Optimization completed successfully!      ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  System restart recommended for best results ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
pause 
goto cpu_menu 















:intel_safe
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║        INTEL CPU OPTIMIZATION (SAFE)         ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  Applying Intel-specific optimizations...    ║ 
echo                                     ║                                              ║ 
timeout /t 2 >nul 
echo                                     ║  - Enabling Performance Boost                ║ 
echo                                     ║  - Adjusting Power Limits                    ║ 
echo                                     ║  - Optimizing Cache Settings                 ║
echo                                     ║  - Optimizing Kernel                         ║ 
echo                                     ║  - Force Max Power Mode                      ║
echo                                     ║  - Disable CPU Limitations (SAFE)            ║
echo                                     ║  - Force Extreme Performance mode            ║
echo                                     ╚══════════════════════════════════════════════╝
timeout /t 2 >nul 
echo.
chcp 1251 >nul 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v Start /t REG_DWORD /d 4 /f
for /f "tokens=4" %%A in ('powercfg -getactivescheme') do set ACTIVE_GUID=%%A
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 ea062031-0e34-4ff1-9b6d-eb1059334028 100
powercfg -setdcvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 ea062031-0e34-4ff1-9b6d-eb1059334028 100
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 7f2f5cfa-f10c-4823-b5e1-e93ae85f46b5 0
powercfg -setdcvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 7f2f5cfa-f10c-4823-b5e1-e93ae85f46b5 0
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 93b8b6dc-0698-4d1c-9ee4-0644e900c85d 1
powercfg -setdcvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 93b8b6dc-0698-4d1c-9ee4-0644e900c85d 1
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 e796ccd1-b01a-42c2-b5e1-e93ae85f46b5 0
powercfg -setdcvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 e796ccd1-b01a-42c2-b5e1-e93ae85f46b5 0
powercfg -setactive %ACTIVE_GUID%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d 0 /f
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0
powercfg -setactive scheme_current
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d 0 /f
powercfg -setactive scheme_current
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm" /v "Start" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TCPNoDelay /t REG_DWORD /d 1 /f
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global initialrto=2000
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
fsutil behavior set disable8dot3 1
fsutil behavior set memoryusage 2
fsutil behavior set mftzone 2
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm" /v "Start" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
powercfg -h off
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 380000000 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v AlwaysUnloadDll /t REG_DWORD /d 1 /f
sc config "DiagTrack" start= disabled
sc config "dmwappushservice" start= disabled
sc config "RetailDemo" start= disabled
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f
reg add "HKCU\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d 1000 /f
reg add "HKCU\Control Panel\Desktop" /v LowLevelHooksTimeout /t REG_SZ /d 1000 /f
echo  bcdedit /set disabledynamictick yes
echo  bcdedit /set useplatformclock No
echo  bcdedit /set tscsyncpolicy Expanded
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CoalescingTimerDisabled /t REG_DWORD /d 1 /f
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Idle Maintenance" /Disable
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /Disable
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleResiliency /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleLatency /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t reg_DWORD /d "38" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v "ValueMax" /t reg_DWORD /d "100" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMin" /t reg_DWORD /d "100" /f
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "IoPrioritySeparation" -Value 2 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "Win32PrioritySeparation" -Value 26 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "InterruptPrioritySeparation" -Value 2 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" -Name "DpcWatchdogThreshold" -Value 0x7FFFFFFF -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" -Name "DpcWatchdogProfile" -Value 0 -Type DWord
powercfg -setacvalueindex scheme_current sub_processor procthrottlemax 100
powercfg -setdcvalueindex scheme_current sub_processor procthrottlemax 100
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "IoPrioritySeparation" -Value 38 -Type DWord
fsutil behavior set disablelastaccess 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IoPrioritySeparation" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "InterruptPrioritySeparation" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DpcWatchdogProfile" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "WaitForIdleState" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
powercfg -setacvalueindex scheme_current sub_processor procthrottlemax 100
powercfg -setdcvalueindex scheme_current sub_processor procthrottlemax 100
sc config "Themes" start= auto >nul
net stop "Themes" >nul 2>&1
net start "Themes" >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "WaitForIdleState" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
netsh int tcp set global autotuninglevel=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
bcdedit /set useplatformclock no
bcdedit /set tscsyncpolicy Enhanced
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableTsx" /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\b4869f26-634b-448f-abc6-b5f2a6d7c5a2" /v "Attributes" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\36687f9e-e3a5-4dbf-b1dc-15eb381c6863" /v "Attributes" /t reg_DWORD /d "2" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v "Attributes" /t reg_DWORD /d "2" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t reg_DWORD /d "1" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t reg_DWORD /d "0" /f
powershell -Command "Checkpoint-Computer -Description 'Pre-Optimization-NVIDIA' -RestorePointType MODIFY_SETTINGS" >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 2 >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100 >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100 >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 26 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 1 /f
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PERFBOOSTMODE 2
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PERFBOOSTPOLICY 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR HETEROPOLICY 2
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableL1LowPower" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableALPM" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MessageSignaledInterrupts" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePowerManagement" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f

#fix TURBO BOOST
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 2
powercfg -setactive scheme_current
# end

powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR HPETMODE 1
powercfg -setacvalueindex scheme_current sub_processor CPMAXCORES 100 >nul 2>&1
powercfg -setactive scheme_current >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v DisableDynamicPstate /t REG_DWORD /d 1 /f >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PCIEXPRESS ASPM 0 >nul 2>&1
powercfg -setdcvalueindex SCHEME_CURRENT SUB_PCIEXPRESS ASPM 0 >nul 2>&1
powercfg -setactive SCHEME_CURRENT >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v Attributes /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\ea062031-0e34-4ff1-9b6d-eb1059334028" /v Attributes /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HeteroPolicy /t REG_DWORD /d 0 /f >nul 2>&1
del /q "%localappdata%\NVIDIA\*" /s >nul 2>&1
del /q "%ProgramData%\NVIDIA Corporation\Drs\nvdrsdb0.bin" >nul 2>&1
del /q "%ProgramData%\NVIDIA Corporation\Drs\nvdrsdb1.bin" >nul 2>&1
powercfg -h off >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f >nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\06cadf0e-64ed-448a-8927-ce7bf90eb35d" /v "Attributes" /t reg_DWORD /d "2" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" /v "Attributes" /t reg_DWORD /d "2" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\45bcc044-d885-43e2-8605-ee0ec6e3b2e5" /v "Attributes" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t reg_DWORD /d "100" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t reg_DWORD /d "100" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v "Attributes" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v "Attributes" /t reg_DWORD /d "0" /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\HPET" /v "Start" /t reg_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceMetadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_SZ /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Parameters" /v "Type" /t REG_SZ /d "NoSync" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
sc config "DiagTrack" start= disabled
net.exe stop "Windows Search" >nul 2>&1
sc config "WSearch" start= disabled
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ13Priority" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318584" /v "ValueMax" /t REG_DWORD /d "100" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
bcdedit /set isolatedcontext No
bcdedit /set vsmlaunchtype Off
bcdedit /set vm No
bcdedit /set hypervisorlaunchtype off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d 0x0000e0fe /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\933e09c5-c54d-426b-9c3f-c0c3ee8b8f2c" /v Attributes /t REG_DWORD /d 2 /f
powercfg -setacvalueindex scheme_current sub_processor SCHEDPOLICY 2
bcdedit /set disabledynamictick yes
bcdedit /set tscsyncpolicy ForceAll
bcdedit /set useplatformclock No
bcdedit /set useplatformtick Yes
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DpcQueueDepth" /t REG_DWORD /d 288 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "CountOperations" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MEIx64\Parameters" /v "DisableD3" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ICPS\Parameters" /v "EnablePowerSaving" /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGI_HonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "RssBaseCpu" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "ProcessorAffinityMask" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableTsx" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HPET" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ13Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v IoPriority /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TSFairShare\Disk" /v EnableFairShare /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TSFairShare\NetFS" /v EnableFairShare /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v CountOperations /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v GlobalMaxTcpWindowSize /t REG_DWORD /d 2097152 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpWindowSize /t REG_DWORD /d 2097152 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxFreeTcbs /t REG_DWORD /d 65535 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxHashTableSize /t REG_DWORD /d 65536 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NoLazyMode /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v AlwaysOn /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v Obsolete /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX1 100
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX1 100
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\36687f9e-e3a5-4dbf-b1dc-15eb381c6863" /v "Attributes" /t REG_DWORD /d "2" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR LATENCYHYPERVISOR 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR LATENCYHYPERVISOR 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "NumaAware" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
sc config "TrkWks" start= disabled >nul 2>&1
sc config "WalletService" start= disabled >nul 2>&1
sc config "WerSvc" start= disabled >nul 2>&1
sc config "lfsvc" start= disabled >nul 2>&1
sc config "MapsBroker" start= disabled >nul 2>&1
sc config "WdiServiceHost" start= disabled >nul 2>&1
sc config "WdiSystemHost" start= disabled >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
powercfg -setacvalueindex scheme_current sub_processor 0cc5b647-c1df-4637-891a-dec35c318583 0
powercfg -setacvalueindex scheme_current sub_processor ea062031-0e34-4ff1-9b6d-eb1059334028 100

#FIX TURBO BOOST INTEL 2
for /f "tokens=4" %%A in ('powercfg -getactivescheme') do set ACTIVE_GUID=%%A
:: PERF BOOST MODE = 2
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 be337238-0d82-4146-a960-4f3749d470c7 2
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 0cc5b647-c1df-4637-891a-dec35c318583 0
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 100
powercfg -setacvalueindex %ACTIVE_GUID% 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 26 /f
powercfg -setacvalueindex %ACTIVE_GUID% SUB_PCIEXPRESS ASPM 0
powercfg -setactive %ACTIVE_GUID%
powercfg -setactive scheme_current

#END

chcp 65001 >nul 2>&1
timeout /t 3 /nobreak >nul 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║    Optimization completed successfully!      ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  System restart recommended for best results ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
pause 
goto cpu_menu 




goto cpu_menu 
:nvidia_safe 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║           NVIDIA SAFE OPTIMIZATION           ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║    Applying safe NVIDIA optimizations...     ║ 
echo                                     ║                                              ║ 
timeout /t 2 >nul 
echo                                     ║  - Setting Power Management: Optimal         ║ 
echo                                     ║  - Adjusting Texture Filtering               ║ 
echo                                     ║  - Optimizing Shader Cache                   ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
timeout /t 2 >nul 
echo. 
echo Running Safe Tweak for NVIDIA GPUs... 
echo. 
timeout /t 1 >nul 
chcp 1251 >nul
echo Operating system in use: 
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" 
ver 
echo --------------------------------------------- 
timeout /t 5 >nul 
echo. 
echo Applying the tweaks...  
fltmc >nul 2>&1 || ( 
    echo Administrator privileges are required. 
    PowerShell Start -Verb RunAs '%0' 2> nul || ( 
        echo Right-click on the script and select "Run as administrator". 
        pause & exit 1 
    ) 
    exit 0 
) 
if exist "%ProgramFiles%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" ( 
    rundll32 "%PROGRAMFILES%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL",UninstallPackage NvTelemetryContainer >NUL 2>&1 
    rundll32 "%PROGRAMFILES%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL",UninstallPackage NvTelemetry >NUL 2>&1 
) 
del /s %SystemRoot%\System32\DriverStore\FileRepository\NvTelemetry*.dll >NUL 2>&1 
rmdir /s /q "%ProgramFiles(x86)%\NVIDIA Corporation\NvTelemetry" 2>nul 
rmdir /s /q "%ProgramFiles%\NVIDIA Corporation\NvTelemetry" 2>nul 
reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v ValidateAdminCodeSignatures /t REG_DWORD /d 0 /f >NUL 2>&1 
gpupdate /force 
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPREFERENCE 1 
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUBOOST 0 
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPOWER 100 
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPREFERENCE 1 
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUBOOST 0 
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPOWER 100 
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableGfxPreemption /t REG_DWORD /d 0 /f 
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v EnableComputePreemption /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ForceDirectFlip" /t REG_DWORD /d 1 /f >nul 2>&1
nvidia-smi -pm 1 
nvidia-smi -acp 0 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /t REG_DWORD /d "15" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "TurboQueue" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableVIASBA" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableIrongateSBA" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableAGPSBA" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableAGPFW" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "FastVram" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "ShadowFB" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "TexturePrecache" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableFastCopyPixels" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "EnableBugcheckDisplay" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DisableMshybridNvsrSwitch" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "LogWarningEntries" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "LogPagingEntries" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "LogEventEntries" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "LogErrorEntries" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
echo Checking Nvidia Reg location.
timeout /t 2 >nul
echo Found! Applying registry edits.
timeout /t 2 >nul
for /f "tokens=*" %%c in (
	'reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /f "Nvidia" /t REG_SZ /s 2^>nul ^| findstr /l "}"'
) do (
	set nvidia_key=%%c
)
reg add "%nvidia_key%" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f 
reg add "%nvidia_key%" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "Acceleration.Level" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "FeatureControl" /t REG_DWORD /d "4" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmCacheLoc" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RMGpuId" /t REG_DWORD /d "256" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "TCCSupported" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "TrackResetEngine" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "UseBestResolution" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PlatformSupportMiracast" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMPcieLinkSpeed" /t REG_DWORD /d "4" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKCU\Software\NVIDIA Corporation\NvTray" /v "StartOnLogin" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableGR535" /t REG_DWORD /d "0" /f >NUL 2>&1 
C:\Windows\Temp\nvidiaProfileInspector.exe -SilentImport C:\Windows\Temp\NVIDIA.nip >NUL 2>&1 
reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" /v "SendTelemetryData" /t REG_DWORD /d 0 /f 
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_DWORD /d 100 /f 
reg add "HKCU\Control Panel\Desktop" /v "MouseHoverTime" /t REG_SZ /d 10 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d 0 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d 0 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d 0 /f 
bcdedit /set disabledynamictick yes 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "RefsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "MaxQueuedBuffers" /t REG_DWORD /d 2 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "UseMachineCheck" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key%" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "PerfLevelSrc" /t REG_DWORD /d 8754 /f 
reg add "%nvidia_key%" /v "PowerMizerEnable" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key%" /v "PowerMizerLevel" /t REG_DWORD /d 3 /f 
reg add "%nvidia_key%" /v "PowerMizerLevelAC" /t REG_DWORD /d 3 /f 
reg add "%nvidia_key%" /v "EnableMSI" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "DisableClockGating" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "DisableDynamicClockGating" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "DisableULPS" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "PreferredPerformanceMode" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "D3PCLatency" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "F1TransitionLatency" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "LOWLATENCY" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "Node3DLowLatency" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "PciLatencyTimerControl" /t REG_DWORD /d 32 /f 
reg add "%nvidia_key%" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RmGspcMaxFtuS" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RmGspcMinFtuS" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RmGspcPerioduS" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d 1 /f 
setlocal 
echo Creating a temporary .reg file...
set "regfile=%TEMP%\afd_tuning.reg" 
> "%regfile%" echo Windows Registry Editor Version 5.00 
>> "%regfile%" echo. 
>> "%regfile%" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters] 
>> "%regfile%" echo "BufferAlignment"=dword:00000001 
>> "%regfile%" echo "DefaultReceiveWindow"=dword:00040000 
>> "%regfile%" echo "DefaultSendWindow"=dword:00040000 
>> "%regfile%" echo "DisableAddressSharing"=dword:00000001 
>> "%regfile%" echo "DisableChainedReceive"=dword:00000001 
>> "%regfile%" echo "DoNotHoldNICBuffers"=dword:00000001 
>> "%regfile%" echo "DynamicSendBufferDisable"=dword:00000001 
>> "%regfile%" echo "FastSendDatagramThreshold"=dword:00000400 
>> "%regfile%" echo "FastCopyReceiveThreshold"=dword:00000400 
>> "%regfile%" echo "IgnoreOrderlyRelease"=dword:00000001 
>> "%regfile%" echo "IgnorePushBitOnReceives"=dword:00000001 
echo. 
echo Import into Registry... 
reg import "%regfile%" 
if %errorlevel% neq 0 ( 
    echo Error importing .reg file.
    pause 
    exit /b 1 
) 
echo. 
echo Cleaning up temporary files... 
del "%regfile%" 
for /f "tokens=*" %%c in (
	'reg query "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /f "Nvidia" /t REG_SZ /s 2^>nul ^| findstr /l "}"'
) do (
	set nvidia_key2=%%c
)
reg add "%nvidia_key2%" /v "RmClkPowerOffDramPllWhenUnused" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key2%" /v "RMDisableGpuASPMFlags" /t REG_DWORD /d 3 /f 
reg add "%nvidia_key2%" /v "RMDisablePerIntrDPCQueueing" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key2%" /v "RMGC6Feature" /t REG_DWORD /d 11185050 /f 
reg add "%nvidia_key2%" /v "RMElpgStateOnInit" /t REG_DWORD /d 3 /f 
reg add "%nvidia_key2%" /v "RMDisableOptimalPowerForPadlinkPll" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key2%" /v "RMPcieLtrOverride" /t REG_DWORD /d 2 /f 
reg add "%nvidia_key2%" /v "RmMIONoPowerOff" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key2%" /v "RMGC6Parameters" /t REG_DWORD /d 85 /f 
reg add "%nvidia_key2%" /v "TCCSupported" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key2%" /v "PruningMode" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key2%" /v "RMFspg" /t REG_DWORD /d 15 /f 
reg add "%nvidia_key2%" /v "RMGpuId" /t REG_DWORD /d 256 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverStatus" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "DynamicThrottlePolicy" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EcoMode" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 100 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 100 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverPolicy" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Attributes" /t REG_DWORD /d 2 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Affinity" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Background Only" /t REG_SZ /d "False" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Clock Rate" /t REG_DWORD /d 65536 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "GPU Priority" /t REG_DWORD /d 8 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Priority" /t REG_DWORD /d 6 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "BackgroundPriority" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Latency Sensitive" /t REG_SZ /d "True" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableFrameBufferCompression" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableGpuBoost" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace" /v "AllowWindowsInkWorkspace" /t REG_DWORD /d 0 /f 
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d 1 /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "InterruptSteeringDisabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /v "IoLatencyCap" /t REG_DWORD /d "20" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /f /d 1  
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v ThreadDpcEnable /t REG_DWORD /f /d 0  
chcp 65001 >nul 2>&1
echo Completed. Restart your PC for the changes to take effect.
echo. 
echo. 
echo                                     ║    Optimization completed successfully!      ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
pause 
goto nvidia_gpu 
:: [Add similar sections for other options following the same style] 
:debloat 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║              SYSTEM DEBLOATER                ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  WARNING: This will remove bloatware         ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  [1] REMOVE TELEMETRY                        ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  [0] BACK TO MAIN MENU                       ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto custom_debloat 
if "%choice%"=="2" goto remove_telemetry 
if "%choice%"=="3" goto custom_debloat 
if "%choice%"=="0" goto main_menu 
goto debloat 

:app_debloat 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║              APP DEBLOATER                   ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  WARNING: This will debloat ur app           ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  [1] DISCORD                                 ║ 
echo                                     ║                                              ║ 
echo                                     ║  [2] SPOTIFY                                 ║ 
echo                                     ║                                              ║ 
echo                                     ║  [3] MS EDGE                                 ║
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  [0] BACK TO MAIN MENU                       ║ 
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
set /p choice=      SELECT OPTION:  
if "%choice%"=="1" goto discord_debloat 
if "%choice%"=="2" goto spotify_debloat 
if "%choice%"=="3" goto edge_debloat 
if "%choice%"=="0" goto main_menu 
goto app_debloat 
:: ====================== 
:: MOUSE OPTIMIZER SECTION 
:: ====================== 
:mouse_tweak 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║               MOUSE OPTIMIZER                ║
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣
echo                                     ║                                              ║ 
echo                                     ║  - Disable Acceleration                      ║ 
echo                                     ║  - InputTweaks                               ║ 
echo                                     ║  - MouseAccelFix                             ║ 
echo                                     ║  - TimerTweaks                               ║ 
echo                                     ║  - USBTweaks                                 ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo. 
echo MOUSE Optimization.....
chcp 1251 >nul
timeout /t 2 >nul 
echo. 
echo Applying Optimization ....
(
echo Windows Registry Editor Version 5.00
echo [HKEY_CURRENT_USER\Control Panel\Mouse]
echo "SmoothMouseXCurve"=hex:00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
echo "SmoothMouseYCurve"=hex:00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00

) > "%temp%\mouse_fix.reg"
reg import "%temp%\mouse_fix.reg"
del "%temp%\mouse_fix.reg"
rem # Disable Mouse Acceleration
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
reg add "HKCU\Control Panel\Mouse" /v RawInput /t REG_SZ /d 1 /f
reg add "HKCU\Control Panel\Mouse" /v ActiveWindowTracking /t REG_DWORD /d 0 /f
rem # Input tweaks
rem # -------------------------------
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "0x00000016" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "0x00000016" /f
rem # Enable NumLock at startup (0 = Disabled / 2 = Enable)
reg add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_DWORD /d "2" /f
rem # Disable BSOD Hotkey (CTRL+ScrollLock twice)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters" /v "CrashOnCtrlScroll" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters" /v "CrashOnCtrlScroll" /t REG_DWORD /d "0" /f
rem # Repeat Rate
rem # May increase latency if 1+
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "KeyboardSpeed" /t REG_DWORD /d "0" /f
rem # Repeat Delay
rem # May increase latency if 1+
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Keyboard" /v "TypematicDelay" /t REG_DWORD /d "0" /f
rem # May increase latency when 1+
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
rem # -------------------------------
rem # Raw mouse
rem # -------------------------------
reg add "HKCU\Control Panel\Mouse" /v "RawMouseThrottleEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "RawMouseThrottleForced" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "RawMouseThrottleDuration" /t REG_DWORD /d "20" /f
rem # -------------------------------
rem # Mouse Human Interface Device tweaks
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "TreatAbsolutePointerAsAbsolute" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouhid\Parameters" /v "TreatAbsoluteAsRelative" /t REG_DWORD /d "0" /f
rem # Fastest cursor update rate
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
rem # Mouse Cursor Tweaks
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v AttractionRectInsetInDIPS /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v DistanceThresholdInDIPS /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v MagnetismDelayInMilliseconds /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v MagnetismUpdateIntervalInMilliseconds /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism" /v VelocityInDIPSPerSecond /t REG_DWORD /d 0 /f
rem # Remove Windows Mouse Acceleration Curve
reg delete "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /f
reg delete "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /f
rem # Disable WelcomeScreen and Login Accel
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
rem # -------------------------------
rem # USB Tweaks
rem # Disables power saving features
rem # MSI Mode support for USB Controller
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f
rem # Disable USB PowerSavings
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f
)
rem # USB Tweaks
reg add "HKLM\SYSTEM\CurrentControlSet\Services\usbhub\hubg" /v "DisableOnSoftRemove" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters\Wdf" /v "NoExtraBufferRoom" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D1Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D2Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D3Latency" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices" /v "TCGSecurityActivationDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\usbstor" /v "PollingInterval" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "D3ColdSupported" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f
rem # Disable "Allow this device to wake the computer"
powercfg -devicedisablewake "HID-complaint mouse"
powercfg -devicedisablewake "HID-complaint mouse (001)"
powercfg -devicedisablewake "HID Keyboard Device"
powercfg -devicedisablewake "HID Keyboard Device (001)"
rem # Disable device stop to save power in certain windows state
reg add "HKLM\SYSTEM\CurrentControlSet\Control\USB\AutomaticSurpriseRemovals" /v AttemptRecoveryFromUsbPowerDrain /t REG_DWORD /d 0 /f
rem # Disable devices power saving
powershell "$devices = Get-WmiObject Win32_PnPEntity; $powerMgmt = Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi; foreach ($p in $powerMgmt){$IN = $p.InstanceName.ToUpper(); foreach ($h in $devices){$PNPDI = $h.PNPDeviceID; if ($IN -like \"*$PNPDI*\"){$p.enable = $False; $p.psbase.put()}}}"
rem # Disable USB Hub idle
for /F %%a in ('wmic path Win32_USBHub GET DeviceID^| FINDSTR /L "VID_"') DO (
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\%%a\Device Parameters" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\%%a\Device Parameters" /v AllowIdleIrpInD3 /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\%%a\Device Parameters" /v DeviceSelectiveSuspended /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\%%a\Device Parameters" /v SelectiveSuspendEnabled /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\%%a\Device Parameters" /v SelectiveSuspendOn /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\%%a\Device Parameters" /v fid_D1Latency /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\%%a\Device Parameters" /v fid_D2Latency /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Enum\%%a\Device Parameters" /v fid_D3Latency /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\usbflags" /v fid_D1Latency /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\usbflags" /v fid_D2Latency /t REG_DWORD /d 0 /f >NUL 2>&1
        REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\usbflags" /v fid_D3Latency /t REG_DWORD /d 0 /f >NUL 2>&1
)
rem # Disable power saving pnp
powershell -noprofile -executionpolicy bypass -c "$power_device_enable = Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi; $usb_devices = @(\"Win32_USBController\", \"Win32_USBControllerDevice\", \"Win32_USBHub\"); foreach ($power_device in $power_device_enable) { $instance_name = $power_device.InstanceName.ToUpper(); foreach ($device in $usb_devices) { foreach ($hub in Get-WmiObject $device) { $pnp_id = $hub.PNPDeviceID; if ($instance_name -like \"*$pnp_id*\") { $power_device.enable = $False; $power_device.psbase.put(); }}}}"
rem # Disable Power saving from USB
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters\Wdf" /v NoExtraBufferRoom /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB" /v AllowIdleIrpInD3 /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 0 /f
for /L %%V in (0,1,32) do (
    if %%V LSS 10 ( 
                REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Class\USB\000%%V" /v IdleEnable /t REG_DWORD /d 0 /f
        ) else ( 
                REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Class\USB\00%%V" /v IdleEnable /t REG_DWORD /d 0 /f
        )
)
rem # USB I/O Queue Work Item Tweaks
reg add "HKLM\SYSTEM\CurrentControlSet\Services\xusb22\Parameters" /v "IoQueueWorkItem" /t REG_DWORD /d "0xa" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBXHCI\Parameters" /v "IoQueueWorkItem" /t REG_DWORD /d "0xa" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\usbhub\Parameters" /v "IoQueueWorkItem" /t REG_DWORD /d "0xa" /f
PAUSE
echo. 
echo.
echo                                     ╔══════════════════════════════════════════════╗
echo                                     ║    Optimization completed successfully!      ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
pause 
goto main_menu 
:: ====================== 
:: RAM OPTIMIZER SECTION 
:: ====================== 
:ram_optimizer 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║             RAM/MEMORY OPTIMIZER             ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo. 
echo RAM/MEMORY Optimization.....
chcp 1251 >nul
timeout /t 2 >nul 
echo. 
echo Optimization RAM/MEMORY....
del /q /f /s "%TEMP%\*"
sc config WudfSvc start= auto
sc config WpdBusEnum start= manual
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
del /q /f /s "C:\Windows\Temp\*"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 16 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ13Priority" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d 1 /f
powershell -Command "Disable-MMAgent -MemoryCompression"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d 10 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /t REG_DWORD /d 15 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d 16777216 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "RefsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f

sc config "SysMain" start= disabled
sc stop "SysMain"
sc config "DiagTrack" start= disabled
sc stop "DiagTrack"
sc config "WSearch" start= disabled
fsutil behavior set disable8dot3 1
fsutil behavior set disablelastaccess 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d 2 /f
sc stop "WSearch"
sc config "PcaSvc" start= disabled
sc stop "PcaSvc"
schtasks /Change /TN "\Microsoft\Windows\Maintenance\WinSAT" /Disable
schtasks /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
bcdedit /set disabledynamictick yes
powercfg /SETACVALUEINDEX SCHEME_CURRENT 2a737441-1930-4402-8d77-b2beb1463538 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 2a737441-1930-4402-8d77-b2beb1463538 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg /setactive scheme_current
reg add "HKLM\SOFTWARE\Policies\Microsoft\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d 10 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WHEA\Policy" /v "DisableWHEA" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 31 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "MaximumTunnelEntries" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "MaximumTunnelEntryAgeInSeconds" /t REG_DWORD /d 0 /f
bcdedit /set bootux disabled
bcdedit /set nx OptIn
powercfg /SETACVALUEINDEX SCHEME_CURRENT 2a737441-1930-4402-8d77-b2beb1463538 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 2a737441-1930-4402-8d77-b2beb1463538 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg /SETACVALUEINDEX SCHEME_CURRENT 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "983040" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
fsutil behavior set disable8dot3 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d 983040 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "MemoryUsage" /t REG_DWORD /d 2 /f
fsutil behavior set disablecompression 1
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "6" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "10" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
reg delete "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /f
reg delete "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /f
bcdedit /set useplatformtick yes
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d 983040 /f
bcdedit /set tscsyncpolicy enhanced
bcdedit /deletevalue useplatformclock
powershell -Command "Disable-MMAgent -MemoryCompression"
powercfg -h off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
powercfg -h off
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidUsb" /v "IdleEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "GPU Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "Priority" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
del /q /f /s "C:\Windows\Prefetch\*"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
ipconfig /flushdns
del /f /s /q "%TEMP%\*.*" 2>> "%LOG%"
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" 2>> "%LOG%"
del /f /s /q "C:\Windows\Temp\*.*" 2>> "%LOG%"
for /d %%D in ("C:\Windows\Temp\*") do rd /s /q "%%D" 2>> "%LOG%"
del /f /q "C:\Windows\Prefetch\*.*" 2>> "%LOG%"
del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache_*.db" 2>> "%LOG%"
del /f /q "%LOCALAPPDATA%\IconCache.db" 2>> "%LOG%"
del /f /q "%LOCALAPPDATA%\Microsoft\Windows\Explorer\iconcache_*.db" 2>> "%LOG%"
ipconfig /flushdns >> "%LOG%" 2>&1
net stop wuauserv >> "%LOG%" 2>&1
rd /s /q "C:\Windows\SoftwareDistribution\Download" 2>> "%LOG%"
md "C:\Windows\SoftwareDistribution\Download" 2>> "%LOG%"
net start wuauserv >> "%LOG%" 2>&1
powershell -NoProfile -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue" >> "%LOG%" 2>&1
net stop spooler >> "%LOG%" 2>&1
del /f /s /q "%windir%\System32\spool\PRINTERS\*.*" 2>> "%LOG%"
net start spooler >> "%LOG%" 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d 16384 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d 16384 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d 16384 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "TransmitWorker" /t REG_DWORD /d 32 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicBacklogGrowthDelta" /t REG_DWORD /d 10 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 380000000 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" / 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d 1 /f
bcdedit /deletevalue truncatememory
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "DisableProcessWindowsGhosting" /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "100" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d 4096 /f
fsutil behavior set disablelastaccess 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MessageSignaledInterrupts" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MSISupported" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Disk" /v "EnableCache" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 100 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d 10000 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGI_HonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "CoalescingTimerDisabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "RssBaseCpu" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "EnableBlurBehind" /t REG_DWORD /d 0 /f
fsutil behavior set disable8dot3 1
fsutil behavior set disablecompression 1
fsutil behavior set disableencryption 1
fsutil behavior set disablefilemetadataoptimization 1
fsutil behavior set mftzone 4
fsutil behavior set disablelastaccess 1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{36fc9e60-c465-11cf-8056-444553540000}" /v "IdleEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "DmaRemappingCompatible" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "FilterSupportedFeaturesMode" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "CountOperations" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "CoalescingTimerDisabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TSFairShare\Disk" /v "EnableFairShare" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TSFairShare\NetFS" /v "EnableFairShare" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "3" /f
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d 65535 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d 65535 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d 65535 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d 65536 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ13Priority" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "MaxLoaderThreads" /t REG_DWORD /d 10 /f
del /f /q /s "%temp%\*"
del /f /q /s "%localappdata%\Temp\*"
del /f /q /s "C:\Windows\Temp\*"
del /f /q "C:\Windows\System32\DriverStore\FileRepository\*.tmp"
del /f /q "C:\Windows\System32\DriverStore\FileRepository\*.log"
sc config fdphost start= disabled
sc config fdrespub start= disabled
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ14Priority" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ15Priority" /t REG_DWORD /d 1 /f
powershell -Command "Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\NTDS\Parameters' -Name 'LDAPServerIntegrity' -Value 2"
powershell -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching' -Name 'SearchOrderConfig' -Value 0"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb" /v "Attributes" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\7b224883-b3cc-4d79-819f-8374152cbe7c" /v "Attributes" /t REG_DWORD /d 2 /f
del /q /f /s "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db"
del /q /f /s "%LocalAppData%\Packages\Microsoft.WindowsStore_*\LocalCache\*"
del /q /f /s "%UserProfile%\AppData\LocalLow\Sun\Java\Deployment\cache\*"
del /q /f /s "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*"
del /q /f /s "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache\*"
del /q /f /s "%AppData%\Mozilla\Firefox\Profiles\*.default\cache2\*"
echo off | clip
del /q /f /s "%AppData%\Microsoft\Windows\Recent\*"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "HeapDeCommitFreeBlockThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "HeapDeCommitFreeBlockThreshold" /t REG_DWORD /d 0 /f
echo.
timeout /t 1 >nul 
chcp 65001 >nul
cls 
pause 
goto main_menu 
:amd_cpu 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║            AMD CPU OPTIMIZATION              ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║  Applying AMD-specific optimizations...      ║ 
echo                                     ║                                              ║ 
timeout /t 2 >nul 
echo                                     ║  - Enabling Performance Boost                ║ 
echo                                     ║  - Disabling Core Parking                    ║ 
echo                                     ║  - Optimizing CPPC Settings                  ║ 
echo                                     ║                                              ║ 
timeout /t 2 >nul
chcp 1251 >nul
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CoalescingTimerDisabled /t REG_DWORD /d 1 /f
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Idle Maintenance" /Disable
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /Disable
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleResiliency /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleLatency /t REG_DWORD /d 1 /f   
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "CStateOptions" /t REG_DWORD /d 0 /f
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 4
powercfg -setacvalueindex scheme_current sub_processor PERFINCPOL 0
bcdedit /deletevalue useplatformclock
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableTsx" /t REG_DWORD /d 1 /f
powercfg -setacvalueindex scheme_current sub_processor PERFDECPOL 100
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82BE-4824-96C1-47B60B740D00\0CC5B647-C1DF-4637-891A-DEC35C318583" /v "ValueMin" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82BE-4824-96C1-47B60B740D00\0CC5B647-C1DF-4637-891A-DEC35C318583" /v "ValueMax" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82BE-4824-96C1-47B60B740D00\0CC5B647-C1DF-4637-891A-DEC35C318583" /v "ValueMin" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82BE-4824-96C1-47B60B740D00\0CC5B647-C1DF-4637-891A-DEC35C318583" /v "ValueMin" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82BE-4824-96C1-47B60B740D00\0CC5B647-C1DF-4637-891A-DEC35C318583" /v "ValueMax" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82BE-4824-96C1-47B60B740D00\893DEE8E-2BEF-41E0-89C6-B55D0929964C\DefaultPowerSchemeValues\8C5E7FDA-E8BF-4A96-9A85-A6E23A8C635C" /v "ValueMax" /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t REG_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\User\PowerSchemes" /v "ActivePowerScheme" /t REG_SZ /d "8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\bc5038f7-23e0-4960-96da-33abaf5935ec" /v "ValueMax" /t REG_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMin" /t REG_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "Win32PrioritySeparation" -Value 38 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "IoPrioritySeparation" -Value 2 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "Win32PrioritySeparation" -Value 26 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "InterruptPrioritySeparation" -Value 2 -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" -Name "DpcWatchdogThreshold" -Value 0x7FFFFFFF -Type DWord
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" -Name "DpcWatchdogProfile" -Value 0 -Type DWord
powercfg -setacvalueindex scheme_current sub_processor procthrottlemax 100
powercfg -setdcvalueindex scheme_current sub_processor procthrottlemax 100
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "IoPrioritySeparation" -Value 38 -Type DWord
fsutil behavior set disablelastaccess 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IoPrioritySeparation" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "InterruptPrioritySeparation" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "WaitForIdleState" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
powercfg -setacvalueindex scheme_current sub_processor procthrottlemax 100
powercfg -setdcvalueindex scheme_current sub_processor procthrottlemax 100
sc config "Themes" start= auto >nul
net stop "Themes" >nul 2>&1
net start "Themes" >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "WaitForIdleState" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
netsh int tcp set global autotuninglevel=disabled >nul 2>&1
netsh int tcp set global dca=disabled >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\94d3a615-a899-4ac5-ae2b-e4d8f634367f" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\94d3a615-a899-4ac5-ae2b-e4d8f634367f" /v "ValueMax" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CpuPriority" /t REG_DWORD /d "6" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb" /v "Attributes" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\ea062031-0e34-4ff1-9b6d-eb1059334028" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\19cbb8fa-5279-450e-9fac-8a3d5fedd0c1" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\06cadf0e-64ed-448a-8927-ce7bf90eb35d" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdpsp\Parameters" /v "EnablePSP" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\d8816f41-9d12-466e-b453-ca4246e9b192" /v "Attributes" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\d77aaa94-9b45-4cd8-b93e-5a4c85a4bad0" /v "Attributes" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\b000397e-c95c-4f28-96d1-c3163c3d5d0f" /v "Attributes" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\45bcc044-d885-43e2-8605-ee0ec6e3b2e5" /v "Attributes" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Attributes" /t REG_DWORD /d "2" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PERFBOOSTMODE 4
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR PERFBOOSTMODE 4
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\5d76a2ca-e8c0-402f-a133-2158492d58ad" /v "Attributes" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\d8edeb9b-95cf-4f7e-b021-15ea1d2d5c2f" /v "Attributes" /t REG_DWORD /d "2" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PERFINCPOL 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR PERFINCPOL 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3666075c-e1a3-49a9-82bd-7e2c5f5b863d" /v "Attributes" /t REG_DWORD /d "2" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR CPPC 1
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR CPPC 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3666075c-e1a3-49a9-82bd-7e2c5f5b863e" /v "Attributes" /t REG_DWORD /d "2" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR CPPCPREFERCORES 1
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR CPPCPREFERCORES 1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\4e4450b3-34a5-4d70-88ed-308e866919dd" /v "Attributes" /t REG_DWORD /d "2" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR GCSC 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR GCSC 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3666075c-e1a3-49a9-82bd-7e2c5f5b863f" /v "Attributes" /t REG_DWORD /d "2" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR EFF 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR EFF 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ13Priority" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f
for /f "tokens=2 delims=:(" %%i in ('powercfg -getactivescheme') do set "CurrentGUID=%%i"
set "CurrentGUID=%CurrentGUID:~1%"
powercfg -setacvalueindex %CurrentGUID% SUB_PROCESSOR PERFBOOSTMODE 4
powercfg -setacvalueindex %CurrentGUID% SUB_PROCESSOR CPMINCORES 100
powercfg -setacvalueindex %CurrentGUID% SUB_PROCESSOR PERFINCPOL 0
powercfg -setacvalueindex %CurrentGUID% SUB_PROCESSOR CPPC 1
powercfg -setacvalueindex %CurrentGUID% SUB_PROCESSOR CPPCPREFERCORES 1
powercfg -setacvalueindex %CurrentGUID% SUB_PROCESSOR GCSC 0
powercfg -setacvalueindex %CurrentGUID% SUB_PROCESSOR EFF 0
powercfg -setactive %CurrentGUID%
sc config "DiagTrack" start=disabled >nul 2>&1
sc stop "DiagTrack" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v Start /t REG_DWORD /d 3 /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v WaitForIdleState /f
chcp 65001 >nul 2>&1
echo. 
echo.
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║    Optimization completed successfully!      ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
pause 
goto cpu_menu 
:amd_gpu 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║          AMD GPU OPTIMIZATION MENU           ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║  - Adjusting tessellation to override        ║ 
echo                                     ║  - Enabling Surface Format Optimization      ║ 
echo                                     ║  - Setting texture filtering to Performance  ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
timeout /t 2 >nul 
echo. 
echo Ottimizzazione GPU AMD in corso... 
timeout /t 1 >nul 
chcp 1251 >nul 
echo Sistema operativo in uso: 
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" 
ver 
echo --------------------------------------------- 
timeout /t 5 >nul 
echo. 
echo Sto applicando i tweak...  
echo. 
echo 
for /f "tokens=*" %%c in (
	'reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /f "Radeon" /t REG_SZ /s 2^>nul ^| findstr /l "}"'
) do (
	set radeon_key=%%c
)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CoalescingTimerDisabled /t REG_DWORD /d 1 /f
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Idle Maintenance" /Disable
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /Disable
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleResiliency /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleLatency /t REG_DWORD /d 1 /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPREFERENCE 1 
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUBOOST 0 
reg add "%radeon_key%" /v "EnableUlps" /t REG_DWORD /d 0 /f
reg add "%radeon_key%" /v /v "Ulps" /t REG_DWORD /d 0 /f
reg add "%radeon_key%\UMD" /v "StutterMode" /t REG_DWORD /d 0 /f
reg add "%radeon_key%\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3100" /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPOWER 100 
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPREFERENCE 1 
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUBOOST 0 
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPOWER 100 
reg add "%radeon_key%" /v "EnableUlps" /t REG_DWORD /d 0 /f
reg add "%radeon_key%" /v "Ulps" /t REG_DWORD /d 0 /f
reg add "%radeon_key%\UMD" /v "StutterMode" /t REG_DWORD /d 0 /f
reg add "%radeon_key%\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3100" /f
reg add "%radeon_key%\UMD" /v "Tessellation_SET" /t REG_BINARY /d "363400" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ForceDirectFlip" /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag" /v "PP_PhmUseDummyBackEnd" /t REG_DWORD /d 0 /f 
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag" /v "EnableUlps" /t REG_DWORD /d 0 /f 
reg add "%radeon_key%" /v "KMD_EnableReBarForLegacyASIC" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%radeon_key%" /v "KMD_RebarControlMode" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%radeon_key%" /v "KMD_RebarControlSupport" /t REG_DWORD /d "1" /f >NUL 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "AutoUpdateTriggered" /t REG_DWORD /d "0" /f > nul 2>&1 > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "PowerSaverAutoEnable_CUR" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "BuildType" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "WizardProfile" /t REG_SZ /d "PROFILE_CUSTOM" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "UserTypeWizardShown" /t REG_DWORD /d "1" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "AutoUpdate" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "RSXBrowserUnavailable" /t REG_SZ /d "true" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "SystemTray" /t REG_SZ /d "false" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "AllowWebContent" /t REG_SZ /d "false" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "CN_Hide_Toast_Notification" /t REG_SZ /d "true" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN" /v "AnimationEffect" /t REG_SZ /d "false" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN\OverlayNotification" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\CN\VirtualSuperResolution" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\DVR" /v "PerformanceMonitorOpacityWA" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\DVR" /v "DvrEnabled" /t REG_DWORD /d "1" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInstantReplayEnable" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInGameReplayEnabled" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInstantGifEnabled" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\DVR" /v "RemoteServerStatus" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKCU\Software\AMD\DVR" /v "ShowRSOverlay" /t REG_SZ /d "false" /f > nul 2>&1 
Reg.exe add "HKCU\Software\ATI\ACE\Settings\ADL\AppProfiles" /v "AplReloadCounter" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKLM\Software\AMD\Install" /v "AUEP" /t REG_DWORD /d "1" /f > nul 2>&1 
Reg.exe add "HKLM\Software\AUEP" /v "RSX_AUEPStatus" /t REG_DWORD /d "2" /f > nul 2>&1
reg add "HKCU\Software\AMD\CN" /v "SystemTray" /t REG_SZ /d "false" /f > nul 2>&11
reg add "HKCU\Software\AMD\CN" /v "AllowWebContent" /t REG_SZ /d "false" /f > nul 2>&1
reg add "HKCU\Software\AMD\CN" /v "CN_Hide_Toast_Notification" /t REG_SZ /d "true" /f > nul 2>&1
reg add "HKCU\Software\AMD\CN" /v "AnimationEffect" /t REG_SZ /d "false" /f > nul 2>&1
reg add "HKCU\Software\AMD\CN\OverlayNotification" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "HKCU\Software\AMD\CN\VirtualSuperResolution" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "HKCU\Software\AMD\DVR" /v "PerformanceMonitorOpacityWA" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKCU\Software\AMD\DVR" /v "DvrEnabled" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "HKCU\Software\AMD\DVR" /v "ActiveSceneId" /t REG_SZ /d "0" /f > nul 2>&1
reg add "HKCU\Software\AMD\DVR" /v "PrevInstantReplayEnable" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKCU\Software\AMD\DVR" /v "PrevInGameReplayEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKCU\Software\AMD\DVR" /v "PrevInstantGifEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKCU\Software\AMD\DVR" /v "RemoteServerStatus" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKCU\Software\AMD\DVR" /v "ShowRSOverlay" /t REG_SZ /d "false" /f > nul 2>&1
reg add "HKCU\Software\ATI\ACE\Settings\ADL\AppProfiles" /v "AplReloadCounter" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKLM\Software\AMD\Install" /v "AUEP" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "%radeon_key%" /v "NotifySubscription" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%" /v "IsComponentControl" /t REG_BINARY /d "00000000" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_USUEnable" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_RadeonBoostEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "IsAutoDefault" /t REG_BINARY /d "01000000" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_DeLagEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "ACE" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoDegree_SET" /t REG_BINARY /d "3020322034203820313600" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AAF" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "GI" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "CatalystAI" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TemporalAAMultiplier_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "EnableTripleBuffering" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ExportCompressedTex" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "PixelCenter" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "DitherAlpha_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect_D3D_SET" /t REG_BINARY /d "3020312032203320342038203900" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "VSyncControl" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TextureOpt" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TextureLod" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASE" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASD" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASTT" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasSamples" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAlias" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoDegree" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoType" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasMapping_SET" /t REG_BINARY /d "3028303A302C313A3029203228303A322C313A3229203428303A342C313A3429203828303A382C313A382900" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasSamples_SET" /t REG_BINARY /d "3020322034203800" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect_OGL_SET" /t REG_BINARY /d "3020312032203320342035203620372038203920313120313220313320313420313520313620313700" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation_SET" /t REG_BINARY /d "31203220342036203820313620333220363400" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "HighQualityAF" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "DisplayCrossfireLogo" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AppGpuId" /t REG_BINARY /d "300078003000310030003000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiStuttering" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SurfaceFormatReplacements" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ShaderCache" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "MLF" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "LRTCEnable" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "3to2Pulldown" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "MosquitoNoiseRemoval_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "MosquitoNoiseRemoval" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Deblocking_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Deblocking" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DemoMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "OverridePA" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DynamicRange" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "StaticGamma_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "BlueStretch_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "BlueStretch" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "LRTCCoef" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DynamicContrast_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "WhiteBalanceCorrection" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Fleshtone_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Fleshtone" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "ColorVibrance_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "ColorVibrance" /t REG_BINARY /d "340030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Detail_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Detail" /t REG_BINARY /d "310030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Denoise_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Denoise" /t REG_BINARY /d "360034000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "TrueWhite" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "OvlTheaterMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "StaticGamma" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "InternetVideo" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "HKEY_CURRENT_USER\Software\AMD\CN" /v "PerfLevel" /t REG_DWORD /d "1" /f
reg add "%radeon_key%" /v "EnableUlps" /t REG_DWORD /d "0" /f
reg add "%radeon_key%" /v "PP_PhmSoftPowerPlayTable" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000000000000" /f
reg add "%radeon_key%" /v "PP_ThermalLimit" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\AMD\Display" /v "PowerSaveEnabled" /t REG_DWORD /d "0" /f
reg add "%radeon_key%" /v "PP_EnableVoltageControl" /t REG_DWORD /d "1" /f
reg add "%radeon_key%" /v "PP_PerformanceLevel" /t REG_DWORD /d "7" /f
reg add "HKEY_CURRENT_USER\Software\AMD\Display" /v "VariBrightEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\AMD\Display" /v "PerfOpt" /t REG_DWORD /d "1" /f
reg add "%radeon_key%" /v "PP_MemoryTimingLevel" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\AMD\Display" /v "FRTCEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\AMD\Display" /v "AsyncShadersEnabled" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\Software\AMD\Display" /v "TextureFilteringQuality" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\AMD\Display" /v "SurfaceFormatOptimizationEnabled" /t REG_DWORD /d "0" /f
reg add "HKEY_CURRENT_USER\Software\AMD\Display" /v "TessellationMode" /t REG_DWORD /d "1" /f
reg add "%radeon_key%" /v "DisableDMACopy" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "%radeon_key%" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdwddmg" /v "ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdfendr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdfendrmgr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
reg add "HKLM\Software\AUEP" /v "RSX_AUEPStatus" /t REG_DWORD /d "2" /f > nul 2>&1
reg add "%radeon_key%" /v "NotifySubscription" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%" /v "IsComponentControl" /t REG_BINARY /d "00000000" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_USUEnable" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_RadeonBoostEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "IsAutoDefault" /t REG_BINARY /d "01000000" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_DeLagEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "ACE" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoDegree_SET" /t REG_BINARY /d "3020322034203820313600" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AAF" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "GI" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "CatalystAI" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TemporalAAMultiplier_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "EnableTripleBuffering" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ExportCompressedTex" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "PixelCenter" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "DitherAlpha_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect_D3D_SET" /t REG_BINARY /d "3020312032203320342038203900" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "VSyncControl" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TextureOpt" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TextureLod" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASE" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASD" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASTT" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasSamples" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAlias" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoDegree" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoType" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasMapping_SET" /t REG_BINARY /d "3028303A302C313A3029203228303A322C313A3229203428303A342C313A3429203828303A382C313A382900" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasSamples_SET" /t REG_BINARY /d "3020322034203800" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect_OGL_SET" /t REG_BINARY /d "3020312032203320342035203620372038203920313120313220313320313420313520313620313700" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation_SET" /t REG_BINARY /d "31203220342036203820313620333220363400" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "HighQualityAF" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "DisplayCrossfireLogo" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AppGpuId" /t REG_BINARY /d "300078003000310030003000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiStuttering" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SurfaceFormatReplacements" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ShaderCache" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "MLF" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "LRTCEnable" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "3to2Pulldown" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "MosquitoNoiseRemoval_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "MosquitoNoiseRemoval" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Deblocking_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Deblocking" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DemoMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "OverridePA" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DynamicRange" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "StaticGamma_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "BlueStretch_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "BlueStretch" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "LRTCCoef" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DynamicContrast_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "WhiteBalanceCorrection" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Fleshtone_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Fleshtone" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "ColorVibrance_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "ColorVibrance" /t REG_BINARY /d "340030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Detail_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Detail" /t REG_BINARY /d "310030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Denoise_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Denoise" /t REG_BINARY /d "360034000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "TrueWhite" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "OvlTheaterMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "StaticGamma" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "InternetVideo" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%" /v "DisableDMACopy" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "%radeon_key%" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\amdwddmg" /v "ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\amdfendr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\amdfendrmgr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
sc config amdlog start=disabled
sc config "AMD External Events Utility" start=disabled
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "AutoUpdateTriggered" /t REG_DWORD /d "0" /f > nul 2>&1 > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "PowerSaverAutoEnable_CUR" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "WindowSize" /t REG_SZ /d "1440,960" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "BuildType" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "WizardProfile" /t REG_SZ /d "PROFILE_CUSTOM" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "UserTypeWizardShown" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "LastPage" /t REG_SZ /d "settings/graphics/0/" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "AutoUpdate" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "RSXBrowserUnavailable" /t REG_SZ /d "true" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "SYSTEMTray" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "AllowWebContent" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "CN_Hide_Toast_Notification" /t REG_SZ /d "true" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN" /v "AnimationEffect" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN\OverlayNotification" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\CN\VirtualSuperResolution" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "PerformanceMonitorOpacityWA" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "CaptureFileOutput" /t REG_SZ /d "C:\Users\Emre\Videos\Radeon ReLive" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "DvrEnabled" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "ActiveSceneId" /t REG_SZ /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "AVCCaps" /t REG_SZ /d "256,1,4096,4096,100000000,244800,0;" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "HEVCCaps" /t REG_SZ /d "256,1,4096,4096,2147483647,979200,0;" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "AvcEfcSupport" /t REG_SZ /d "0;" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "HevcEfcSupport" /t REG_SZ /d "0;" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "PrevInstantReplayEnable" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "PrevInGameReplayEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "PrevInstantGifEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "DvrDesktops" /t REG_SZ /d "\\.\DISPLAY19" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "RemoteServerStatus" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\DVR" /v "ShowRSOverlay" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraSize" /t REG_DWORD /d "3" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraEnabled" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraOpacity" /t REG_DWORD /d "100" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraAnchor" /t REG_DWORD /d "3" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraShownOnScreen" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "IndicatorPosition" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "TimerEnabled" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "ChatOverlayEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "ChatCustomOffset" /t REG_SZ /d "0.0260,0.0462" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "ChatOverlayAnchor" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "ChatBackgroundBlur" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "ChatFontSize" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "RelativeCoords" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraOffset" /t REG_SZ /d "0.0208,0.0370" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraCustomOffset" /t REG_SZ /d "0.0208,0.0370" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraRect" /t REG_SZ /d "0.1667,0.2222" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "CameraCustomRect" /t REG_SZ /d "0.1667,0.2222" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "ChatCustomRect" /t REG_SZ /d "0.1562,0.1562" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\AMD\SCENE\0" /v "ChatOverlaySize" /t REG_DWORD /d "3" /f > nul 2>&1
Reg.exe add "HKEY_CURRENT_USER\Software\ATI\ACE\Settings\ADL\AppProfiles" /v "AplReloadCounter" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\Software\AMD\Install" /v "AUEP" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\Software\AUEP" /v "RSX_AUEPStatus" /t REG_DWORD /d "2" /f > nul 2>&1
reg add "%radeon_key%" /v "NotifySubscription" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%" /v "IsComponentControl" /t REG_BINARY /d "00000000" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_USUEnable" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_RadeonBoostEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "IsAutoDefault" /t REG_BINARY /d "01000000" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "KMD_DeLagEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "ACE" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoDegree_SET" /t REG_BINARY /d "3020322034203820313600" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AAF" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "GI" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "CatalystAI" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TemporalAAMultiplier_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "EnableTripleBuffering" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ExportCompressedTex" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "PixelCenter" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "DitherAlpha_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect_D3D_SET" /t REG_BINARY /d "3020312032203320342038203900" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "VSyncControl" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TextureOpt" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TextureLod" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASE" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASD" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ASTT" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasSamples" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAlias" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoDegree" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AnisoType" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasMapping_SET" /t REG_BINARY /d "3028303A302C313A3029203228303A322C313A3229203428303A342C313A3429203828303A382C313A382900" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiAliasSamples_SET" /t REG_BINARY /d "3020322034203800" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect_OGL_SET" /t REG_BINARY /d "3020312032203320342035203620372038203920313120313220313320313420313520313620313700" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Tessellation_SET" /t REG_BINARY /d "31203220342036203820313620333220363400" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "HighQualityAF" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "DisplayCrossfireLogo" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AppGpuId" /t REG_BINARY /d "300078003000310030003000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SwapEffect" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "AntiStuttering" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "SurfaceFormatReplacements" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "ShaderCache" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "MLF" /t REG_BINARY /d "3000" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "LRTCEnable" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "3to2Pulldown" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "MosquitoNoiseRemoval_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "MosquitoNoiseRemoval" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Deblocking_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Deblocking" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DemoMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "OverridePA" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DynamicRange" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "StaticGamma_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "BlueStretch_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "BlueStretch" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "LRTCCoef" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "DynamicContrast_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "WhiteBalanceCorrection" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Fleshtone_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Fleshtone" /t REG_BINARY /d "350030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "ColorVibrance_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "ColorVibrance" /t REG_BINARY /d "340030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Detail_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Detail" /t REG_BINARY /d "310030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Denoise_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "Denoise" /t REG_BINARY /d "360034000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "TrueWhite" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "OvlTheaterMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "StaticGamma" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
reg add "%radeon_key%\UMD\DXVA" /v "InternetVideo" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdwddmg" /v "ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f > nul 2>&1
reg add "%radeon_key%\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f > nul 2>&1
reg add "%radeon_key%" /v "DisableDMACopy" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "%radeon_key%" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "%radeon_key%" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdfendr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdfendrmgr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1 
reg add "%radeon_key%" /v "NotifySubscription" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%" /v "IsComponentControl" /t REG_BINARY /d "00000000" /f > nul 2>&1 
reg add "%radeon_key%" /v "KMD_USUEnable" /t REG_DWORD /d "0" /f > nul 2>&1 
reg add "%radeon_key%" /v "KMD_RadeonBoostEnabled" /t REG_DWORD /d "0" /f > nul 2>&1 
reg add "%radeon_key%" /v "IsAutoDefault" /t REG_BINARY /d "01000000" /f > nul 2>&1 
reg add "%radeon_key%" /v "KMD_ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1 
reg add "%radeon_key%" /v "KMD_DeLagEnabled" /t REG_DWORD /d "0" /f > nul 2>&1 
reg add "%radeon_key%" /v "ACE" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AnisoDegree_SET" /t REG_BINARY /d "3020322034203820313600" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AAF" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "GI" /t REG_BINARY /d "31000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "CatalystAI" /t REG_BINARY /d "31000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "TemporalAAMultiplier_NA" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "EnableTripleBuffering" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "ExportCompressedTex" /t REG_BINARY /d "31000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "PixelCenter" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "DitherAlpha_NA" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "SwapEffect_D3D_SET" /t REG_BINARY /d "3020312032203320342038203900" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "VSyncControl" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "TextureOpt" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "TextureLod" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "ASE" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "ASD" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "ASTT" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AntiAliasSamples" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AntiAlias" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AnisoDegree" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AnisoType" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AntiAliasMapping_SET" /t REG_BINARY /d "3028303A302C313A3029203228303A322C313A3229203428303A342C313A3429203828303A382C313A382900" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AntiAliasSamples_SET" /t REG_BINARY /d "3020322034203800" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "SwapEffect_OGL_SET" /t REG_BINARY /d "3020312032203320342035203620372038203920313120313220313320313420313520313620313700" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "Tessellation_SET" /t REG_BINARY /d "31203220342036203820313620333220363400" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "HighQualityAF" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "DisplayCrossfireLogo" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AppGpuId" /t REG_BINARY /d "300078003000310030003000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "SwapEffect" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "AntiStuttering" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "SurfaceFormatReplacements" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "ShaderCache" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "MLF" /t REG_BINARY /d "3000" /f > nul 2>&1 
reg add "%radeon_key%\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "LRTCEnable" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "3to2Pulldown" /t REG_BINARY /d "31000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "MosquitoNoiseRemoval_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "MosquitoNoiseRemoval" /t REG_BINARY /d "350030000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "Deblocking_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "Deblocking" /t REG_BINARY /d "350030000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "DemoMode" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "OverridePA" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "DynamicRange" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "StaticGamma_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "BlueStretch_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "BlueStretch" /t REG_BINARY /d "31000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "LRTCCoef" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "DynamicContrast_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "WhiteBalanceCorrection" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "Fleshtone_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "Fleshtone" /t REG_BINARY /d "350030000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "ColorVibrance_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "ColorVibrance" /t REG_BINARY /d "340030000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "Detail_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "Detail" /t REG_BINARY /d "310030000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "Denoise_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "Denoise" /t REG_BINARY /d "360034000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "TrueWhite" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "OvlTheaterMode" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "StaticGamma" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1 
reg add "%radeon_key%\UMD\DXVA" /v "InternetVideo" /t REG_BINARY /d "30000000" /f > nul 2>&1 
reg add "%radeon_key%" /v "Main3D_DEF" /t REG_SZ /d "1" /f > nul 2>&1 
reg add "%radeon_key%" /v "Main3D" /t REG_BINARY /d "3100" /f > nul 2>&1 
reg add "%radeon_key%" /v "DisableDMACopy" /t REG_DWORD /d "1" /f > nul 2>&1 
reg add "%radeon_key%" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f > nul 2>&1 
reg add "%radeon_key%" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f > nul 2>&1 
reg add "%radeon_key%" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f > nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdwddmg" /v "ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdfendr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdfendrmgr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1 
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1 
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_DWORD /d 100 /f 
reg add "HKCU\Control Panel\Desktop" /v "MouseHoverTime" /t REG_SZ /d 10 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d 0 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d 0 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d 0 /f 
bcdedit /set disabledynamictick yes 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "RefsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "MaxQueuedBuffers" /t REG_DWORD /d 2 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "UseMachineCheck" /t REG_DWORD /d 0 /f 
reg add "%radeon_key%" /v "3D_Refresh_Rate_Override_DEF" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "3to2Pulldown_NA" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "AAF_NA" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "Adaptive De-interlacing" /t Reg_DWORD /d "1" /f >nul 2>&1 
reg add "%radeon_key%" /v "AllowRSOverlay" /t Reg_SZ /d "false" /f >nul 2>&1 
reg add "%radeon_key%" /v "AllowSkins" /t Reg_SZ /d "false" /f >nul 2>&1 
reg add "%radeon_key%" /v "AllowSnapshot" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "AllowSubscription" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "AntiAlias_NA" /t Reg_SZ /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "AreaAniso_NA" /t Reg_SZ /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "ASTT_NA" /t Reg_SZ /d "0" /f >nul 2>&1 
echo Creating a temporary .reg file...
set "regfile=%TEMP%\afd_tuning.reg" 
> "%regfile%" echo Windows Registry Editor Version 5.00 
>> "%regfile%" echo. 
>> "%regfile%" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters] 
>> "%regfile%" echo "BufferAlignment"=dword:00000001 
>> "%regfile%" echo "DefaultReceiveWindow"=dword:00040000 
>> "%regfile%" echo "DefaultSendWindow"=dword:00040000 
>> "%regfile%" echo "DisableAddressSharing"=dword:00000001 
>> "%regfile%" echo "DisableChainedReceive"=dword:00000001 
>> "%regfile%" echo "DoNotHoldNICBuffers"=dword:00000001 
>> "%regfile%" echo "DynamicSendBufferDisable"=dword:00000001 
>> "%regfile%" echo "FastSendDatagramThreshold"=dword:00000400 
>> "%regfile%" echo "FastCopyReceiveThreshold"=dword:00000400 
>> "%regfile%" echo "IgnoreOrderlyRelease"=dword:00000001 
>> "%regfile%" echo "IgnorePushBitOnReceives"=dword:00000001 
echo. 
echo Import into Registry... 
reg import "%regfile%" 
if %errorlevel% neq 0 ( 
    echo Error importing .reg file. 
    pause 
    exit /b 1 
)  
reg add "%radeon_key%" /v "AutoColorDepthReduction_NA" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "DisableSAMUPowerGating" /t Reg_DWORD /d "1" /f >nul 2>&1 
reg add "%radeon_key%" /v "DisableUVDPowerGatingDynamic" /t Reg_DWORD /d "1" /f >nul 2>&1 
reg add "%radeon_key%" /v "DisableVCEPowerGating" /t Reg_DWORD /d "1" /f >nul 2>&1 
reg add "%radeon_key%" /v "EnableAspmL0s" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "EnableAspmL1" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "EnableUlps" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "EnableUlps_NA" /t Reg_SZ /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "KMD_DeLagEnabled" /t Reg_DWORD /d "1" /f >nul 2>&1 
reg add "%radeon_key%" /v "KMD_FRTEnabled" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "DisableDMACopy" /t Reg_DWORD /d "1" /f >nul 2>&1 
reg add "%radeon_key%" /v "DisableBlockWrite" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "StutterMode" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "EnableUlps" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "PP_SclkDeepSleepDisable" /t Reg_DWORD /d "1" /f >nul 2>&1 
reg add "%radeon_key%" /v "PP_ThermalAutoThrottlingEnable" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%" /v "DisableDrmdmaPowerGating" /t Reg_DWORD /d "1" /f >nul 2>&1 
reg add "%radeon_key%" /v "KMD_EnableComputePreemption" /t Reg_DWORD /d "0" /f >nul 2>&1 
reg add "%radeon_key%\UMD" /v "Main3D_DEF" /t Reg_SZ /d "1" /f >nul 2>&1 
reg add "%radeon_key%\UMD" /v "Main3D" /t Reg_BINARY /d "3100" /f >nul 2>&1 
reg add "%radeon_key%\UMD" /v "FlipQueueSize" /t Reg_BINARY /d "3100" /f >nul 2>&1 
reg add "%radeon_key%\UMD" /v "ShaderCache" /t Reg_BINARY /d "3200" /f >nul 2>&1 
reg add "%radeon_key%\UMD" /v "Tessellation_OPTION" /t Reg_BINARY /d "3200" /f >nul 2>&1 
reg add "%radeon_key%\UMD" /v "Tessellation" /t Reg_BINARY /d "3100" /f >nul 2>&1 
reg add "%radeon_key%\UMD" /v "VSyncControl" /t Reg_BINARY /d "3000" /f >nul 2>&1 
reg add "%radeon_key%\UMD" /v "TFQ" /t Reg_BINARY /d "3200" /f >nul 2>&1 
reg add "%radeon_key%\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t Reg_BINARY /d "0100000001000000" /f >nul 2>&1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 16 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverStatus" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "DynamicThrottlePolicy" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EcoMode" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 100 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 100 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverPolicy" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Attributes" /t REG_DWORD /d 2 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Affinity" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Background Only" /t REG_SZ /d "False" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Clock Rate" /t REG_DWORD /d 65536 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "GPU Priority" /t REG_DWORD /d 8 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Priority" /t REG_DWORD /d 6 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "BackgroundPriority" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Latency Sensitive" /t REG_SZ /d "True" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableFrameBufferCompression" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableGpuBoost" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace" /v "AllowWindowsInkWorkspace" /t REG_DWORD /d 0 /f 
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d 3 /f
reg add "%radeon_key%" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "InterruptSteeringDisabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /v "IoLatencyCap" /t REG_DWORD /d "20" /f 
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /f /d 1 
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v ThreadDpcEnable /t REG_DWORD /f /d 0 
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag" /v "KMD_EnableReBarForLegacyASIC" /f >nul 2>&1 
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag" /v "KMD_RebarControlMode" /f >nul 2>&1 
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag" /v "KMD_RebarControlSupport" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\DVR" /v "DvrEnabled" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\DVR" /v "InstantReplayEnable" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\DVR" /v "InGameReplayEnabled" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\DVR" /v "InstantGifEnabled" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\CN" /v "AUEP" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\CN" /v "RSX_AUEPStatus" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\CN" /v "WizardProfile" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\CN" /v "BuildType" /f >nul 2>&1 
reg delete "HKCU\Software\AMD\CN" /v "VirtualSuperResolution_AlreadyNotified" /f >nul 2>&1 
chcp 65001 >nul 2>&1 
echo Optimization Completed 
echo. 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║          AMD GPU tweaks completed            ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
pause 
goto gpu_menu 
:intel_gpu 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║         INTEL GPU OPTIMIZATION MENU          ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║  - Enabling Game Mode                        ║ 
echo                                     ║  - Disabling VSync                           ║ 
echo                                     ║  - Adjusting scaling settings                ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
timeout /t 2 >nul 
echo. 
echo Operating system in use:
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" 
ver 
echo --------------------------------------------- 
echo. 
echo Sto applicando i tweak...  
echo. 
echo 
chcp 1251 >nul
@echo off 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CoalescingTimerDisabled /t REG_DWORD /d 1 /f
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Idle Maintenance" /Disable
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /Disable
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleResiliency /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v IdleLatency /t REG_DWORD /d 1 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PowerSettingEnable" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "ThreadDpcEnable" /t REG_DWORD /d 1 /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPREFERENCE 1 
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUBOOST 0 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ForceDirectFlip" /t REG_DWORD /d 1 /f >nul 2>&1
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPOWER 100 
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPREFERENCE 1 
reg add "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d 1024 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "IncreaseFixedSegment" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GpuSCCOn" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GpuAutoAGPM" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerPMstates" /t REG_DWORD /d 0 /f
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUBOOST 0 
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPOWER 100 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverStatus" /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DynamicThrottlePolicy" /t REG_DWORD /d 0 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "FlipModelOverride" /t REG_SZ /d "1" /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "SwapEffect" /t REG_SZ /d "2" /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "MaxQueuedBuffers" /t REG_DWORD /d 2 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "UseMachineCheck" /t REG_DWORD /d 0 /f 
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\00" /v EnableVSync /t REG_DWORD /d 0 /f 
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Configuration\00\00" /v EnableVSync /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "DisableIndependentFlip" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d 1 /f 
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_DWORD /d 100 /f 
reg add "HKCU\Control Panel\Desktop" /v "MouseHoverTime" /t REG_SZ /d 10 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d 0 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d 0 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f 
reg delete "HKCU\Software\Microsoft\Windows\DWM" /v "UseMachineCheck" /f >nul 2>&1 
reg delete "HKCU\Software\Microsoft\Windows\DWM" /v "MaxQueuedBuffers" /f >nul 2>&1 
reg delete "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "DisableIndependentFlip" /f >nul 2>&1 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "UseMachineCheck" /t REG_DWORD /d 0 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "MaxQueuedBuffers" /t REG_DWORD /d 2 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "DisableIndependentFlip" /t REG_DWORD /d 1 /f 
echo Creating a temporary .reg file... 
set "regfile=%TEMP%\afd_tuning.reg" 
> "%regfile%" echo Windows Registry Editor Version 5.00 
>> "%regfile%" echo. 
>> "%regfile%" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters] 
>> "%regfile%" echo "BufferAlignment"=dword:00000001 
>> "%regfile%" echo "DefaultReceiveWindow"=dword:00040000 
>> "%regfile%" echo "DefaultSendWindow"=dword:00040000 
>> "%regfile%" echo "DisableAddressSharing"=dword:00000001 
>> "%regfile%" echo "DisableChainedReceive"=dword:00000001 
>> "%regfile%" echo "DoNotHoldNICBuffers"=dword:00000001 
>> "%regfile%" echo "DynamicSendBufferDisable"=dword:00000001 
>> "%regfile%" echo "FastSendDatagramThreshold"=dword:00000400 
>> "%regfile%" echo "FastCopyReceiveThreshold"=dword:00000400 
>> "%regfile%" echo "IgnoreOrderlyRelease"=dword:00000001 
>> "%regfile%" echo "IgnorePushBitOnReceives"=dword:00000001 
echo. 
echo Import into Registry... 
reg import "%regfile%" 
if %errorlevel% neq 0 ( 
    echo Error importing .reg file. 
    pause 
    exit /b 1 
) 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EcoMode" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 100 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 100 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverPolicy" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Attributes" /t REG_DWORD /d 2 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Affinity" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Background Only" /t REG_SZ /d "False" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Clock Rate" /t REG_DWORD /d 65536 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "GPU Priority" /t REG_DWORD /d 8 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Priority" /t REG_DWORD /d 6 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "BackgroundPriority" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Latency Sensitive" /t REG_SZ /d "True" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableFrameBufferCompression" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableGpuBoost" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace" /v "AllowWindowsInkWorkspace" /t REG_DWORD /d 0 /f 
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d 1 /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "InterruptSteeringDisabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /v "IoLatencyCap" /t REG_DWORD /d "20" /f 
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /f /d 1 
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v ThreadDpcEnable /t REG_DWORD /f /d 0
chcp 65001 >nul 2>&1    
echo Optimization Completed
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║        Intel GPU tweaks completed.           ║
echo                                     ╚══════════════════════════════════════════════╝
echo. 
pause 
goto gpu_menu 
:nvidia_aggressive 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║       NVIDIA AGGRESSIVE OPTIMIZATION         ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣
echo                                     ║                                              ║ 
echo                                     ║  - Force Max Power Mode                      ║
echo                                     ║  - Disable VSync                             ║
echo                                     ║  - Enable Threaded Optimization              ║
echo                                     ║  - Force Extreme Performance mode            ║
echo                                     ║  - Extreme Driver Optimization               ║
echo                                     ║  - Disable GPU Limitations                   ║
echo                                     ║                                              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
timeout /t 2 >nul     
echo. 
echo. 
echo Running Aggressive Tweak for NVIDIA GPUs... 
timeout /t 1 >nul 
chcp 1251 >nul 
echo Operating system in use: 
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" 
ver 
echo --------------------------------------------- 
timeout /t 5 >nul 
echo. 
echo Applying the tweaks...  
nvidia-smi -pm 1
fltmc >nul 2>&1 || ( 
    echo Administrator privileges are required. 
    PowerShell Start -Verb RunAs '%0' 2> nul || ( 
        echo Right-click on the script and select "Run as administrator". 
        pause & exit 1 
    ) 
    exit 0 
) 
if exist "%ProgramFiles%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL" ( 
    rundll32 "%PROGRAMFILES%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL",UninstallPackage NvTelemetryContainer 
    rundll32 "%PROGRAMFILES%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL",UninstallPackage NvTelemetry 
) 
del /s %SystemRoot%\System32\DriverStore\FileRepository\NvTelemetry*.dll 2>nul 
rmdir /s /q "%ProgramFiles(x86)%\NVIDIA Corporation\NvTelemetry" 2>nul 
rmdir /s /q "%ProgramFiles%\NVIDIA Corporation\NvTelemetry" 2>nul 
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci" /v "EnableSelectiveSuspend" /t REG_DWORD /d 0 /f
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPREFERENCE 1 >nul 2>&1
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUBOOST 0 >nul 2>&1
powercfg /setacvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPOWER 100 >nul 2>&1
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPREFERENCE 1 >nul 2>&1
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUBOOST 1 >nul 2>&1
powercfg /setdcvalueindex SCHEME_CURRENT SUB_GRAPHICS GPUPOWER 100 >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "EnableGpuHealthCheck" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "GPUPerformanceScale" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d 10 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d 10 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ForceDirectFlip" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableGfxPreemption" /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableComputePreemption" /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisablePreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisableCudaContextPreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "GPUPerformanceScale" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /t REG_DWORD /d 15 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d 31 /f
for /f "tokens=*" %%c in (
	'reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /f "Nvidia" /t REG_SZ /s 2^>nul ^| findstr /l "}"'
) do (
	set nvidia_key=%%c
)
reg add "%nvidia_key%" /v "KMD_EnableReBarForLegacyASIC" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "KMD_RebarControlMode" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "KMD_RebarControlSupport" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "EnableRTX20Optimizations" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RTXPerformanceMode" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGI_HonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d 10000 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "OverlayTestMode" /t REG_DWORD /d 5 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v "CompositionPolicy" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "CoalescingTimerDisabled" /t REG_DWORD /d 1 /f
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Idle Maintenance" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\TaskScheduler\Maintenance Configurator" /Disable  >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v "IdleResiliency" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v "IdleLatency" /t REG_DWORD /d 1 /f
nvidia-smi -acp 0
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d 8 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d 10 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d 3 /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /t REG_DWORD /d "15" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "TurboQueue" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableVIASBA" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableIrongateSBA" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableAGPSBA" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableAGPFW" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "FastVram" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "ShadowFB" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "TexturePrecache" /t REG_DWORD /d "1" /f >NUL 2>&1 
powershell -Command "Checkpoint-Computer -Description 'Pre-Optimization-NVIDIA' -RestorePointType MODIFY_SETTINGS" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "Attributes" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "Attributes" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\36687a9a-68a4-4c0a-b5d7-8c7d22da9a0a" /v "Attributes" /t REG_DWORD /d 2 /f >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 4 >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100 >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100 >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BD-PROCHOT Suppression Service" /v "Start" /t REG_DWORD /d 1 /f
powercfg -setactive scheme_current >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PCIEXPRESS ASPM 0 >nul 2>&1
powercfg -setdcvalueindex SCHEME_CURRENT SUB_PCIEXPRESS ASPM 0 >nul 2>&1
powercfg -setactive SCHEME_CURRENT >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "Attributes" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\ea062031-0e34-4ff1-9b6d-eb1059334028" /v "Attributes" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HeteroPolicy" /t REG_DWORD /d 0 /f >nul 2>&1
del /q "%localappdata%\NVIDIA\*" /s >nul 2>&1
del /q "%ProgramData%\NVIDIA Corporation\Drs\nvdrsdb0.bin" >nul 2>&1
del /q "%ProgramData%\NVIDIA Corporation\Drs\nvdrsdb1.bin" >nul 2>&1
powercfg -h off >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d 1 /f
fsutil usn deletejournal /d c:  >nul 2>&1
fsutil resource setautoreset true c:\  >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableEncryption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d 64512 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d 64512 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d 16384 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicBacklogGrowthDelta" /t REG_DWORD /d 10 /f
reg add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulationOnly" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "LoadDebugRuntime" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "4096" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableBlurBehind" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "OGL_ThreadControl" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "OGL_Force16BitZWin" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableDirtyRectangles" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitTime" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "MessageInterruptCheck" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisablePreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisableCudaContextPreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d 60 /f
reg add "%nvidia_key%" /v "MessageSignaledInterrupts" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "MSISupported" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "ShaderCacheSize" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "RmUnusedPcieL1" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "RmDisableInforomNvlink" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisablePowerManagement" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "RmGpuOperationMode" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "Attributes" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "NoInterference" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "ForcePState" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "GPUPerformanceScale" /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisableDeltaColorCompression" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisableVTC" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "MaxContexts" /t REG_DWORD /d 1024 /f
reg add "HKLM\SOFTWARE\Microsoft\Direct3D" /v "ContextReordering" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisablePreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableYield" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "UseSCGForRender" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "DisableShaderDiskCache" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "%nvidia_key%" /v "PerfLevelSrc" /t REG_DWORD /d 0x3333 /f >nul 2>&1
reg add "%nvidia_key%" /v "EnablePowerManagement" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "%nvidia_key%" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "%nvidia_key%" /v "PerfLevelSrc" /t REG_DWORD /d 0x3333 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "TimerResolution" /t REG_DWORD /d 5000 /f >nul 2>&1
sc config "TrkWks" start= disabled >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "FrameQueueMode" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MaxFrameLatency" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\D3DShaderCache" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Microsoft-Windows-Direct3DShaderCache" /v "Start" /t REG_DWORD /d 0 /f
del /s /q "%localappdata%\NVIDIA\DXCache\*.*" >nul 2>&1
del /s /q "%localappdata%\NVIDIA\GLCache\*.*" >nul 2>&1
del /s /q "%localappdata%\AMD\DxCache\*.*" >nul 2>&1
del /s /q "%localappdata%\CrashDumps\*.*" >nul 2>&1
del /s /q "%localappdata%\D3DSCache\*.*" >nul 2>&1
for /d %%D in ("%localappdata%\NVIDIA\DXCache" "%localappdata%\NVIDIA\GLCache" "%localappdata%\AMD\DxCache" "%localappdata%\CrashDumps" "%localappdata%\D3DSCache") do (
  if exist "%%D" rd /s /q "%%D"
)
sc config "WSearch" start= disabled >nul 2>&1
sc stop "WSearch" >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v GameDVR_DXGI_HDR_Enable /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "PerfLevelSrc" /t REG_DWORD /d 0x3333 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "EnableGR535" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Wdf\Wdf01000" /v "IdlePollingTimeout" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Wdf\Wdf01000" /v "IdleTimeout" /t REG_DWORD /d 0 /f >nul 2>&1
powercfg -h off >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d 0 /f >nul 2>&1
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh int tcp set global rss=enabled >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMIN 100 >nul 2>&1
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100 >nul 2>&1
del /q "%localappdata%\NVIDIA\DXCache\*" >nul 2>&1
del /q "%localappdata%\NVIDIA\GLCache\*" >nul 2>&1
del /q "%ProgramData%\NVIDIA Corporation\Drs\*.bin" >nul 2>&1
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableFastCopyPixels" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "PowerMizerDefault" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "PowerMizerLevel" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "VsyncBehavior" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "VsyncVRREnable" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "TextureFilteringQuality" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "TextureFilteringTrilinear" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "ThreadedOptimization" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "MaxThreads" /t REG_DWORD /d "16" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "ShaderCacheSize" /t REG_DWORD /d "4294967295" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "ShaderDiskCache" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "FrameRateLimiter" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "FrameRateLimiter2" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "MaxPrerenderedFrames" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "VirtualPreRenderedFrames" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "PowerSaving" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "AdaptivePower" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "MemoryAllocationPolicy" /t REG_DWORD /d "2" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "UMAFrameBufferSize" /t REG_DWORD /d "4294967295" /f
devcon restart "PCI\VEN_10DE*" >nul 2>&1
sc stop nvlddmkm >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f >nul
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "VsyncBehavior" /t REG_DWORD /d "0" /f >nul
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "FrameRateLimiter" /t REG_DWORD /d "0" /f >nul
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "MaxPrerenderedFrames" /t REG_DWORD /d "0" /f >nul
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "PowerMizerLevel" /t REG_DWORD /d "1" /f >nul
sc config "WSearch" start= disabled >nul 2>&1
sc stop "WSearch" >nul 2>&1
powercfg -h off >nul
del /q "%localappdata%\NVIDIA\DXCache\*" >nul 2>&1
del /q "%localappdata%\NVIDIA\GLCache\*" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 16 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f >nul
sc start nvlddmkm >nul 2>&1
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "ShaderCacheSize" /t REG_DWORD /d 4294967295 /f
reg add "%nvidia_key%" /v "TextureCacheSize" /t REG_DWORD /d 1024 /f
reg add "%nvidia_key%" /v "TextureFiltering" /t REG_DWORD /d 16 /f
reg add "%nvidia_key%" /v "AnisotropicLevel" /t REG_DWORD /d 16 /f
reg add "%nvidia_key%" /v "ThermalPolicy" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "PerfForced" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "PowerLimit" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "DisablePowerLimit" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "MemoryTimingLevel" /t REG_DWORD /d 4 /f
reg add "%nvidia_key%" /v "MemoryPerformanceLevel" /t REG_DWORD /d 3 /f
reg add "%nvidia_key%" /v "EnableMemoryCompression" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "MemoryCompression" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PreemptionLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GpuPriority" /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "SchedulePolicy" /t REG_DWORD /d 4 /f
reg add "%nvidia_key%" /v "LinkSpeed" /t REG_DWORD /d 4 /f
reg add "%nvidia_key%" /v "LinkWidth" /t REG_DWORD /d 16 /f
reg add "%nvidia_key%" /v "EnableAspm" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "L1LowPower" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "EnableRTX20Optimizations" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisableDSC" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DLSSQuality" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "RTXPerformanceMode" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "MultiGPUPowerSaving" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "SLIEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "LODBias" /t REG_DWORD /d "-3" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "NegativeLODBias" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "AnisotropicFiltering" /t REG_DWORD /d "16" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "AnisotropicFilteringOpt" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "SyncToVblank" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "TearingControl" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "RenderAheadLimit" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "MaxRenderAhead" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "CUDAForceWDDM" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "CUDAPreferWDDM" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "MemoryCompression" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "ZBufferCompression" /t REG_DWORD /d "0" /f
nvidia-smi -i 0 -acp 1
nvidia-smi -i 0 -ac 250,2500
nvidia-smi -i 0 -pl 125
nvidia-smi -i 0 -pm 1
nvidia-smi -i 0 -cuda 1
nvidia-smi -i 0 -cuda-force-p2-state 1
nvidia-smi -i 0 -ecc 0
nvidia-smi -i 0 -ecc-error-count 0
nvidia-smi -i 0 -voltage-curve 1.2,1.25,1.3
nvidia-smi -i 0 -pm 1
nvidia-smi -i 0 -acp 0
nvidia-smi -i 0 -pl 125
nvidia-smi -i 0 -dm 0 >nul 2>&1
nvidia-smi -i 0 -ac 2500,2500 >nul 2>&1
nvidia-smi -i 0 -auto-boost-default=0 >nul 2>&1
nvidia-smi -i 0 -auto-boost-permission=0 >nul 2>&1
nvidia-smi -i 0 -power-limit 0
nvidia-smi -i 0 -lgc 0
nvidia-smi -i 0 -ac 250,2500
nvidia-smi -i 0 -lmc 0
nvidia-smi -i 0 -pm 1
nvidia-smi -i 0 -ecc 0
nvidia-smi -i 0 -lgc 0
nvidia-smi -i 0 -lmc 0
nvidia-smi -pm 1 >nul
nvidia-smi -acp 0 >nul
nvidia-smi -lgc 0 >nul
nvidia-smi -i 0 -pl 125 >nul 2>&1
nvidia-smi -i 0 -acp 0 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d "60" /f > nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d "60" /f > nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f > nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisablePreemption" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableDirtyRectangles" /t REG_DWORD /d "1" /f > nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableModeChangeOffset" /t REG_DWORD /d "1" /f > nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "EnableBugcheckDisplay" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DisableMshybridNvsrSwitch" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "LogWarningEntries" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "LogPagingEntries" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "LogEventEntries" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "LogErrorEntries" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisablePreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "DisableCudaContextPreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "PeerMappingOverride" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableDirtyRectangles" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableModeChangeOffset" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d 0 /f
nvidia-smi -pm 1
nvidia-smi -acp 0
nvidia-smi --auto-boost-default=0
nvidia-smi --auto-boost-permission=0
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\ControlSet001\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f >NUL 2>&1 
for /f "tokens=*" %%c in (
	'reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /f "Nvidia" /t REG_SZ /s 2^>nul ^| findstr /l "}"'
) do (
	set nvidia_key=%%c
)
reg add "%nvidia_key%" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f 
reg add "%nvidia_key%" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerManagement" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnableAspm" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableGpuSafetyChecks" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MemoryTimingLevel" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "DisablePreemption" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "GPUPreemptionLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "ComputePreemption" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "PowerMizerLevelAC" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "PowerMizerLevel" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisableClockGating" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisableDynamicClockGating" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisableULPS" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "EnableFastCopyPixels" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "TexturePrecache" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "ShadowFB" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMPcieLinkSpeed" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMPcieLinkWidth" /t REG_DWORD /d 16 /f
reg add "%nvidia_key%" /v "LOWLATENCY" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "RMDisablePostL2Compression" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "MemoryCompression" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "ZBufferCompression" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /t REG_DWORD /d 15 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "NVIDIA Web Helper.exe" /f >nul 2>&1
sc config "NvTelemetryContainer" start= disabled >nul 2>&1
sc stop "NvTelemetryContainer" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Wdf\Wdf01000" /v "IdlePollingTimeout" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Wdf\Wdf01000" /v "IdleTimeout" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "PerfLevelSrc" /t REG_DWORD /d 0x3333 /f
reg add "%nvidia_key%" /v "PerformanceTableLevel" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableBugcheckDisplay" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "TdrLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "TdrDelay" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "TextureFilteringQuality" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "TextureFilteringTrilinear" /t REG_DWORD /d 0x00000001 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "AnisotropicFiltering" /t REG_DWORD /d 0x00000010 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "VsyncBehavior" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "FrameRateLimiter" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "MaxPrerenderedFrames" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "ShaderCacheSize" /t REG_DWORD /d 0xFFFFFFFF /f
reg add "HKCU\Software\NVIDIA Corporation\Global\NvControlPanel" /v "ShaderDiskCache" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "ShaderCache" /t REG_DWORD /d 1 /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnablePreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "GPUPreemptionLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ComputePreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PreemptionLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GpuPriority" /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "SchedulePolicy" /t REG_DWORD /d 4 /f
reg add "%nvidia_key%" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "PerfLevelSrc" /t REG_DWORD /d 0x3333 /f
reg add "%nvidia_key%" /v "EnablePowerManagement" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "MemoryTimingLevel" /t REG_DWORD /d 4 /f
reg add "%nvidia_key%" /v "LinkSpeed" /t REG_DWORD /d 4 /f
reg add "%nvidia_key%" /v "LinkWidth" /t REG_DWORD /d 16 /f
reg add "%nvidia_key%" /v "EnableAspm" /t REG_DWORD /d 0 /f
powercfg -setacvalueindex SCHEME_CURRENT SUB_PCIEXPRESS ASPM 0
powercfg -setdcvalueindex SCHEME_CURRENT SUB_PCIEXPRESS ASPM 0
reg add "%nvidia_key%" /v "PowerMizerLevel" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "PowerMizerLevelAC" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisablePowerManagement" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "DisableClockGating" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d 31 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /t REG_DWORD /d 15 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d 60 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "TdrLevel" /t REG_DWORD /d 0 /f
nvidia-smi -i 0 -pm 1
nvidia-smi -i 0 -acp 0
nvidia-smi -i 0 -lgc 0
nvidia-smi -i 0 -pl 125
nvidia-smi -i 0 -ac 2500,2500
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "Acceleration.Level" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "FeatureControl" /t REG_DWORD /d "4" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmCacheLoc" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RMGpuId" /t REG_DWORD /d "256" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "TCCSupported" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "TrackResetEngine" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "UseBestResolution" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg add "%nvidia_key%" /v "RpL1_32Support" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "EnableL1LowPower" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "EnableALPM" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "EnablePowerManagement" /t REG_DWORD /d 0 /f
reg add "%nvidia_key%" /v "DisablePowerManagement" /t REG_DWORD /d 1 /f
reg add "%nvidia_key%" /v "MemoryTimingLevel" /t REG_DWORD /d 4 /f
reg add "%nvidia_key%" /v "PerformanceMemoryTiming" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableEnergyEstimation" /t REG_DWORD /d 1 /f
powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 4
powercfg -setacvalueindex scheme_current sub_processor LATENCYHINTUNPARKED 0
powercfg -setacvalueindex scheme_current sub_processor LATENCYHINTPERF 0
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "CStateOptions" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IoPriority" /t REG_DWORD /d 3 /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PlatformSupportMiracast" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMPcieLinkSpeed" /t REG_DWORD /d "4" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKCU\Software\NVIDIA Corporation\NvTray" /v "StartOnLogin" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableGR535" /t REG_DWORD /d "0" /f >NUL 2>&1 
C:\Windows\Temp\nvidiaProfileInspector.exe -SilentImport C:\Windows\Temp\NVIDIA.nip >NUL 2>&1 
reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" /v "SendTelemetryData" /t REG_DWORD /d 0 /f 
reg add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_DWORD /d 100 /f 
reg add "HKCU\Control Panel\Desktop" /v "MouseHoverTime" /t REG_SZ /d 10 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d 0 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d 0 /f 
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "RefsDisableLastAccessUpdate" /t REG_DWORD /d 1 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "MaxQueuedBuffers" /t REG_DWORD /d 2 /f 
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "UseMachineCheck" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key%" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "PerfLevelSrc" /t REG_DWORD /d 8754 /f 
reg add "%nvidia_key%" /v "PowerMizerEnable" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key%" /v "PowerMizerLevel" /t REG_DWORD /d 3 /f 
reg add "%nvidia_key%" /v "PowerMizerLevelAC" /t REG_DWORD /d 3 /f 
reg add "%nvidia_key%" /v "EnableMSI" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "DisableClockGating" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "DisableDynamicClockGating" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "DisableULPS" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "PreferredPerformanceMode" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "D3PCLatency" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "F1TransitionLatency" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "LOWLATENCY" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "Node3DLowLatency" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "PciLatencyTimerControl" /t REG_DWORD /d 32 /f 
reg add "%nvidia_key%" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RmGspcMaxFtuS" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RmGspcMinFtuS" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RmGspcPerioduS" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key%" /v "RMHdcpKeyglobZero" /t REG_DWORD /d 1 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvDriverUpdateCheckDaily" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvNodeLauncher" /f >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "NVIDIA Web Helper.exe" /f >nul 2>&1
taskkill /f /im nvtelemetrycontainer.exe >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v OverlayTestMode /t REG_DWORD /d 5 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\DWM" /v SharedSection /t REG_SZ /d "1024,20480,768" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v AlwaysUnloadDll /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "IommuUsage" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "SwapchainWaitTime" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableHangChecks" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisableWddm2Checks" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "VideoEvent_EnableLatencyCheck" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{GUID_TUA_SCHEDA_RETE}" /v "TcpAckFrequency" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{GUID_TUA_SCHEDA_RETE}" /v "TCPNoDelay" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d 0 /f
bcdedit /set disabledynamictick yes
bcdedit /deletevalue useplatformclock
bcdedit /set useplatformtick yes
bcdedit /set hypervisorlaunchtype off
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "DmaRemappingCompatible" /t REG_DWORD /d 0 /f
sc config "NvLst" start= disabled >nul 2>&1
sc stop "NvLst" >nul 2>&1
del /q /s "%USERPROFILE%\AppData\LocalLow\Nvidia\PerDriverVersion\DXCache\*" >nul 2>&1
del /q /s "%USERPROFILE%\AppData\Local\Nvidia\DXCache\*" >nul 2>&1
sc stop NvTelemetryContainer >nul 2>&1
sc config NvTelemetryContainer start= disabled >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DmaRemappingEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "DisableLogging" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global" /v "EnableLogging" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\NVIDIA Corporation\NvContainer\NvAppTimestamps" /v "NvDriverUpdateNotificationTime" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\NVIDIA Corporation\NvContainer\NvAppTimestamps" /v "NvDriverUpdateNotificationPopupShownTime" /t REG_DWORD /d 0 /f
setlocal 
echo Creating a temporary .reg file... 
set "regfile=%TEMP%\afd_tuning.reg" 
> "%regfile%" echo Windows Registry Editor Version 5.00 
>> "%regfile%" echo. 
>> "%regfile%" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters] 
>> "%regfile%" echo "BufferAlignment"=dword:00000001 
>> "%regfile%" echo "DefaultReceiveWindow"=dword:00040000 
>> "%regfile%" echo "DefaultSendWindow"=dword:00040000 
>> "%regfile%" echo "DisableAddressSharing"=dword:00000001 
>> "%regfile%" echo "DisableChainedReceive"=dword:00000001 
>> "%regfile%" echo "DoNotHoldNICBuffers"=dword:00000001 
>> "%regfile%" echo "DynamicSendBufferDisable"=dword:00000001 
>> "%regfile%" echo "FastSendDatagramThreshold"=dword:00000400 
>> "%regfile%" echo "FastCopyReceiveThreshold"=dword:00000400 
>> "%regfile%" echo "IgnoreOrderlyRelease"=dword:00000001 
>> "%regfile%" echo "IgnorePushBitOnReceives"=dword:00000001 
echo. 
echo Import into Registry... 
reg import "%regfile%" 
if %errorlevel% neq 0 ( 
    echo Error importing .reg file. 
    pause 
    exit /b 1 
) 
echo. 
echo Temporary file cleaning... 
del "%regfile%" 
for /f "tokens=*" %%c in (
	'reg query "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /f "Nvidia" /t REG_SZ /s 2^>nul ^| findstr /l "}"'
) do (
	set nvidia_key2=%%c
)
reg add "%nvidia_key2%" /v "RmClkPowerOffDramPllWhenUnused" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key2%" /v "RMDisableGpuASPMFlags" /t REG_DWORD /d 3 /f 
reg add "%nvidia_key2%" /v "RMDisablePerIntrDPCQueueing" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key2%" /v "RMGC6Feature" /t REG_DWORD /d 11185050 /f 
reg add "%nvidia_key2%" /v "RMElpgStateOnInit" /t REG_DWORD /d 3 /f 
reg add "%nvidia_key2%" /v "RMDisableOptimalPowerForPadlinkPll" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key2%" /v "RMPcieLtrOverride" /t REG_DWORD /d 2 /f 
reg add "%nvidia_key2%" /v "RmMIONoPowerOff" /t REG_DWORD /d 1 /f 
reg add "%nvidia_key2%" /v "RMGC6Parameters" /t REG_DWORD /d 85 /f 
reg add "%nvidia_key2%" /v "TCCSupported" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key2%" /v "PruningMode" /t REG_DWORD /d 0 /f 
reg add "%nvidia_key2%" /v "RMFspg" /t REG_DWORD /d 15 /f 
reg add "%nvidia_key2%" /v "RMGpuId" /t REG_DWORD /d 256 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverStatus" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "DynamicThrottlePolicy" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EcoMode" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 100 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 100 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverPolicy" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Attributes" /t REG_DWORD /d 2 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Affinity" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Background Only" /t REG_SZ /d "False" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Clock Rate" /t REG_DWORD /d 65536 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "GPU Priority" /t REG_DWORD /d 8 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Priority" /t REG_DWORD /d 6 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "BackgroundPriority" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\75b0ae3f-bce0-45a7-8c89-c9611c25e100" /v "Latency Sensitive" /t REG_SZ /d "True" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableFrameBufferCompression" /t REG_DWORD /d 0 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableGpuBoost" /t REG_DWORD /d 1 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsInkWorkspace" /v "AllowWindowsInkWorkspace" /t REG_DWORD /d 0 /f 
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d 1 /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
reg add "%nvidia_key%" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "InterruptSteeringDisabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /v "IoLatencyCap" /t REG_DWORD /d "20" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /f /d 1 
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "ThreadDpcEnable" /t REG_DWORD /f /d 0 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "TurboQueue" /t REG_DWORD /d "1" /f 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "FastVram" /t REG_DWORD /d "1" /f 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "TexturePrecache" /t REG_DWORD /d "1" /f 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "EnableFastCopyPixels" /t REG_DWORD /d "1" /f 
reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\System" /v "ShadowFB" /t REG_DWORD /d "1" /f 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /f >NUL 2>&1 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl\Parameters" /v "ThreadPriority" /f >NUL 2>&1 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnablePreemption" /f >NUL 2>&1 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "GPUPreemptionLevel" /f >NUL 2>&1 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "ComputePreemption" /f >NUL 2>&1 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidGfxPreemptionVGPU" /f >NUL 2>&1 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableMidBufferPreemptionForHighTdrTimeout" /f >NUL 2>&1 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableAsyncMidBufferPreemption" /f >NUL 2>&1 
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableSCGMidBufferPreemption" /f >NUL 2>&1 
powercfg -setactive SCHEME_CURRENT >nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnablePreemption" /t REG_DWORD /d "0" /f >NUL 2>&1 
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
gpupdate /force
powercfg -setactive scheme_current
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "DisableDynamicPstate" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NoDaemon" /t REG_DWORD /d 1 /f 
echo Tweaks applied successfully 
chcp 65001 >nul 2>&1
echo.
echo Note: If you notice bugs or FPS drops while using the Aggressive version, run the Safe tweak again. This will remove the changes applied by the Aggressive mode while keeping the safe optimizations. A system restart is required to apply changes.
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║      Applied aggressive gaming tweaks!       ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
pause 
goto nvidia_gpu

echo. 
pause 
goto nvidia_gpu 
:custom_debloat
chcp 1251 
cls
@REM :: ----------------------------------------------------------
@REM :: ----------Disable "Windows Media Player" feature----------
@REM :: ----------------------------------------------------------
@REM echo --- Disable "Windows Media Player" feature
@REM :: Disable the "WindowsMediaPlayer" feature
@REM PowerShell -ExecutionPolicy Unrestricted -Command "$featureName = 'WindowsMediaPlayer'; $feature = Get-WindowsOptionalFeature -FeatureName "^""$featureName"^"" -Online -ErrorAction Stop; if (-Not $feature) { Write-Output "^""Skipping: The feature `"^""$featureName`"^"" is not found. No action required."^""; Exit 0; }; if ($feature.State -eq [Microsoft.Dism.Commands.FeatureState]::Disabled) { Write-Output "^""Skipping: The feature `"^""$featureName`"^"" is already disabled. No action required."^""; Exit 0; }; try { Write-Host "^""Disabling feature: `"^""$featureName`"^""."^""; Disable-WindowsOptionalFeature -FeatureName "^""$featureName"^"" -Online -NoRestart -LogLevel ([Microsoft.Dism.Commands.LogLevel]::Errors) -WarningAction SilentlyContinue -ErrorAction Stop | Out-Null; } catch { Write-Error "^""Failed to disable the feature `"^""$featureName`"^"": $($_.Exception.Message)"^""; Exit 1; }; Write-Output "^""Successfully disabled the feature `"^""$featureName`"^""."^""; Exit 0"
@REM :: ----------------------------------------------------------


@REM :: ----------------------------------------------------------
@REM :: -------------Disable "Windows Search" feature-------------
@REM :: ----------------------------------------------------------
@REM echo --- Disable "Windows Search" feature
@REM :: Disable the "SearchEngine-Client-Package" feature
@REM PowerShell -ExecutionPolicy Unrestricted -Command "$featureName = 'SearchEngine-Client-Package'; $feature = Get-WindowsOptionalFeature -FeatureName "^""$featureName"^"" -Online -ErrorAction Stop; if (-Not $feature) { Write-Output "^""Skipping: The feature `"^""$featureName`"^"" is not found. No action required."^""; Exit 0; }; if ($feature.State -eq [Microsoft.Dism.Commands.FeatureState]::Disabled) { Write-Output "^""Skipping: The feature `"^""$featureName`"^"" is already disabled. No action required."^""; Exit 0; }; try { Write-Host "^""Disabling feature: `"^""$featureName`"^""."^""; Disable-WindowsOptionalFeature -FeatureName "^""$featureName"^"" -Online -NoRestart -LogLevel ([Microsoft.Dism.Commands.LogLevel]::Errors) -WarningAction SilentlyContinue -ErrorAction Stop | Out-Null; } catch { Write-Error "^""Failed to disable the feature `"^""$featureName`"^"": $($_.Exception.Message)"^""; Exit 1; }; Write-Output "^""Successfully disabled the feature `"^""$featureName`"^""."^""; Exit 0"
@REM :: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Block Edge experimentation hosts-------------
:: ----------------------------------------------------------
echo --- Block Edge experimentation hosts
:: Add hosts entries for config.edge.skype.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='config.edge.skype.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Block Spotlight ads and suggestions hosts---------
:: ----------------------------------------------------------
echo --- Block Spotlight ads and suggestions hosts
:: Add hosts entries for arc.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='arc.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for ris.api.iris.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='ris.api.iris.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for api.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='api.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for assets.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='assets.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for c.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='c.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for g.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='g.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for ntp.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='ntp.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for srtb.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='srtb.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for www.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='www.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for fd.api.iris.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='fd.api.iris.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for staticview.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='staticview.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for mucp.api.account.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='mucp.api.account.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for query.prod.cms.rt.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='query.prod.cms.rt.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Block telemetry and user experience hosts---------
:: ----------------------------------------------------------
echo --- Block telemetry and user experience hosts
:: Add hosts entries for functional.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='functional.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for browser.events.data.msn.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='browser.events.data.msn.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for self.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='self.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for v10.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='v10.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for v10c.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='v10c.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for us-v10c.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='us-v10c.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for eu-v10c.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='eu-v10c.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for v10.vortex-win.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='v10.vortex-win.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for vortex-win.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='vortex-win.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for telecommand.telemetry.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='telecommand.telemetry.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for www.telecommandsvc.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='www.telecommandsvc.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for umwatson.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='umwatson.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for watsonc.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='watsonc.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for eu-watsonc.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='eu-watsonc.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Block remote configuration sync hosts-----------
:: ----------------------------------------------------------
echo --- Block remote configuration sync hosts
:: Add hosts entries for settings-win.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='settings-win.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for settings.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='settings.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Minimize DISM "Reset Base" update data----------
:: ----------------------------------------------------------
echo --- Minimize DISM "Reset Base" update data
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\Software\Microsoft\Windows\CurrentVersion\SideBySide\Configuration' /v 'DisableResetbase' /t 'REG_DWORD' /d "^""$data"^"" /f" >NUL 2>&1


:: ----------------------------------------------------------
:: -----------Clear volume backups (shadow copies)-----------
:: ----------------------------------------------------------
echo --- Clear volume backups (shadow copies)


:: ----------------------------------------------------------
:: -----Clear System Resource Usage Monitor (SRUM) data------
:: ----------------------------------------------------------
echo --- Clear System Resource Usage Monitor (SRUM) data
:: Delete files matching pattern: "%WINDIR%\System32\sru\SRUDB.dat"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%WINDIR%\System32\sru\SRUDB.dat"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; <# Not using `Get-Acl`/`Set-Acl` to avoid adjusting token privileges #>; $parentDirectory = [System.IO.Path]::GetDirectoryName($expandedPath); $fileName = [System.IO.Path]::GetFileName($expandedPath); if ($parentDirectory -like '*[*?]*') { throw "^""Unable to grant permissions to glob path parent directory: `"^""$parentDirectory`"^"", wildcards in parent directory are not supported by ``takeown`` and ``icacls``."^""; }; if (($fileName -ne '*') -and ($fileName -like '*[*?]*')) { throw "^""Unable to grant permissions to glob path file name: `"^""$fileName`"^"", wildcards in file name is not supported by ``takeown`` and ``icacls``."^""; }; Write-Host "^""Taking ownership of `"^""$expandedPath`"^""."^""; $cmdPath = $expandedPath; if ($cmdPath.EndsWith('\')) { $cmdPath += '\' <# Escape trailing backslash for correct handling in batch commands #>; }; $takeOwnershipCommand = "^""takeown /f `"^""$cmdPath`"^"" /a"^"" <# `icacls /setowner` does not succeed, so use `takeown` instead. #>; if (-not (Test-Path -Path "^""$expandedPath"^"" -PathType Leaf)) { $localizedYes = 'Y' <# Default 'Yes' flag (fallback) #>; try { $choiceOutput = cmd /c "^""choice <nul 2>nul"^""; if ($choiceOutput -and $choiceOutput.Length -ge 2) { $localizedYes = $choiceOutput[1]; } else { Write-Warning "^""Failed to determine localized 'Yes' character. Output: `"^""$choiceOutput`"^"""^""; }; } catch { Write-Warning "^""Failed to determine localized 'Yes' character. Error: $_"^""; }; $takeOwnershipCommand += "^"" /r /d $localizedYes"^""; }; $takeOwnershipOutput = cmd /c "^""$takeOwnershipCommand 2>&1"^"" <# `stderr` message is misleading, e.g. "^""ERROR: The system cannot find the file specified."^"" is not an error. #>; if ($LASTEXITCODE -eq 0) { Write-Host "^""Successfully took ownership of `"^""$expandedPath`"^"" (using ``$takeOwnershipCommand``)."^""; } else { Write-Host "^""Did not take ownership of `"^""$expandedPath`"^"" using ``$takeOwnershipCommand``, status code: $LASTEXITCODE, message: $takeOwnershipOutput."^""; <# Do not write as error or warning, because this can be due to missing path, it's handled in next command. #>; <# `takeown` exits with status code `1`, making it hard to handle missing path here. #>; }; Write-Host "^""Granting permissions for `"^""$expandedPath`"^""."^""; $adminSid = New-Object System.Security.Principal.SecurityIdentifier 'S-1-5-32-544'; $adminAccount = $adminSid.Translate([System.Security.Principal.NTAccount]); $adminAccountName = $adminAccount.Value; $grantPermissionsCommand = "^""icacls `"^""$cmdPath`"^"" /grant `"^""$($adminAccountName):F`"^"" /t"^""; $icaclsOutput = cmd /c "^""$grantPermissionsCommand"^""; if ($LASTEXITCODE -eq 3) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } elseif ($LASTEXITCODE -ne 0) { Write-Host "^""Take ownership message:`n$takeOwnershipOutput"^""; Write-Host "^""Grant permissions:`n$icaclsOutput"^""; Write-Warning "^""Failed to assign permissions for `"^""$expandedPath`"^"" using ``$grantPermissionsCommand``, status code: $LASTEXITCODE."^""; } else { $fileStats = $icaclsOutput | ForEach-Object { $_ -match '\d+' | Out-Null; $matches[0] } | Where-Object { $_ -ne $null } | ForEach-Object { [int]$_ }; if ($fileStats.Count -gt 0 -and ($fileStats | ForEach-Object { $_ -eq 0 } | Where-Object { $_ -eq $false }).Count -eq 0) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } else { Write-Host "^""Successfully granted permissions for `"^""$expandedPath`"^"" (using ``$grantPermissionsCommand``)."^""; }; }; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
------------------------------------------


:: ----------------------------------------------------------
@REM :: -----------Clear previous Windows installations-----------
@REM :: ----------------------------------------------------------
@REM echo --- Clear previous Windows installations
@REM :: Delete directory (with additional permissions) : "%SYSTEMDRIVE%\Windows.old"
@REM PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMDRIVE%\Windows.old'; if (-Not $directoryGlob.EndsWith('\')) { $directoryGlob += '\' }; $directoryGlob )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; <# Not using `Get-Acl`/`Set-Acl` to avoid adjusting token privileges #>; $parentDirectory = [System.IO.Path]::GetDirectoryName($expandedPath); $fileName = [System.IO.Path]::GetFileName($expandedPath); if ($parentDirectory -like '*[*?]*') { throw "^""Unable to grant permissions to glob path parent directory: `"^""$parentDirectory`"^"", wildcards in parent directory are not supported by ``takeown`` and ``icacls``."^""; }; if (($fileName -ne '*') -and ($fileName -like '*[*?]*')) { throw "^""Unable to grant permissions to glob path file name: `"^""$fileName`"^"", wildcards in file name is not supported by ``takeown`` and ``icacls``."^""; }; Write-Host "^""Taking ownership of `"^""$expandedPath`"^""."^""; $cmdPath = $expandedPath; if ($cmdPath.EndsWith('\')) { $cmdPath += '\' <# Escape trailing backslash for correct handling in batch commands #>; }; $takeOwnershipCommand = "^""takeown /f `"^""$cmdPath`"^"" /a"^"" <# `icacls /setowner` does not succeed, so use `takeown` instead. #>; if (-not (Test-Path -Path "^""$expandedPath"^"" -PathType Leaf)) { $localizedYes = 'Y' <# Default 'Yes' flag (fallback) #>; try { $choiceOutput = cmd /c "^""choice <nul 2>nul"^""; if ($choiceOutput -and $choiceOutput.Length -ge 2) { $localizedYes = $choiceOutput[1]; } else { Write-Warning "^""Failed to determine localized 'Yes' character. Output: `"^""$choiceOutput`"^"""^""; }; } catch { Write-Warning "^""Failed to determine localized 'Yes' character. Error: $_"^""; }; $takeOwnershipCommand += "^"" /r /d $localizedYes"^""; }; $takeOwnershipOutput = cmd /c "^""$takeOwnershipCommand 2>&1"^"" <# `stderr` message is misleading, e.g. "^""ERROR: The system cannot find the file specified."^"" is not an error. #>; if ($LASTEXITCODE -eq 0) { Write-Host "^""Successfully took ownership of `"^""$expandedPath`"^"" (using ``$takeOwnershipCommand``)."^""; } else { Write-Host "^""Did not take ownership of `"^""$expandedPath`"^"" using ``$takeOwnershipCommand``, status code: $LASTEXITCODE, message: $takeOwnershipOutput."^""; <# Do not write as error or warning, because this can be due to missing path, it's handled in next command. #>; <# `takeown` exits with status code `1`, making it hard to handle missing path here. #>; }; Write-Host "^""Granting permissions for `"^""$expandedPath`"^""."^""; $adminSid = New-Object System.Security.Principal.SecurityIdentifier 'S-1-5-32-544'; $adminAccount = $adminSid.Translate([System.Security.Principal.NTAccount]); $adminAccountName = $adminAccount.Value; $grantPermissionsCommand = "^""icacls `"^""$cmdPath`"^"" /grant `"^""$($adminAccountName):F`"^"" /t"^""; $icaclsOutput = cmd /c "^""$grantPermissionsCommand"^""; if ($LASTEXITCODE -eq 3) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } elseif ($LASTEXITCODE -ne 0) { Write-Host "^""Take ownership message:`n$takeOwnershipOutput"^""; Write-Host "^""Grant permissions:`n$icaclsOutput"^""; Write-Warning "^""Failed to assign permissions for `"^""$expandedPath`"^"" using ``$grantPermissionsCommand``, status code: $LASTEXITCODE."^""; } else { $fileStats = $icaclsOutput | ForEach-Object { $_ -match '\d+' | Out-Null; $matches[0] } | Where-Object { $_ -ne $null } | ForEach-Object { [int]$_ }; if ($fileStats.Count -gt 0 -and ($fileStats | ForEach-Object { $_ -eq 0 } | Where-Object { $_ -eq $false }).Count -eq 0) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } else { Write-Host "^""Successfully granted permissions for `"^""$expandedPath`"^"" (using ``$grantPermissionsCommand``)."^""; }; }; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
@REM :: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Remove the controversial `default0` user---------
:: ----------------------------------------------------------
echo --- Remove the controversial `default0` user
net user defaultuser0 /delete 2>nul
:: ----------------------------------------------------------

:: ----------------------------------------------------------
:: -----Clear credentials in Windows Credential Manager------
:: ----------------------------------------------------------
echo --- Clear credentials in Windows Credential Manager
PowerShell -ExecutionPolicy Unrestricted -Command "$cmdkeyPath = Get-Command cmdkey -ErrorAction SilentlyContinue; if (-not $cmdkeyPath) { throw 'Failed to find the `cmdkey` utility on this system.'; }; $cmdkeyListOutput = & $cmdkeyPath /list; if ($LASTEXITCODE -ne 0) { throw "^""Failed to execute `cmdkey /list`. Exit code: $LASTEXITCODE."^""; }; if (-not $cmdkeyListOutput) { throw 'Failed to retrieve credentials list. The output from `cmdkey /list` is empty.'; }; $credentialEntries = @($cmdkeyListOutput | Select-String 'Target'); if (-not $credentialEntries) { Write-Host 'Skipping: No credentials found for deletion.'; exit 0; }; $allCredentialsDeletedSuccessfully = $true; Write-Host "^""Total of $($credentialEntries.Length) credential(s) found. Initiating deletion..."^""; foreach ($credentialEntry in $credentialEntries) { if ($credentialEntry -notmatch 'Target:(.+)') { Write-Error "^""Failed to parse credential from output: $credentialEntry"^""; $allCredentialsDeletedSuccessfully = $false; continue; }; $credentialTargetName = $matches[1].Trim(); Write-Host "^""Deleting credential: `"^""$credentialTargetName`"^""..."^""; & $cmdkeyPath /delete:$credentialTargetName; if ($LASTEXITCODE -ne 0) { Write-Error "^""Failed to delete credential '$credentialTargetName'. `cmdkey` returned exit code: $LASTEXITCODE."^""; $allCredentialsDeletedSuccessfully = $false; } else { Write-Host "^""Successfully deleted credential: `"^""$credentialTargetName`"^""."^""; }; }; if (-not $allCredentialsDeletedSuccessfully) { Write-Warning 'Failed to delete some credentials. Please check the error messages above.'; } else { Write-Host "^""Successfully deleted all $($credentialEntries.Length) credential(s)."^""; }"
:: ----------------------------------------------------------

:: ----------------------------------------------------------
:: ---------Clear Windows Update Medic Service logs----------
:: ----------------------------------------------------------
echo --- Clear Windows Update Medic Service logs
:: Clear directory contents  : "%SYSTEMROOT%\Logs\waasmedic"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMROOT%\Logs\waasmedic'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Clear "Cryptographic Services" diagnostic traces-----
:: ----------------------------------------------------------
echo --- Clear "Cryptographic Services" diagnostic traces
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\System32\catroot2\dberr.txt"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\System32\catroot2.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\System32\catroot2.jrs"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\System32\catroot2.edb"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\System32\catroot2.chk"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Clear Server-initiated Healing Events system logs-----
:: ----------------------------------------------------------
echo --- Clear Server-initiated Healing Events system logs
:: Clear directory contents  : "%SYSTEMROOT%\Logs\SIH"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMROOT%\Logs\SIH'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------------Clear Windows Update logs-----------------
:: ----------------------------------------------------------
echo --- Clear Windows Update logs
:: Clear directory contents  : "%SYSTEMROOT%\Traces\WindowsUpdate"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMROOT%\Traces\WindowsUpdate'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: Clear Optional Component Manager and COM+ components logs-
:: ----------------------------------------------------------
echo --- Clear Optional Component Manager and COM+ components logs
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\comsetup.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Clear "Distributed Transaction Coordinator (DTC)" logs--
:: ----------------------------------------------------------
echo --- Clear "Distributed Transaction Coordinator (DTC)" logs
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\DtcInstall.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: Clear logs for pending/unsuccessful file rename operations
echo --- Clear logs for pending/unsuccessful file rename operations
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\PFRO.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Clear Windows update installation logs----------
:: ----------------------------------------------------------
echo --- Clear Windows update installation logs
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\setupact.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\setuperr.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------------Clear Windows setup logs-----------------
:: ----------------------------------------------------------
echo --- Clear Windows setup logs
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\setupapi.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\inf\setupapi.app.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\inf\setupapi.dev.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\inf\setupapi.offline.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMROOT%\Panther'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Clear "Windows System Assessment Tool (`WinSAT`)" logs--
:: ----------------------------------------------------------
echo --- Clear "Windows System Assessment Tool (`WinSAT`)" logs
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\Performance\WinSAT\winsat.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------------Clear password change events---------------
:: ----------------------------------------------------------
echo --- Clear password change events
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\debug\PASSWD.LOG"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------------Clear user web cache database---------------
:: ----------------------------------------------------------
echo --- Clear user web cache database
:: Clear directory contents  : "%LOCALAPPDATA%\Microsoft\Windows\WebCache"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%LOCALAPPDATA%\Microsoft\Windows\WebCache'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Clear system temp folder when not logged in--------
:: ----------------------------------------------------------
echo --- Clear system temp folder when not logged in
:: Clear directory contents  : "%SYSTEMROOT%\ServiceProfiles\LocalService\AppData\Local\Temp"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMROOT%\ServiceProfiles\LocalService\AppData\Local\Temp'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: Clear DISM (Deployment Image Servicing and Management) system logs
echo --- Clear DISM (Deployment Image Servicing and Management) system logs
:: Delete files matching pattern: "%SYSTEMROOT%\Logs\CBS\CBS.log"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\Logs\CBS\CBS.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: Delete files matching pattern: "%SYSTEMROOT%\Logs\DISM\DISM.log"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%SYSTEMROOT%\Logs\DISM\DISM.log"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------------Clear Windows update files----------------
:: ----------------------------------------------------------
echo --- Clear Windows update files
:: Clear directory contents  : "%SYSTEMROOT%\SoftwareDistribution"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMROOT%\SoftwareDistribution'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"



:: ----------------------------------------------------------
:: --------Clear Common Language Runtime system logs---------
:: ----------------------------------------------------------
echo --- Clear Common Language Runtime system logs
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%LOCALAPPDATA%\Microsoft\CLR_v4.0\UsageTraces'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%LOCALAPPDATA%\Microsoft\CLR_v4.0_32\UsageTraces'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Clear Network Setup Service Events system logs------
:: ----------------------------------------------------------
echo --- Clear Network Setup Service Events system logs
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMROOT%\Logs\NetSetup'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: Clear logs generated by Disk Cleanup Tool (`cleanmgr.exe`)
echo --- Clear logs generated by Disk Cleanup Tool (`cleanmgr.exe`)
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%SYSTEMROOT%\System32\LogFiles\setupcln'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------------Clear thumbnail cache-------------------
:: ----------------------------------------------------------
echo --- Clear thumbnail cache
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%LOCALAPPDATA%\Microsoft\Windows\Explorer\*.db"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Clear diagnostics tracking logs--------------
:: ----------------------------------------------------------
echo --- Clear diagnostics tracking logs
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%PROGRAMDATA%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; <# Not using `Get-Acl`/`Set-Acl` to avoid adjusting token privileges #>; $parentDirectory = [System.IO.Path]::GetDirectoryName($expandedPath); $fileName = [System.IO.Path]::GetFileName($expandedPath); if ($parentDirectory -like '*[*?]*') { throw "^""Unable to grant permissions to glob path parent directory: `"^""$parentDirectory`"^"", wildcards in parent directory are not supported by ``takeown`` and ``icacls``."^""; }; if (($fileName -ne '*') -and ($fileName -like '*[*?]*')) { throw "^""Unable to grant permissions to glob path file name: `"^""$fileName`"^"", wildcards in file name is not supported by ``takeown`` and ``icacls``."^""; }; Write-Host "^""Taking ownership of `"^""$expandedPath`"^""."^""; $cmdPath = $expandedPath; if ($cmdPath.EndsWith('\')) { $cmdPath += '\' <# Escape trailing backslash for correct handling in batch commands #>; }; $takeOwnershipCommand = "^""takeown /f `"^""$cmdPath`"^"" /a"^"" <# `icacls /setowner` does not succeed, so use `takeown` instead. #>; if (-not (Test-Path -Path "^""$expandedPath"^"" -PathType Leaf)) { $localizedYes = 'Y' <# Default 'Yes' flag (fallback) #>; try { $choiceOutput = cmd /c "^""choice <nul 2>nul"^""; if ($choiceOutput -and $choiceOutput.Length -ge 2) { $localizedYes = $choiceOutput[1]; } else { Write-Warning "^""Failed to determine localized 'Yes' character. Output: `"^""$choiceOutput`"^"""^""; }; } catch { Write-Warning "^""Failed to determine localized 'Yes' character. Error: $_"^""; }; $takeOwnershipCommand += "^"" /r /d $localizedYes"^""; }; $takeOwnershipOutput = cmd /c "^""$takeOwnershipCommand 2>&1"^"" <# `stderr` message is misleading, e.g. "^""ERROR: The system cannot find the file specified."^"" is not an error. #>; if ($LASTEXITCODE -eq 0) { Write-Host "^""Successfully took ownership of `"^""$expandedPath`"^"" (using ``$takeOwnershipCommand``)."^""; } else { Write-Host "^""Did not take ownership of `"^""$expandedPath`"^"" using ``$takeOwnershipCommand``, status code: $LASTEXITCODE, message: $takeOwnershipOutput."^""; <# Do not write as error or warning, because this can be due to missing path, it's handled in next command. #>; <# `takeown` exits with status code `1`, making it hard to handle missing path here. #>; }; Write-Host "^""Granting permissions for `"^""$expandedPath`"^""."^""; $adminSid = New-Object System.Security.Principal.SecurityIdentifier 'S-1-5-32-544'; $adminAccount = $adminSid.Translate([System.Security.Principal.NTAccount]); $adminAccountName = $adminAccount.Value; $grantPermissionsCommand = "^""icacls `"^""$cmdPath`"^"" /grant `"^""$($adminAccountName):F`"^"" /t"^""; $icaclsOutput = cmd /c "^""$grantPermissionsCommand"^""; if ($LASTEXITCODE -eq 3) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } elseif ($LASTEXITCODE -ne 0) { Write-Host "^""Take ownership message:`n$takeOwnershipOutput"^""; Write-Host "^""Grant permissions:`n$icaclsOutput"^""; Write-Warning "^""Failed to assign permissions for `"^""$expandedPath`"^"" using ``$grantPermissionsCommand``, status code: $LASTEXITCODE."^""; } else { $fileStats = $icaclsOutput | ForEach-Object { $_ -match '\d+' | Out-Null; $matches[0] } | Where-Object { $_ -ne $null } | ForEach-Object { [int]$_ }; if ($fileStats.Count -gt 0 -and ($fileStats | ForEach-Object { $_ -eq 0 } | Where-Object { $_ -eq $false }).Count -eq 0) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } else { Write-Host "^""Successfully granted permissions for `"^""$expandedPath`"^"" (using ``$grantPermissionsCommand``)."^""; }; }; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: Delete files matching pattern: "%PROGRAMDATA%\Microsoft\Diagnosis\ETLLogs\ShutdownLogger\AutoLogger-Diagtrack-Listener.etl"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""%PROGRAMDATA%\Microsoft\Diagnosis\ETLLogs\ShutdownLogger\AutoLogger-Diagtrack-Listener.etl"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; <# Not using `Get-Acl`/`Set-Acl` to avoid adjusting token privileges #>; $parentDirectory = [System.IO.Path]::GetDirectoryName($expandedPath); $fileName = [System.IO.Path]::GetFileName($expandedPath); if ($parentDirectory -like '*[*?]*') { throw "^""Unable to grant permissions to glob path parent directory: `"^""$parentDirectory`"^"", wildcards in parent directory are not supported by ``takeown`` and ``icacls``."^""; }; if (($fileName -ne '*') -and ($fileName -like '*[*?]*')) { throw "^""Unable to grant permissions to glob path file name: `"^""$fileName`"^"", wildcards in file name is not supported by ``takeown`` and ``icacls``."^""; }; Write-Host "^""Taking ownership of `"^""$expandedPath`"^""."^""; $cmdPath = $expandedPath; if ($cmdPath.EndsWith('\')) { $cmdPath += '\' <# Escape trailing backslash for correct handling in batch commands #>; }; $takeOwnershipCommand = "^""takeown /f `"^""$cmdPath`"^"" /a"^"" <# `icacls /setowner` does not succeed, so use `takeown` instead. #>; if (-not (Test-Path -Path "^""$expandedPath"^"" -PathType Leaf)) { $localizedYes = 'Y' <# Default 'Yes' flag (fallback) #>; try { $choiceOutput = cmd /c "^""choice <nul 2>nul"^""; if ($choiceOutput -and $choiceOutput.Length -ge 2) { $localizedYes = $choiceOutput[1]; } else { Write-Warning "^""Failed to determine localized 'Yes' character. Output: `"^""$choiceOutput`"^"""^""; }; } catch { Write-Warning "^""Failed to determine localized 'Yes' character. Error: $_"^""; }; $takeOwnershipCommand += "^"" /r /d $localizedYes"^""; }; $takeOwnershipOutput = cmd /c "^""$takeOwnershipCommand 2>&1"^"" <# `stderr` message is misleading, e.g. "^""ERROR: The system cannot find the file specified."^"" is not an error. #>; if ($LASTEXITCODE -eq 0) { Write-Host "^""Successfully took ownership of `"^""$expandedPath`"^"" (using ``$takeOwnershipCommand``)."^""; } else { Write-Host "^""Did not take ownership of `"^""$expandedPath`"^"" using ``$takeOwnershipCommand``, status code: $LASTEXITCODE, message: $takeOwnershipOutput."^""; <# Do not write as error or warning, because this can be due to missing path, it's handled in next command. #>; <# `takeown` exits with status code `1`, making it hard to handle missing path here. #>; }; Write-Host "^""Granting permissions for `"^""$expandedPath`"^""."^""; $adminSid = New-Object System.Security.Principal.SecurityIdentifier 'S-1-5-32-544'; $adminAccount = $adminSid.Translate([System.Security.Principal.NTAccount]); $adminAccountName = $adminAccount.Value; $grantPermissionsCommand = "^""icacls `"^""$cmdPath`"^"" /grant `"^""$($adminAccountName):F`"^"" /t"^""; $icaclsOutput = cmd /c "^""$grantPermissionsCommand"^""; if ($LASTEXITCODE -eq 3) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } elseif ($LASTEXITCODE -ne 0) { Write-Host "^""Take ownership message:`n$takeOwnershipOutput"^""; Write-Host "^""Grant permissions:`n$icaclsOutput"^""; Write-Warning "^""Failed to assign permissions for `"^""$expandedPath`"^"" using ``$grantPermissionsCommand``, status code: $LASTEXITCODE."^""; } else { $fileStats = $icaclsOutput | ForEach-Object { $_ -match '\d+' | Out-Null; $matches[0] } | Where-Object { $_ -ne $null } | ForEach-Object { [int]$_ }; if ($fileStats.Count -gt 0 -and ($fileStats | ForEach-Object { $_ -eq 0 } | Where-Object { $_ -eq $false }).Count -eq 0) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } else { Write-Host "^""Successfully granted permissions for `"^""$expandedPath`"^"" (using ``$grantPermissionsCommand``)."^""; }; }; $deletedCount = 0; $failedCount = 0; $skippedCount = 0; $foundAbsolutePaths = @(); try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (Test-Path -Path $path -PathType Container) { Write-Host "^""Skipping, the path is not a file but a folder: $($path)."^""; $skippedCount++; continue; }; if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; if ($skippedCount -gt 0) { Write-Host "^""Skipped $($skippedCount) items."^""; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"

:: ----------------------------------------------------------
:: -------Clear event logs in Event Viewer application-------
:: ----------------------------------------------------------
echo --- Clear event logs in Event Viewer application
REM https://social.technet.microsoft.com/Forums/en-US/f6788f7d-7d04-41f1-a64e-3af9f700e4bd/failed-to-clear-log-microsoftwindowsliveidoperational-access-is-denied?forum=win10itprogeneral
wevtutil sl Microsoft-Windows-LiveId/Operational /ca:O:BAG:SYD:(A;;0x1;;;SY)(A;;0x5;;;BA)(A;;0x1;;;LA)
for /f "tokens=*" %%i in ('wevtutil.exe el') DO (
    echo Deleting event log: "%%i"
    wevtutil.exe cl %1 "%%i"
)
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Clear Defender scan (protection) history---------
:: ----------------------------------------------------------
echo --- Clear Defender scan (protection) history
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%ProgramData%\Microsoft\Windows Defender\Scans\History'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; <# Not using `Get-Acl`/`Set-Acl` to avoid adjusting token privileges #>; $parentDirectory = [System.IO.Path]::GetDirectoryName($expandedPath); $fileName = [System.IO.Path]::GetFileName($expandedPath); if ($parentDirectory -like '*[*?]*') { throw "^""Unable to grant permissions to glob path parent directory: `"^""$parentDirectory`"^"", wildcards in parent directory are not supported by ``takeown`` and ``icacls``."^""; }; if (($fileName -ne '*') -and ($fileName -like '*[*?]*')) { throw "^""Unable to grant permissions to glob path file name: `"^""$fileName`"^"", wildcards in file name is not supported by ``takeown`` and ``icacls``."^""; }; Write-Host "^""Taking ownership of `"^""$expandedPath`"^""."^""; $cmdPath = $expandedPath; if ($cmdPath.EndsWith('\')) { $cmdPath += '\' <# Escape trailing backslash for correct handling in batch commands #>; }; $takeOwnershipCommand = "^""takeown /f `"^""$cmdPath`"^"" /a"^"" <# `icacls /setowner` does not succeed, so use `takeown` instead. #>; if (-not (Test-Path -Path "^""$expandedPath"^"" -PathType Leaf)) { $localizedYes = 'Y' <# Default 'Yes' flag (fallback) #>; try { $choiceOutput = cmd /c "^""choice <nul 2>nul"^""; if ($choiceOutput -and $choiceOutput.Length -ge 2) { $localizedYes = $choiceOutput[1]; } else { Write-Warning "^""Failed to determine localized 'Yes' character. Output: `"^""$choiceOutput`"^"""^""; }; } catch { Write-Warning "^""Failed to determine localized 'Yes' character. Error: $_"^""; }; $takeOwnershipCommand += "^"" /r /d $localizedYes"^""; }; $takeOwnershipOutput = cmd /c "^""$takeOwnershipCommand 2>&1"^"" <# `stderr` message is misleading, e.g. "^""ERROR: The system cannot find the file specified."^"" is not an error. #>; if ($LASTEXITCODE -eq 0) { Write-Host "^""Successfully took ownership of `"^""$expandedPath`"^"" (using ``$takeOwnershipCommand``)."^""; } else { Write-Host "^""Did not take ownership of `"^""$expandedPath`"^"" using ``$takeOwnershipCommand``, status code: $LASTEXITCODE, message: $takeOwnershipOutput."^""; <# Do not write as error or warning, because this can be due to missing path, it's handled in next command. #>; <# `takeown` exits with status code `1`, making it hard to handle missing path here. #>; }; Write-Host "^""Granting permissions for `"^""$expandedPath`"^""."^""; $adminSid = New-Object System.Security.Principal.SecurityIdentifier 'S-1-5-32-544'; $adminAccount = $adminSid.Translate([System.Security.Principal.NTAccount]); $adminAccountName = $adminAccount.Value; $grantPermissionsCommand = "^""icacls `"^""$cmdPath`"^"" /grant `"^""$($adminAccountName):F`"^"" /t"^""; $icaclsOutput = cmd /c "^""$grantPermissionsCommand"^""; if ($LASTEXITCODE -eq 3) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } elseif ($LASTEXITCODE -ne 0) { Write-Host "^""Take ownership message:`n$takeOwnershipOutput"^""; Write-Host "^""Grant permissions:`n$icaclsOutput"^""; Write-Warning "^""Failed to assign permissions for `"^""$expandedPath`"^"" using ``$grantPermissionsCommand``, status code: $LASTEXITCODE."^""; } else { $fileStats = $icaclsOutput | ForEach-Object { $_ -match '\d+' | Out-Null; $matches[0] } | Where-Object { $_ -ne $null } | ForEach-Object { [int]$_ }; if ($fileStats.Count -gt 0 -and ($fileStats | ForEach-Object { $_ -eq 0 } | Where-Object { $_ -eq $false }).Count -eq 0) { Write-Host "^""Skipping, no items available for deletion according to: ``$grantPermissionsCommand``."^""; exit 0; } else { Write-Host "^""Successfully granted permissions for `"^""$expandedPath`"^"" (using ``$grantPermissionsCommand``)."^""; }; }; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------

:: ----------------------------------------------------------
:: ------------------Clear prefetch folder-------------------
:: ----------------------------------------------------------
echo --- Clear prefetch folder
:: Clear directory contents  : "%WINDIR%\Prefetch"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%WINDIR%\Prefetch'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Clear Quick Access recent files--------------
:: ----------------------------------------------------------
echo --- Clear Quick Access recent files
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Clear Quick Access pinned items--------------
:: ----------------------------------------------------------
echo --- Clear Quick Access pinned items
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%APPDATA%\Microsoft\Windows\Recent\CustomDestinations'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Clear Windows Registry last-accessed key---------
:: ----------------------------------------------------------
echo --- Clear Windows Registry last-accessed key
PowerShell -ExecutionPolicy Unrestricted -Command "$keyName = 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit'; $valueName = 'LastKey'; $hive = $keyName.Split('\')[0]; $path = "^""$($hive):$($keyName.Substring($hive.Length))"^""; Write-Host "^""Removing the registry value '$valueName' from '$path'."^""; if (-Not (Test-Path -LiteralPath $path)) { Write-Host 'Skipping, no action needed, registry key does not exist.'; Exit 0; }; $existingValueNames = (Get-ItemProperty -LiteralPath $path).PSObject.Properties.Name; if (-Not ($existingValueNames -Contains $valueName)) { Write-Host 'Skipping, no action needed, registry value does not exist.'; Exit 0; }; try { if ($valueName -ieq '(default)') { Write-Host 'Removing the default value.'; $(Get-Item -LiteralPath $path).OpenSubKey('', $true).DeleteValue(''); } else { Remove-ItemProperty -LiteralPath $path -Name $valueName -Force -ErrorAction Stop; }; Write-Host 'Successfully removed the registry value.'; } catch { Write-Error "^""Failed to remove the registry value: $($_.Exception.Message)"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Clear Windows Registry favorite locations---------
:: ----------------------------------------------------------
echo --- Clear Windows Registry favorite locations
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit\Favorites'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Clear recent application history-------------
:: ----------------------------------------------------------
echo --- Clear recent application history
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedMRU'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Clear Adobe recent file history--------------
:: ----------------------------------------------------------
echo --- Clear Adobe recent file history
PowerShell -ExecutionPolicy Unrestricted -Command "$keyPath='HKCU\Software\Adobe\MediaBrowser\MRU'; $registryHive = $keyPath.Split('\')[0]; $registryPath = "^""$($registryHive):$($keyPath.Substring($registryHive.Length))"^""; Write-Host "^""Removing registry key at `"^""$registryPath`"^""."^""; if (-not (Test-Path -LiteralPath $registryPath)) { Write-Host "^""Skipping, no action needed, registry key `"^""$registryPath`"^"" does not exist."^""; exit 0; }; try { Remove-Item -LiteralPath $registryPath -Force -ErrorAction Stop | Out-Null; Write-Host "^""Successfully removed the registry key at path `"^""$registryPath`"^""."^""; } catch { Write-Error "^""Failed to remove the registry key at path `"^""$registryPath`"^"": $($_.Exception.Message)"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Clear Microsoft Paint recent files history--------
:: ----------------------------------------------------------
echo --- Clear Microsoft Paint recent files history
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Paint\Recent File List'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Clear WordPad recent file history-------------
:: ----------------------------------------------------------
echo --- Clear WordPad recent file history
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Wordpad\Recent File List'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Clear network drive mapping history------------
:: ----------------------------------------------------------
echo --- Clear network drive mapping history
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Map Network Drive MRU'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------------Clear Windows Search history---------------
:: ----------------------------------------------------------
echo --- Clear Windows Search history
:: Clear register values from "HKCU\Software\Microsoft\Search Assistant\ACMru" (recursively)
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Search Assistant\ACMru'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Iterating subkeys recursively: `"^""$formattedRegistryKeyPath`"^""."^""; $subKeys = Get-ChildItem -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop; if (!$subKeys) { Write-Output 'Skipping: no subkeys available.'; return; }; foreach ($subKey in $subKeys) { $subkeyName = $($subKey.PSChildName); Write-Output "^""Processing subkey: `"^""$subkeyName`"^"""^""; $subkeyPath = Join-Path -Path $currentRegistryKeyPath -ChildPath $subkeyName; Clear-RegistryKeyValues $subkeyPath; }; Write-Output "^""Successfully cleared all subkeys in `"^""$formattedRegistryKeyPath`"^""."^""; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: Clear register values from "HKCU\Software\Microsoft\Windows\v" 
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\v'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: Clear register values from "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\SearchHistory" (recursively)
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\SearchHistory'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Iterating subkeys recursively: `"^""$formattedRegistryKeyPath`"^""."^""; $subKeys = Get-ChildItem -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop; if (!$subKeys) { Write-Output 'Skipping: no subkeys available.'; return; }; foreach ($subKey in $subKeys) { $subkeyName = $($subKey.PSChildName); Write-Output "^""Processing subkey: `"^""$subkeyName`"^"""^""; $subkeyPath = Join-Path -Path $currentRegistryKeyPath -ChildPath $subkeyName; Clear-RegistryKeyValues $subkeyPath; }; Write-Output "^""Successfully cleared all subkeys in `"^""$formattedRegistryKeyPath`"^""."^""; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: Clear directory contents  : "%LOCALAPPDATA%\Microsoft\Windows\ConnectedSearch\History"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%LOCALAPPDATA%\Microsoft\Windows\ConnectedSearch\History'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Clear recent files and folders history----------
:: ----------------------------------------------------------
echo --- Clear recent files and folders history
:: Clear register values from "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" (recursively)
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Iterating subkeys recursively: `"^""$formattedRegistryKeyPath`"^""."^""; $subKeys = Get-ChildItem -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop; if (!$subKeys) { Write-Output 'Skipping: no subkeys available.'; return; }; foreach ($subKey in $subKeys) { $subkeyName = $($subKey.PSChildName); Write-Output "^""Processing subkey: `"^""$subkeyName`"^"""^""; $subkeyPath = Join-Path -Path $currentRegistryKeyPath -ChildPath $subkeyName; Clear-RegistryKeyValues $subkeyPath; }; Write-Output "^""Successfully cleared all subkeys in `"^""$formattedRegistryKeyPath`"^""."^""; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: Clear register values from "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" (recursively)
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Iterating subkeys recursively: `"^""$formattedRegistryKeyPath`"^""."^""; $subKeys = Get-ChildItem -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop; if (!$subKeys) { Write-Output 'Skipping: no subkeys available.'; return; }; foreach ($subKey in $subKeys) { $subkeyName = $($subKey.PSChildName); Write-Output "^""Processing subkey: `"^""$subkeyName`"^"""^""; $subkeyPath = Join-Path -Path $currentRegistryKeyPath -ChildPath $subkeyName; Clear-RegistryKeyValues $subkeyPath; }; Write-Output "^""Successfully cleared all subkeys in `"^""$formattedRegistryKeyPath`"^""."^""; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: Clear register values from "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" (recursively)
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Iterating subkeys recursively: `"^""$formattedRegistryKeyPath`"^""."^""; $subKeys = Get-ChildItem -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop; if (!$subKeys) { Write-Output 'Skipping: no subkeys available.'; return; }; foreach ($subKey in $subKeys) { $subkeyName = $($subKey.PSChildName); Write-Output "^""Processing subkey: `"^""$subkeyName`"^"""^""; $subkeyPath = Join-Path -Path $currentRegistryKeyPath -ChildPath $subkeyName; Clear-RegistryKeyValues $subkeyPath; }; Write-Output "^""Successfully cleared all subkeys in `"^""$formattedRegistryKeyPath`"^""."^""; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: Clear directory contents  : "%APPDATA%\Microsoft\Windows\Recent Items"
PowerShell -ExecutionPolicy Unrestricted -Command "$pathGlobPattern = "^""$($directoryGlob = '%APPDATA%\Microsoft\Windows\Recent Items'; if ($directoryGlob.EndsWith('\*')) { $directoryGlob } elseif ($directoryGlob.EndsWith('\')) { "^""$($directoryGlob)*"^"" } else { "^""$($directoryGlob)\*"^"" } )"^""; $expandedPath = [System.Environment]::ExpandEnvironmentVariables($pathGlobPattern); Write-Host "^""Searching for items matching pattern: `"^""$($expandedPath)`"^""."^""; $deletedCount = 0; $failedCount = 0; $foundAbsolutePaths = @(); Write-Host 'Iterating files and directories recursively.'; try { $foundAbsolutePaths += @(; Get-ChildItem -Path $expandedPath -Force -Recurse -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; try { $foundAbsolutePaths += @(; Get-Item -Path $expandedPath -ErrorAction Stop | Select-Object -ExpandProperty FullName; ); } catch [System.Management.Automation.ItemNotFoundException] { <# Swallow, do not run `Test-Path` before, it's unreliable for globs requiring extra permissions #>; }; $foundAbsolutePaths = $foundAbsolutePaths | Select-Object -Unique | Sort-Object -Property { $_.Length } -Descending; if (!$foundAbsolutePaths) { Write-Host 'Skipping, no items available.'; exit 0; }; Write-Host "^""Initiating processing of $($foundAbsolutePaths.Count) items from `"^""$expandedPath`"^""."^""; foreach ($path in $foundAbsolutePaths) { if (-not (Test-Path $path)) { <# Re-check existence as prior deletions might remove subsequent items (e.g., subdirectories). #>; Write-Host "^""Successfully deleted: $($path) (already deleted)."^""; $deletedCount++; continue; }; try { Remove-Item -Path $path -Force -Recurse -ErrorAction Stop; $deletedCount++; Write-Host "^""Successfully deleted: $($path)"^""; } catch { $failedCount++; Write-Warning "^""Unable to delete $($path): $_"^""; }; }; Write-Host "^""Successfully deleted $($deletedCount) items."^""; if ($failedCount -gt 0) { Write-Warning "^""Failed to delete $($failedCount) items."^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Clear Windows Media Player recent activity history----
:: ----------------------------------------------------------
echo --- Clear Windows Media Player recent activity history
:: Clear register values from "HKCU\Software\Microsoft\MediaPlayer\Player\RecentFileList" 
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\MediaPlayer\Player\RecentFileList'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: Clear register values from "HKCU\Software\Microsoft\MediaPlayer\Player\RecentURLList" 
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\MediaPlayer\Player\RecentURLList'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: Clear register values from "HKCU\Software\Gabest\Media Player Classic\Recent File List" 
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Gabest\Media Player Classic\Recent File List'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Clear DirectX recent application history---------
:: ----------------------------------------------------------
echo --- Clear DirectX recent application history
:: Clear register values from "HKCU\Software\Microsoft\Direct3D\MostRecentApplication" 
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Direct3D\MostRecentApplication'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Clear Windows Run command history-------------
:: ----------------------------------------------------------
echo --- Clear Windows Run command history
:: Clear register values from "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" 
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Clear File Explorer address bar history----------
:: ----------------------------------------------------------
echo --- Clear File Explorer address bar history
:: Clear register values from "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" 
PowerShell -ExecutionPolicy Unrestricted -Command "$rootRegistryKeyPath = 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths'; function Clear-RegistryKeyValues { try { $currentRegistryKeyPath = $args[0]; Write-Output "^""Clearing registry values from `"^""$currentRegistryKeyPath`"^""."^""; $formattedRegistryKeyPath = $currentRegistryKeyPath -replace '^([^\\]+)', '$1:'; if (-Not (Test-Path -LiteralPath $formattedRegistryKeyPath)) { Write-Output "^""Skipping: Registry key not found: `"^""$formattedRegistryKeyPath`"^""."^""; return; }; $directValueNames=(Get-Item -LiteralPath $formattedRegistryKeyPath -ErrorAction Stop | Select-Object -ExpandProperty Property); if (-Not $directValueNames) { Write-Output 'Skipping: Registry key has no direct values.'; } else { foreach ($valueName in $directValueNames) { Remove-ItemProperty -LiteralPath $formattedRegistryKeyPath -Name $valueName -ErrorAction Stop; Write-Output "^""Successfully deleted value: `"^""$valueName`"^"" from `"^""$formattedRegistryKeyPath`"^""."^""; }; Write-Output "^""Successfully cleared all direct values in `"^""$formattedRegistryKeyPath`"^""."^""; }; } catch { Write-Error "^""Failed to clear registry values in `"^""$formattedRegistryKeyPath`"^"". Error: $_"^""; Exit 1; }; }; Clear-RegistryKeyValues $rootRegistryKeyPath"
:: ----------------------------------------------------------



:: ----------------------------------------------------------
:: -----------Block Windows error reporting hosts------------
:: ----------------------------------------------------------
echo --- Block Windows error reporting hosts
:: Add hosts entries for watson.telemetry.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='watson.telemetry.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for umwatsonc.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='umwatsonc.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for ceuswatcab01.blob.core.windows.net
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='ceuswatcab01.blob.core.windows.net'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for ceuswatcab02.blob.core.windows.net
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='ceuswatcab02.blob.core.windows.net'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for eaus2watcab01.blob.core.windows.net
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='eaus2watcab01.blob.core.windows.net'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for eaus2watcab02.blob.core.windows.net
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='eaus2watcab02.blob.core.windows.net'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for weus2watcab01.blob.core.windows.net
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='weus2watcab01.blob.core.windows.net'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for weus2watcab02.blob.core.windows.net
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='weus2watcab02.blob.core.windows.net'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for co4.telecommand.telemetry.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='co4.telecommand.telemetry.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for cs11.wpc.v0cdn.net
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='cs11.wpc.v0cdn.net'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for cs1137.wpc.gammacdn.net
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='cs1137.wpc.gammacdn.net'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for modern.watson.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='modern.watson.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Block Windows crash report hosts-------------
:: ----------------------------------------------------------
echo --- Block Windows crash report hosts
:: Add hosts entries for oca.telemetry.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='oca.telemetry.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for oca.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='oca.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for kmwatsonc.events.data.microsoft.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='kmwatsonc.events.data.microsoft.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: ----------------------------------------------------------

:: ----------------------------------------------------------
:: --------------Block Dropbox telemetry hosts---------------
:: ----------------------------------------------------------
echo --- Block Dropbox telemetry hosts
:: Add hosts entries for telemetry.dropbox.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='telemetry.dropbox.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: Add hosts entries for telemetry.v.dropbox.com
PowerShell -ExecutionPolicy Unrestricted -Command "$domain ='telemetry.v.dropbox.com'; $hostsFilePath = "^""$env:WINDIR\System32\drivers\etc\hosts"^""; $comment = "^""managed by privacy.sexy"^""; $hostsFileEncoding = [Microsoft.PowerShell.Commands.FileSystemCmdletProviderEncoding]::Utf8; $blockingHostsEntries = @(; @{ AddressType = "^""IPv4"^"";  IPAddress = '0.0.0.0'; }; @{ AddressType = "^""IPv6"^"";  IPAddress = '::1'; }; ); try { $isHostsFilePresent = Test-Path -Path $hostsFilePath -PathType Leaf -ErrorAction Stop; } catch { Write-Error "^""Failed to check hosts file existence. Error: $_"^""; exit 1; }; if (-Not $isHostsFilePresent) { Write-Output "^""Creating a new hosts file at $hostsFilePath."^""; try { New-Item -Path $hostsFilePath -ItemType File -Force -ErrorAction Stop | Out-Null; Write-Output "^""Successfully created the hosts file."^""; } catch { Write-Error "^""Failed to create the hosts file. Error: $_"^""; exit 1; }; }; foreach ($blockingEntry in $blockingHostsEntries) { Write-Output "^""Processing addition for $($blockingEntry.AddressType) entry."^""; try { $hostsFileContents = Get-Content -Path "^""$hostsFilePath"^"" -Raw -Encoding $hostsFileEncoding -ErrorAction Stop; } catch { Write-Error "^""Failed to read the hosts file. Error: $_"^""; continue; }; $hostsEntryLine = "^""$($blockingEntry.IPAddress)`t$domain $([char]35) $comment"^""; if ((-Not [String]::IsNullOrWhiteSpace($hostsFileContents)) -And ($hostsFileContents.Contains($hostsEntryLine))) { Write-Output 'Skipping, entry already exists.'; continue; }; try { Add-Content -Path $hostsFilePath -Value $hostsEntryLine -Encoding $hostsFileEncoding -ErrorAction Stop; Write-Output 'Successfully added the entry.'; } catch { Write-Error "^""Failed to add the entry. Error: $_"^""; continue; }; }"
:: ---------------------------------------------------------- 
cls 
chcp 1251  
cls 
chcp 65001 
cls 
pause 
goto debloat 
:: ====================== 
::  APP DEBLOAT SECTION 
:: ====================== 
::  Discord
:discord_debloat
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║             DISCORD DEBLOATER                ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║  - Remove useless modules                    ║ 
echo                                     ║  - Remove unused language                    ║ 
echo                                     ╚══════════════════════════════════════════════╝
timeout /t 3 >nul 
echo Running debloat... 
taskkill /f /im Discord.exe
timeout /T 1 /nobreak >nul
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "Discord" /t REG_BINARY /d "0300000066AF9C7C5A46D901" /f 

timeout /t 1 /nobreak > NUL
rem # Remove useless modules
for /d %%A in ("%LOCALAPPDATA%\Discord\app-*") do for /d %%B in ("%%A\modules\discord_game_utils-*") do rd /s /q "%%B"
for /d %%A in ("%LOCALAPPDATA%\Discord\app-*") do for /d %%B in ("%%A\modules\discord_spellcheck-*") do rd /s /q "%%B"
for /d %%A in ("%LOCALAPPDATA%\Discord\app-*") do for /d %%B in ("%%A\modules\discord_krisp-*") do rd /s /q "%%B"
rem # Remove unused language
for /d %%A in ("%LOCALAPPDATA%\Discord\app-*") do (
    for %%F in ("%%A\locales\*.pak") do (
        if /I not "%%~nxF"=="en-US.pak" del /f /q "%%F"
    )
)
echo Done.
pause
goto app_debloat 
:: ====================== 
::  Spotify
:spotify_debloat
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║             SPOTIFY DEBLOATER                ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║  - Remove useless modules                    ║ 
echo                                     ║  - Remove unused language                    ║ 
echo                                     ╚══════════════════════════════════════════════╝
timeout /t 3 >nul 
echo Running debloat... 
taskkill /f /im Spotify.exe
timeout /T 1 /nobreak >nul
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "Spotify" /t REG_BINARY /d "0300000070E93D7B5A46D901" /f 

timeout /t 1 /nobreak > NUL

if exist "%APPDATA%\Spotify\Apps\concert.spa" del /F /Q "%APPDATA%\Spotify\Apps\concert.spa"
if exist "%APPDATA%\Spotify\Apps\concerts.spa" del /F /Q "%APPDATA%\Spotify\Apps\concerts.spa"
if exist "%APPDATA%\Spotify\Apps\error" del /F /Q "%APPDATA%\Spotify\Apps\error.spa"
if exist "%APPDATA%\Spotify\Apps\findfriends" del /F /Q "%APPDATA%\Spotify\Apps\findfriends.spa"
if exist "%APPDATA%\Spotify\Apps\show.spa" del /F /Q "%APPDATA%\Spotify\Apps\show.spa"
if exist "%APPDATA%\Spotify\Apps\station.spa" del /F /Q "%APPDATA%\Spotify\Apps\station.spa"
if exist "%APPDATA%\Spotify\Apps\stations.spa" del /F /Q "%APPDATA%\Spotify\Apps\stations.spa"

timeout /t 1 /nobreak > NUL
for %%F in ("%APPDATA%\Spotify\locales\*") do (
    if /I not "%%~nxF"=="en-US.pak" del /F /Q "%%F"
)
echo Done.
pause
goto app_debloat 
:: ====================== 
::  MS Edge
:edge_debloat
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║                                              ║ 
echo                                     ║               EDGE DEBLOATER                 ║ 
echo                                     ║                                              ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║                                              ║ 
echo                                     ║   APPLYING THESE-SPECIFIC OPTIMIZATIONS...   ║ 
echo                                     ║                                              ║ 
echo                                     ║  - User interface and experience             ║ 
echo                                     ║  - New Tab page                              ║ 
echo                                     ║  - AI and smart features                     ║ 
echo                                     ║  - Privacy and data                          ║ 
echo                                     ║  - Advertising and Marketing                 ║ 
echo                                     ║  - Financial and payment features            ║ 
echo                                     ║  - Password management and autofill          ║ 
echo                                     ║  - Password management and autofill          ║ 
echo                                     ║  - Search and suggestion features            ║ 
echo                                     ║  - Web security                              ║ 
echo                                     ║  - Network configuration                     ║ 
echo                                     ║  - Performance and resources                 ║ 
echo                                     ║  - Enterprise and sync features              ║ 
echo                                     ║  - Other features                            ║ 
echo                                     ╚══════════════════════════════════════════════╝
timeout /t 3 >nul 
echo SELECT OPTIONS:
choice -c 123 -n -m "[1] start Debloater | [2] remove Debloat Tweaks | [3] back To Menu"
if %errorlevel% equ 1 (
	rem # Disable welcome screen on first Edge launch
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "HideFirstRunExperience" /t REG_DWORD /d 1 /f
	rem # Disable sidebar search feature
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SearchInSidebarEnabled" /t REG_DWORD /d 2 /f
	rem # Disable Read Aloud feature
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ReadAloudEnabled" /t REG_DWORD /d 0 /f
	rem # Disable sending diagnostic data
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "DiagnosticData" /t REG_DWORD /d 0 /f
	rem # Disable sending URLs for crash analysis (UrlDiagnosticDataEnabled)
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "UrlDiagnosticDataEnabled" /t REG_DWORD /d 0 /f
	rem # Unpin Browser Essentials button from toolbar
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PinBrowserEssentialsToolbarButton" /t REG_DWORD /d 0 /f
	rem # Disable Collections feature
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeCollectionsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable personalization reporting
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d 0 /f
	rem # Disable web capture feature
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "WebCaptureEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Guided Switch feature
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "GuidedSwitchEnabled" /t REG_DWORD /d 0 /f
	rem # Hide Microsoft Rewards display
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ShowMicrosoftRewards" /t REG_DWORD /d 0 /f
	rem # Disable auto import and skip first run import experience
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AutoImportAtFirstRun" /t REG_DWORD /d 0 /f
	rem # Disable Workspaces feature
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeWorkspacesEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Edge Wallet checkout
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeWalletCheckoutEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Edge Wallet Etree feature
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeWalletEtreeEnabled" /t REG_DWORD /d 0 /f
	rem # Disable AAD website SSO
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AADWebSiteSSOUsingThisProfileEnabled" /t REG_DWORD /d 0 /f
	rem # Disable accessibility image labels
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AccessibilityImageLabelsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Bing as a search provider in address bar
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AddressBarMicrosoftSearchInBingProviderEnabled" /t REG_DWORD /d 0 /f
	rem # Disable games menu
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AllowGamesMenu" /t REG_DWORD /d 0 /f
	rem # Disable inline Compose
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ComposeInlineEnabled" /t REG_DWORD /d 0 /f
	rem # Disable auto sign-in for on-premises accounts
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ConfigureOnPremisesAccountAutoSignIn" /t REG_DWORD /d 0 /f
	rem # Disable online text-to-speech configuration
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ConfigureOnlineTextToSpeech" /t REG_DWORD /d 1 /f
	rem # Disable share configuration
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ConfigureShare" /t REG_DWORD /d 0 /f
	rem # Disable default browser campaign
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultBrowserSettingsCampaignEnabled" /t REG_DWORD /d 0 /f
	rem # Disable telemetry for third-party SERPs
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "Edge3PSerpTelemetryEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Edge Drop feature
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeEDropEnabled" /t REG_DWORD /d 0 /f
	rem # Disable donation via Wallet
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "WalletDonationEnabled" /t REG_DWORD /d 0 /f
	rem # Disable import on each launch
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ImportOnEachLaunch" /t REG_DWORD /d 0 /f
	rem # Disable in-app support
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "InAppSupportEnabled" /t REG_DWORD /d 0 /f
	rem # Disable local browser data sharing
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "LocalBrowserDataShareEnabled" /t REG_DWORD /d 0 /f
	rem # Disable local browser data sharing
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "LiveCaptionsAllowed" /t REG_DWORD /d 0 /f
	rem # Disable MSA website SSO
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "MSAWebSiteSSOUsingThisProfileAllowed" /t REG_DWORD /d 0 /f
	rem # Disable Microsoft Edge Insider promotion
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "MicrosoftEdgeInsiderPromotionEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Microsoft Editor synonyms
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "MicrosoftEditorSynonymsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Microsoft Editor spell check
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "MicrosoftEditorProofingEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Related Website Sets
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "RelatedWebsiteSetsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable payment method query
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PaymentMethodQueryEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Pinning Wizard
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PinningWizardAllowed" /t REG_DWORD /d 0 /f
	rem # Disable promotional tabs
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PromotionalTabsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Quick Search mini menu
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "QuickSearchShowMiniMenu" /t REG_DWORD /d 0 /f
	rem # Disable Office file quick view
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "QuickViewOfficeFilesEnabled" /t REG_DWORD /d 0 /f
	rem # Disable remote debugging
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "RemoteDebuggingAllowed" /t REG_DWORD /d 0 /f
	rem # Disable using web service to resolve navigation errors
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ResolveNavigationErrorsUseWebService" /t REG_DWORD /d 0 /f
	rem # Disable roaming profile support
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "RoamingProfileSupportEnabled" /t REG_DWORD /d 0 /f
	rem # Disable image search
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SearchForImageEnabled" /t REG_DWORD /d 0 /f
	rem # Disable search filters
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SearchFiltersEnabled" /t REG_DWORD /d 0 /f
	rem # When search suggestions are enabled, browser fails to open (disable this)
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SearchSuggestEnabled" /t REG_DWORD /d 1 /f
	rem # Disable search bar
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SearchbarAllowed" /t REG_DWORD /d 0 /f
	rem # Disable search bar on startup
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SearchbarIsEnabledOnStartup" /t REG_DWORD /d 0 /f
	rem # Disable shared links
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SharedLinksEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Acrobat subscription button
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ShowAcrobatSubscriptionButton" /t REG_DWORD /d 0 /f
	rem # Disable Office shortcut in favorites bar
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ShowOfficeShortcutInFavoritesBar" /t REG_DWORD /d 0 /f
	rem # Disable recommendations
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ShowRecommendationsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable speech recognition
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SpeechRecognitionEnabled" /t REG_DWORD /d 0 /f
	rem # Disable tab services
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "TabServicesEnabled" /t REG_DWORD /d 0 /f
	rem # Disable text prediction
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "TextPredictionEnabled" /t REG_DWORD /d 0 /f
	rem # Disable upload from phone
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "UploadFromPhoneEnabled" /t REG_DWORD /d 0 /f
	rem # Disable visual search
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "VisualSearchEnabled" /t REG_DWORD /d 0 /f
	rem # Redirect new tab page search box
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageSearchBox" /t REG_SZ /d "redirect" /f
	rem # Disable password generator
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PasswordGeneratorEnabled" /t REG_DWORD /d 0 /f
	rem # Disable password manager
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PasswordManagerEnabled" /t REG_DWORD /d 0 /f
	rem # Disable password monitor
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PasswordMonitorAllowed" /t REG_DWORD /d 0 /f
	rem # Disable password protection warnings
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PasswordProtectionWarningTrigger" /t REG_DWORD /d 0 /f
	rem # Disable alternate error pages
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AlternateErrorPagesEnabled" /t REG_DWORD /d 0 /f
	rem # Disable confirmation when closing a window with multiple tabs
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AskBeforeCloseEnabled" /t REG_DWORD /d 0 /f
	rem # Disable autofill for addresses
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AutofillAddressEnabled" /t REG_DWORD /d 0 /f
	rem # Disable autofill for credit cards
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AutofillCreditCardEnabled" /t REG_DWORD /d 0 /f
	rem # Disable autofill for memberships
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AutofillMembershipsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable AAD Web SSO
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AADWebSSOAllowed" /t REG_DWORD /d 0 /f
	rem # Disable AI-generated themes
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AIGenThemesEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Access Code Cast
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AccessCodeCastEnabled" /t REG_DWORD /d 0 /f
	rem # Disable ads transparency
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AdsTransparencyEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Edge Admin Center
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeAdminCenterEnabled" /t REG_DWORD /d 0 /f
	rem # Block Bing ads
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "BingAdsSuppressionc" /t REG_DWORD /d 1 /f
	rem # Enable Do Not Track configuration
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ConfigureDoNotTrack" /t REG_DWORD /d 1 /f
	rem # Disable Edge Asset Delivery Service
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeAssetDeliveryServiceEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Edge Shopping Assistant
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeShoppingAssistantEnabled" /t REG_DWORD /d 0 /f
	rem # Disable experimentation and configuration service
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ExperimentationAndConfigurationServiceControl" /t REG_DWORD /d 0 /f
	rem # Disable user feedback
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d 0 /f
	rem # Disable Web Widget
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "WebWidgetAllowed" /t REG_DWORD /d 0 /f
	rem # Disable Typosquatting checker
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "TyposquattingCheckerEnabled" /t REG_DWORD /d 0 /f
	rem # Disable sign-in interception
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SigninInterceptionEnabled" /t REG_DWORD /d 0 /f
	rem # Disable side search
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SideSearchEnabled" /t REG_DWORD /d 0 /f
	rem # Disable default PDF recommendations
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ShowPDFDefaultRecommendationsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Home button
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ShowHomeButton" /t REG_DWORD /d 0 /f
	rem # Disable shopping list
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ShoppingListEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Safe Browsing surveys
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SafeBrowsingSurveysEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Safe Browsing deep scanning
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SafeBrowsingDeepScanningEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Safe Browsing real-time check proxy
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SafeBrowsingProxiedRealTimeChecksAllowed" /t REG_DWORD /d 0 /f
	rem # Disable ignoring compromised password warning
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PasswordDismissCompromisedAlertEnabled" /t REG_DWORD /d 0 /f
	rem # Disable MAM
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "MAMEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Edge management
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeManagementEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Desktop Sharing Hub
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "DesktopSharingHubEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Copilot page context
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "CopilotPageContextEnabled" /t REG_DWORD /d 0 /f
	rem # Disable new tab page content
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageContentEnabled" /t REG_DWORD /d 0 /f
	rem # Disable new tab page app launcher
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageAppLauncherEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Bing Chat on new tab page
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageBingChatEnabled" /t REG_DWORD /d 0 /f
	rem # Disable quick links on new tab page
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageQuickLinksEnabled" /t REG_DWORD /d 0 /f
	rem # Disable QR code generator
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "QRCodeGeneratorEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Spotlight experiences and recommendations
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SpotlightExperiencesAndRecommendationsEnabled" /t REG_DWORD /d 0 /f
	rem # Set tracking prevention to Balanced
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "TrackingPrevention" /t REG_DWORD /d 0 /f
	rem # Configure Cloudflare Gateway DNS with ECS (AdGuard + ABPVN filters)
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "DnsOverHttpsMode" /t REG_SZ /d "automatic" /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "DnsOverHttpsTemplates" /t REG_SZ /d "https://iabucttpma.cloudflare-gateway.com/dns-query{?dns}" /f
	rem # Enable support for Manifest V2 extensions
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ExtensionManifestV2Availability" /t REG_DWORD /d 2 /f
	rem # Disable built-in DNS client
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "BuiltInDnsClientEnabled" /t REG_DWORD /d 0 /f
	rem # Disable proactive authentication workflow
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ProactiveAuthWorkflowEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Application Guard favorites sync
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ApplicationGuardFavoritesSyncEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Application Guard traffic identification
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ApplicationGuardTrafficIdentificationEnabled" /t REG_DWORD /d 0 /f
	rem # Disable seamless sign-in from web to browser
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SeamlessWebToBrowserSignInEnabled" /t REG_DWORD /d 0 /f
	rem # Disable ML autofill
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeAutofillMlEnabled" /t REG_DWORD /d 0 /f
	rem # Disable local GenAI foundational model settings
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "GenAILocalFoundationalModelSettings" /t REG_DWORD /d 1 /f
	rem # Disable performance detector
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "PerformanceDetectorEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Copilot Entra page context
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeEntraCopilotPageContext" /t REG_DWORD /d 0 /f
	rem # Disable spell check
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SpellcheckEnabled" /t REG_DWORD /d 0 /f
	rem # Disable work search results in address bar
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AddressBarWorkSearchResultsEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Scareware Blocker protection
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ScarewareBlockerProtectionEnabled" /t REG_DWORD /d 0 /f
	rem # Disable trending suggestions in address bar
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "AddressBarTrendingSuggestEnabled" /t REG_DWORD /d 0 /f
	rem # Disable "Continue running background apps when Chromium is closed"
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "BackgroundModeEnabled" /t REG_DWORD /d 0 /f
	rem # Disable Startup Boost
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "StartupBoostEnabled" /t REG_DWORD /d 0 /f
	rem # Enable Preload pages
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "NetworkPredictionOptions" /t REG_DWORD /d 0 /f
	rem # Enable Use graphics acceleration when available
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "HardwareAccelerationModeEnabled" /t REG_DWORD /d 1 /f
	rem # Prevent WebRTC IP leaks by disabling non-proxied UDP
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "WebRtcLocalhostIpHandling" /t REG_SZ /d "disable_non_proxied_udp" /f
	rem # Don't allow related websites to view activity in group
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "RelatedWebsiteSetsEnabled" /t REG_DWORD /d 0 /f
	rem # Block third-party cookies
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "BlockThirdPartyCookies" /t REG_DWORD /d 1 /f
	rem # Never share additional OS region info
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultShareAdditionalOSRegionSetting" /t REG_DWORD /d 2 /f
	rem # Enhance security on the web (Standard mode)
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EnhanceSecurityMode" /t REG_DWORD /d 0 /f
	rem # Auto-upgrade to HTTPS
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "HttpsUpgradesEnabled" /t REG_DWORD /d 1 /f
	rem # Force HTTPS mode (optional, currently disabled)
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "HttpsOnlyMode" /t REG_SZ /d "force_enabled" /f
	rem # Change default search engine to Google
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ManagedSearchEngines" /t REG_SZ /d "[{\"is_default\":true,\"keyword\":\"google.com\",\"name\":\"Google\",\"search_url\":\"https://www.google.com/search?q={searchTerms}\",\"suggest_url\":\"https://www.google.com/complete/search?output=chrome^&q={searchTerms}\"}]" /f
	rem # Disable default browser check on startup
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultBrowserSettingEnabled" /t REG_DWORD /d 0 /f
	rem # Performance: Automatically put tabs to sleep after 15 minutes of inactivity
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SleepingTabsTimeout" /t REG_DWORD /d 1 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "SleepingTabsTimeout" /t REG_DWORD /d 384 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EfficiencyModeEnabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "HighEfficiencyModeEnabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ExtensionsPerformanceDetectorEnabled" /t REG_DWORD /d 0 /f
	rem # Show Downloads button on toolbar
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "ShowDownloadsToolbarButton" /t REG_DWORD /d 1 /f
	rem # Copilot icon won't show on toolbar
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "Microsoft365CopilotChatIconEnabled" /t REG_DWORD /d 0 /f
	rem # Block AI search in browsing history
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeHistoryAISearchEnabled" /t REG_DWORD /d 0 /f
	rem # Block default New Tab page
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge\URLBlocklist" /v "1" /t REG_SZ /d "ntp.msn.com" /f
	rem # Install Minimal New Tab plugin
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge\ExtensionInstallForcelist" /v "1" /t REG_SZ /d "khdnagehanbomfdogegmpddmcalmdnbg" /f
	rem # Canvas Blocker - Fingerprint Protect plugin settings
	reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge\ExtensionSettings" /v "ahiddppepedlomdleppkbljnmkchlmdc" /t REG_SZ /d "{\"update_url\":\"https://edge.microsoft.com/extensionwebstorebase/v1/crx\",\"installation_mode\":\"normal_installed\"}" /f

	echo Done.
	pause
	goto app_debloat
)
if %errorlevel% equ 2 (
	reg delete "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /f >NUL 2>&1 
	reg delete "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\EdgeUpdate" /f >NUL 2>&1 
	reg delete "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Edge" /f >NUL 2>&1 
	reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\EdgeUpdate" /f >NUL 2>&1 
	echo Done.
	pause
	goto app_debloat 
)
if %errorlevel% equ 3 (
	goto app_debloat
)
echo ERROR
pause
goto app_debloat 
:network 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║             NETWORK OPTIMIZER                ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo                                     ║  - Disabling Nagle's Algorithm               ║ 
echo                                     ║  - Increasing DNS Cache Size                 ║ 
echo                                     ║  - Optimizing TCP parameters                 ║ 
echo                                     ╚══════════════════════════════════════════════╝
timeout /t 3 >nul 
timeout /t 5 /nobreak >nul 
Applicando i tweak... 
chcp 1251 >nul
netsh int tcp set global netdma=disabled 
reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v Tcp1323Opts /t REG_DWORD /d 0 /f 
ipconfig /flushdns 
sc config "WSearch" start= disabled >NUL 2>&1 
sc stop "WSearch >NUL 2>&1 
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes >NUL 2>&1 
netsh int tcp set heuristics disabled >NUL 2>&1 
netsh int tcp set supp internet congestionprovider=ctcp >NUL 2>&1 
netsh int tcp set global chimney=enabled >NUL 2>&1 
netsh int tcp set global ecncapability=enabled >NUL 2>&1 
netsh int tcp set global timestamps=disabled >NUL 2>&1 
netsh int tcp set global initialRto=2000 >NUL 2>&1 
netsh int tcp set global timestamps=disabled  
netsh int tcp set global rsc=disabled  
netsh int tcp set supplemental template=custom icw=10
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global nonsackttresiliency=disabled 
netsh int tcp set global MaxSynRetransmissions=2  
netsh int tcp set global fastopen=enabled 
netsh int tcp set global fastopenfallback=enabled 
netsh int tcp set global pacingprofile=off 
netsh int tcp set global hystart=disabled 
netsh int tcp set global dca=enabled 
netsh int tcp set global rss=enabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global chimney=disabled
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d 64000 /f
netsh int 6to4 set state state=enabled 
netsh int udp set global uro=enabled  
netsh winsock set autotuning on 
netsh int tcp set supplemental template=custom icw=10 
netsh interface teredo set state enterprise 
netsh int tcp set security mpp=disabled >nul 
netsh int tcp set security profiles=disabled >nul 
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent >NUL 2>&1 
netsh interface ipv4 set subinterface Ethernet mtu=1500 store=persistent >NUL 2>&1 
:: Ottimizzazione delle impostazioni di rete e risparmio energetico via registro 
:: Modifiche alla configurazione di rete per ogni interfaccia 
for /f %%r in ('reg.exe query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /f "1" /d /s ^| Findstr HKEY_') do ( 
    reg.exe add %%r /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f  
    reg.exe add %%r /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f  
    reg.exe add %%r /v "PerformRouterDiscovery" /t REG_DWORD /d "1" /f  
    reg.exe add %%r /v "TCPNoDelay" /t REG_DWORD /d "1" /f >nul 
    reg.exe add %%r /v "TcpAckFrequency" /t REG_DWORD /d "1" /f  
    reg.exe add %%r /v "TcpInitialRTT" /t REG_DWORD /d "2" /f  
    reg.exe add %%r /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f  
    reg.exe add %%r /v "MTU" /t REG_DWORD /d "1500" /f >nul 
    reg.exe add %%r /v "UseZeroBroadcast" /t REG_DWORD /d "0" /f  
) 
@echo off 
:: Ottimizzazioni delle impostazioni di gestione energetica e rete avanzata 
for /f %%a in ('reg.exe query HKLM /v "*WakeOnMagicPacket" /s ^| findstr "HKEY"') do ( 
    for %%v in ( 
        "*EEE" "*FlowControl" "EnableSavePowerNow" "EnablePowerManagement" 
        "EnableDynamicPowerGating" "EnableConnectedPowerGating" "AutoPowerSaveModeEnabled" 
        "AdvancedEEE" "ULPMode" "ReduceSpeedOnPowerDown" "EnablePME" 
        "*WakeOnMagicPacket" "*WakeOnPattern" "*TCPChecksumOffloadIPv4" 
        "*TCPChecksumOffloadIPv6" "*UDPChecksumOffloadIPv4" "*UDPChecksumOffloadIPv6" 
        "WolShutdownLinkSpeed" "*SpeedDuplex" "*LsoV2IPv4" "*LsoV2IPv6" 
        "*TransmitBuffers" "*ReceiveBuffers" "*JumboPacket" "*PMARPOffload" 
        "*PMNSOffload" "*InterruptModeration" "*ModernStandbyWoLMagicPacket" 
        "WakeOnLinkChange" "*IPChecksumOffloadIPv4" "*RSS" "*NumRssQueues" 
        "EnableGreenEthernet" "GigaLite" "PowerSavingMode" "S5WakeOnLan" 
        "AutoDisableGigabit" 
    ) do ( 
        for /f %%i in ('reg.exe query "%%a" /v %%v 2^>nul ^| findstr "HKEY"') do ( 
            @reg.exe add "%%i" /v %%v /t REG_SZ /d "0" /f >nul 2>nul 
        ) 
    ) 
) 
    :: Alcuni valori specifici richiedono un tipo e valore diverso 
chcp 65001 >nul 2>&1
    reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v Attributes /t REG_DWORD /d 0 /f >nul 
) 
echo. 
echo                                     ║  Network optimizations complete              ║ 
echo                                     ╚══════════════════════════════════════════════╝ 
echo. 
pause 
goto main_menu 
:start 
cls 
echo. 
echo                                     ╔══════════════════════════════════════════════╗ 
echo                                     ║             SERVICES OPTIMIZER               ║ 
echo                                     ╠══════════════════════════════════════════════╣ 
echo. 
echo. 
echo. 
echo. 
echo [A] Disable ALL Windows Services
echo [B] Re-enable ALL Windows Services
echo.
echo [C] Disable NON-essential services and tasks
echo [D] Re-enable NON-essential services and tasks
echo.
echo [E] Disable Windows Update
echo [F] Re-enable Windows Update
echo.
echo [G] Disable Remote Access Services
echo [H] Re-enable Remote Access Services
echo.
echo [I] Disable Print Services
echo [J] Re-enable Print Services
echo.
echo [K] Disable Bluetooth
echo [L] Re-enable Bluetooth
echo.
echo [M] Disable Wi-Fi
echo [N] Re-enable Wi-Fi
echo.
echo [O] Re-enable Microsoft Store and Xbox
echo.
echo Press R to exit

set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
:o 
cls 
sc config XblAuthManager start= demand 
sc config XblGameSave start= demand 
sc config XboxGipSvc start= demand 
sc config XboxNetApiSvc start= demand 
sc config GamingServices start= auto 
sc config GamingServicesNet start= auto 
sc config InstallService start= demand 
sc config DoSvc start= auto 
sc config wuauserv start= auto 
sc config ClipSVC start= demand 
sc config TokenBroker start= demand 
sc config LicenseManager start= demand 
sc config WaaSMedicSvc start= demand 
net start XblAuthManager 
net start XblGameSave 
net start XboxGipSvc 
net start XboxNetApiSvc 
net start GamingServices 
net start GamingServicesNet 
net start InstallService 
net start DoSvc 
net start wuauserv 
net start ClipSVC 
net start TokenBroker 
net start LicenseManager 
net start WaaSMedicSvc 
sc config XblAuthManager start= demand 
sc config XblGameSave start= demand 
sc config XboxGipSvc start= demand 
sc config XboxNetApiSvc start= demand 
sc config GamingServices start= auto 
sc config GamingServicesNet start= auto 
sc config InstallService start= demand 
sc config DoSvc start= auto 
sc config wuauserv start= auto 
sc config ClipSVC start= demand 
sc config WaaSMedicSvc start= demand 
sc config LicenseManager start= demand 
sc config TokenBroker start= demand 
sc config wlidsvc start= demand 
sc config UserManager start= auto 
sc config CredentialEnrollmentManagerUserSvc start= demand 
sc config MicrosoftAccountCloudUserAuthentication start= demand 
sc config NgcSvc start= demand 
sc config NgcCtnrSvc start= demand 
net start XblAuthManager 
net start XblGameSave 
net start XboxGipSvc 
net start XboxNetApiSvc 
net start GamingServices 
net start GamingServicesNet 
net start InstallService 
net start DoSvc 
net start wuauserv 
net start ClipSVC 
net start WaaSMedicSvc 
net start LicenseManager 
net start TokenBroker 
net start wlidsvc 
net start UserManager 
net start CredentialEnrollmentManagerUserSvc 
net start MicrosoftAccountCloudUserAuthentication 
net start NgcSvc 
net start NgcCtnrSvc 
sc config wuauserv start= auto 
sc config XblAuthManager start= demand 
sc config XboxNetApiSvc start= demand 
sc config GamingServices start= auto 
sc config TokenBroker start= demand 
sc config LicenseManager start= demand 
sc config ClipSVC start= demand 
net start wuauserv 
net start XblAuthManager 
net start XboxNetApiSvc 
net start GamingServices 
net start TokenBroker 
net start LicenseManager 
net start ClipSVC 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TokenBroker" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LicenseManager" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlidsvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftAccountCloudUserAuthentication" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserManager" /v Start /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v Start /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\InstallService" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServices" /v Start /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServicesNet" /v Start /t REG_DWORD /d 2 /f 
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Epic Games Launcher" /f 
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Epic Games Launcher" /f 
reg delete "HKLM\SOFTWARE\Epic Games" /f 
reg delete "HKLM\SOFTWARE\WOW6432Node\Epic Games" /f 
reg delete "HKCU\Software\Epic Games" /f 
reg delete "HKCR\com.epicgames.launcher" /f 
reg delete "HKCR\com.epicgames.launcher://" /f 
reg delete "HKCU\Software\Classes\com.epicgames.launcher" /f 
pause 
cls 
goto start 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
:O 
cls 
@echo off 
sc config XblAuthManager start= demand 
sc config XblGameSave start= demand 
sc config XboxGipSvc start= demand 
sc config XboxNetApiSvc start= demand 
sc config GamingServices start= auto 
sc config GamingServicesNet start= auto 
sc config InstallService start= demand 
sc config DoSvc start= auto 
sc config wuauserv start= auto 
sc config ClipSVC start= demand 
sc config TokenBroker start= demand 
sc config LicenseManager start= demand 
sc config WaaSMedicSvc start= demand 
net start XblAuthManager 
net start XblGameSave 
net start XboxGipSvc 
net start XboxNetApiSvc 
net start GamingServices 
net start GamingServicesNet 
net start InstallService 
net start DoSvc 
net start wuauserv 
net start ClipSVC 
net start TokenBroker 
net start LicenseManager 
net start WaaSMedicSvc 
sc config XblAuthManager start= demand 
sc config XblGameSave start= demand 
sc config XboxGipSvc start= demand 
sc config XboxNetApiSvc start= demand 
sc config GamingServices start= auto 
sc config GamingServicesNet start= auto 
sc config InstallService start= demand 
sc config DoSvc start= auto 
sc config wuauserv start= auto 
sc config ClipSVC start= demand 
sc config WaaSMedicSvc start= demand 
sc config LicenseManager start= demand 
sc config TokenBroker start= demand 
sc config wlidsvc start= demand 
sc config UserManager start= auto 
sc config CredentialEnrollmentManagerUserSvc start= demand 
sc config MicrosoftAccountCloudUserAuthentication start= demand 
sc config NgcSvc start= demand 
sc config NgcCtnrSvc start= demand 
net start XblAuthManager 
net start XblGameSave 
net start XboxGipSvc 
net start XboxNetApiSvc 
net start GamingServices 
net start GamingServicesNet 
net start InstallService 
net start DoSvc 
net start wuauserv 
net start ClipSVC 
net start WaaSMedicSvc 
net start LicenseManager 
net start TokenBroker 
net start wlidsvc 
net start UserManager 
net start CredentialEnrollmentManagerUserSvc 
net start MicrosoftAccountCloudUserAuthentication 
net start NgcSvc 
net start NgcCtnrSvc 
sc config wuauserv start= auto 
sc config XblAuthManager start= demand 
sc config XboxNetApiSvc start= demand 
sc config GamingServices start= auto 
sc config TokenBroker start= demand 
sc config LicenseManager start= demand 
sc config ClipSVC start= demand 
net start wuauserv 
net start XblAuthManager 
net start XboxNetApiSvc 
net start GamingServices 
net start TokenBroker 
net start LicenseManager 
net start ClipSVC 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TokenBroker" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LicenseManager" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlidsvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftAccountCloudUserAuthentication" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserManager" /v Start /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v Start /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\InstallService" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v Start /t REG_DWORD /d 3 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServices" /v Start /t REG_DWORD /d 2 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GamingServicesNet" /v Start /t REG_DWORD /d 2 /f 
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Epic Games Launcher" /f 
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Epic Games Launcher" /f 
reg delete "HKLM\SOFTWARE\Epic Games" /f 
reg delete "HKLM\SOFTWARE\WOW6432Node\Epic Games" /f 
reg delete "HKCU\Software\Epic Games" /f 
reg delete "HKCR\com.epicgames.launcher" /f 
reg delete "HKCR\com.epicgames.launcher://" /f 
reg delete "HKCU\Software\Classes\com.epicgames.launcher" /f 
pause 
cls 
goto start 
:A 
echo. 
echo. 
@echo on 
reg add "HKLM\System\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f 
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /fd 
reg add "HKLM\System\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f 
reg add "HKLM\System\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "2" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f 
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f 
sc config wlidsvc start= disabled 
sc config DisplayEnhancementService start= disabled 
sc config DiagTrack start= disabled 
sc config DusmSvc start= disabled 
sc config TabletInputService start= disabled 
sc config RetailDemo start= disabled 
sc config Fax start= disabled 
sc config SharedAccess start= disabled 
sc config lfsvc start= disabled 
sc config WpcMonSvc start= disabled 
sc config SessionEnv start= disabled 
sc config MicrosoftEdgeElevationService start= disabled 
sc config edgeupdate start= disabled 
sc config edgeupdatem start= disabled 
sc config autotimesvc start= disabled 
sc config CscService start= disabled 
sc config TermService start= disabled 
sc config SensorDataService start= disabled 
sc config SensorService start= disabled 
sc config SensrSvc start= disabled 
sc config shpamsvc start= disabled 
sc config diagnosticshub.standardcollector.service start= disabled 
sc config PhoneSvc start= disabled 
sc config TapiSrv start= disabled 
sc config UevAgentService start= disabled 
sc config WalletService start= disabled 
sc config TokenBroker start= disabled 
sc config WebClient start= disabled 
sc config MixedRealityOpenXRSvc start= disabled 
sc config stisvc start= disabled 
sc config WbioSrvc start= disabled 
sc config icssvc start= disabled 
sc config Wecsvc start= disabled 
sc config XboxGipSvc start= disabled 
sc config XblAuthManager start= disabled 
sc config XboxNetApiSvc start= disabled 
sc config XblGameSave start= disabled 
sc config SEMgrSvc start= disabled 
sc config iphlpsvc start= disabled 
sc config Backupper Service start= disabled 
sc config BthAvctpSvc start= disabled 
sc config BDESVC start= disabled 
sc config cbdhsvc start= disabled 
sc config CDPSvc start= disabled 
sc config CDPUserSvc start= disabled 
sc config DevQueryBroker start= disabled 
sc config DevicesFlowUserSvc start= disabled 
sc config dmwappushservice start= disabled 
sc config DispBrokerDesktopSvc start= disabled 
sc config TrkWks start= disabled 
sc config dLauncherLoopback start= disabled 
sc config EFS start= disabled 
sc config fdPHost start= disabled 
sc config FDResPub start= disabled 
sc config IKEEXT start= disabled 
sc config NPSMSvc start= disabled 
sc config PcaSvc start= disabled 
sc config RasMan start= disabled 
sc config RetailDemo start=disabled 
sc config SstpSvc start=disabled 
sc config ShellHWDetection start= disabled 
sc config SSDPSRV start= disabled 
sc config OneSyncSvc start= disabled 
sc config lmhosts start= disabled 
sc config UserDataSvc start= disabled 
sc config UnistoreSvc start= disabled 
sc config FontCache start= disabled 
sc config W32Time start= disabled 
sc config tzautoupdate start= disabled 
sc config DsSvc start= disabled 
sc config DevicesFlowUserSvc_5f1ad start= disabled 
sc config diagsvc start= disabled 
sc config DialogBlockingService start= disabled 
sc config PimIndexMaintenanceSvc_5f1ad start= disabled 
sc config MessagingService_5f1ad start= disabled 
sc config AppVClient start= disabled 
sc config MsKeyboardFilter start= disabled 
sc config NetTcpPortSharing start= disabled 
sc config ssh-agent start= disabled 
sc config SstpSvc start= disabled 
sc config OneSyncSvc_5f1ad start= disabled 
sc config wercplsupport start= disabled 
sc config WMPNetworkSvc start= disabled 
sc config WerSvc start= disabled 
sc config WpnUserService_5f1ad start= disabled 
sc config WinHttpAutoProxySvc start= disabled 
sc config DsmSvc start= disabled 
sc config DeviceAssociationService start= disabled 
sc config stisvc start= disabled 
schtasks /DELETE /TN "AMDInstallLauncher" /f 
schtasks /DELETE /TN "AMDLinkUpdate" /f 
schtasks /DELETE /TN "AMDRyzenMasterSDKTask" /f 
schtasks /DELETE /TN "Driver Easy Scheduled Scan" /f 
schtasks /DELETE /TN "ModifyLinkUpdate" /f 
schtasks /DELETE /TN "SoftMakerUpdater" /f 
schtasks /DELETE /TN "StartCN" /f 
schtasks /DELETE /TN "StartDVR" /f 
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable 
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /Disable 
schtasks /Change /TN "Microsoft\Windows\Device Information\Device" /Disable 
schtasks /Change /TN "Microsoft\Windows\Device Information\Device User" /Disable 
schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /Disable 
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /Disable 
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable 
schtasks /Change /TN "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Disable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable 
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Disable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Disable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Disable 
schtasks /Change /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Disable 
schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Disable 
schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /Disable 
schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /Disable 
schtasks /Change /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /Disable 
schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /Disable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Disable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /Disable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /Disable 
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable 
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable 
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Cellular" /Disable 
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Logon" /Disable 
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable 
schtasks /Change /TN "Microsoft\Windows\Maps\MapsToastTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /Disable 
schtasks /Change /TN "Microsoft\Windows\MUI\LPRemove" /Disable 
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable 
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable 
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable 
schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /Disable 
schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /Disable 
schtasks /Change /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Disable 
schtasks /Change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /Disable 
schtasks /Change /TN "Microsoft\Windows\Servicing\StartComponentCleanup" /Disable 
schtasks /Change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /Disable 
schtasks /Change /TN "Microsoft\Windows\Task Manager\Interactive" /Disable 
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable 
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable 
schtasks /Change /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /Disable 
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr" /Disable 
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-Maintenance" /Disable 
schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Disable 
schtasks /Change /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\WDI\ResolutionHost" /Disable 
schtasks /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Disable 
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /Disable 
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /Disable 
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Disable 
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Disable 
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Disable 
schtasks /Change /TN "Microsoft\Windows\WwanSvc\NotificationTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\WwanSvc\OobeDiscovery" /Disable 
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Disable 
sc stop uhssvc 
sc stop upfc 
sc stop PushToInstall 
sc stop BITS 
sc stop InstallService 
sc stop uhssvc 
sc stop UsoSvc 
sc stop wuauserv 
sc stop LanmanServer 
sc stop ClipSVC 
sc config ClipSVC start= disabled 
sc config BITS start= disabled 
sc config InstallService start= disabled 
sc config uhssvc start= disabled 
sc config UsoSvc start= disabled 
sc config wuauserv start= disabled 
sc config LanmanServer start= disabled 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsoSvc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upfc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\uhssvc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ossrs" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "1" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "1" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgradePeriod" /t REG_DWORD /d "1" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "1" /f 
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdates" /Disable 
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /Disable 
schtasks /Change /TN "Microsoft\Windows\InstallService\SmartRetry" /Disable 
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /Disable 
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Report policies" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Disable 
schtasks /Change /TN "Microsoft\Windows\WaaSMedic\PerformRemediation" /Disable 
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable 
sc config RemoteRegistry start= disabled 
sc config RemoteAccess start= disabled 
sc config WinRM start= disabled 
sc config PrintNotify start= disabled 
sc config Spooler start= disabled 
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable 
sc config BTAGService start= disabled 
sc config bthserv start= disabled 
sc config LanmanWorkstation start= disabled  
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable 
reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "0" /f 
sc config BFE start= demand 
sc config Dnscache start= demand 
sc config WinHttpAutoProxySvc start= demand 
sc config Dhcp start= auto 
sc config DPS start= auto 
sc config lmhosts start= disabled 
sc config nsi start= auto 
sc config Winmgmt start= auto 
sc config WlanSvc start= demand 
@echo off 
echo. 
echo. 
echo ALL services and tasks DISABLED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
:B 
echo. 
echo. 
@echo on 
reg add "HKLM\System\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "3" /f 
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /fd 
sc config wlidsvc start= demand 
sc config DisplayEnhancementService start= demand 
sc config DiagTrack start= demand 
sc config DusmSvc start= demand 
sc config TabletInputService start= demand 
sc config RetailDemo start= demand 
sc config Fax start= demand 
sc config SharedAccess start= demand 
sc config lfsvc start= demand 
sc config WpcMonSvc start= demand 
sc config SessionEnv start= demand 
sc config MicrosoftEdgeElevationService start= demand 
sc config edgeupdate start= demand 
sc config edgeupdatem start= demand 
sc config autotimesvc start= demand 
sc config CscService start= demand 
sc config TermService start= demand 
sc config SensorDataService start= demand 
sc config SensorService start= demand 
sc config SensrSvc start= demand 
sc config shpamsvc start= demand 
sc config diagnosticshub.standardcollector.service start= demand 
sc config PhoneSvc start= demand 
sc config TapiSrv start= demand 
sc config UevAgentService start= demand 
sc config WalletService start= demand 
sc config TokenBroker start= demand 
sc config WebClient start= demand 
sc config MixedRealityOpenXRSvc start= demand 
sc config stisvc start= demand 
sc config WbioSrvc start= demand 
sc config icssvc start= demand 
sc config Wecsvc start= demand 
sc config XboxGipSvc start= demand 
sc config XblAuthManager start= demand 
sc config XboxNetApiSvc start= demand 
sc config XblGameSave start= demand 
sc config SEMgrSvc start= demand 
sc config iphlpsvc start= demand 
sc config Backupper Service start= demand 
sc config BthAvctpSvc start= demand 
sc config BDESVC start= demand 
sc config cbdhsvc start= demand 
sc config CDPSvc start= demand 
sc config CDPUserSvc start= demand 
sc config DevQueryBroker start= demand 
sc config DevicesFlowUserSvc start= demand 
sc config dmwappushservice start= demand 
sc config DispBrokerDesktopSvc start= demand 
sc config TrkWks start= demand 
sc config dLauncherLoopback start= demand 
sc config EFS start= demand 
sc config fdPHost start= demand 
sc config FDResPub start= demand 
sc config IKEEXT start= demand 
sc config NPSMSvc start= demand 
sc config PcaSvc start= demand 
sc config RasMan start= demand 
sc config RetailDemo start=disabled 
sc config SstpSvc start=disabled 
sc config ShellHWDetection start= demand 
sc config SSDPSRV start= demand 
sc config OneSyncSvc start= demand 
sc config lmhosts start= demand 
sc config UserDataSvc start= demand 
sc config UnistoreSvc start= demand 
sc config FontCache start= demand 
sc config W32Time start= demand 
sc config tzautoupdate start= demand 
sc config DsSvc start= demand 
sc config DevicesFlowUserSvc_5f1ad start= demand 
sc config diagsvc start= demand 
sc config DialogBlockingService start= demand 
sc config PimIndexMaintenanceSvc_5f1ad start= demand 
sc config MessagingService_5f1ad start= demand 
sc config AppVClient start= demand 
sc config MsKeyboardFilter start= demand 
sc config NetTcpPortSharing start= demand 
sc config ssh-agent start= demand 
sc config SstpSvc start= demand 
sc config OneSyncSvc_5f1ad start= demand 
sc config wercplsupport start= demand 
sc config WMPNetworkSvc start= demand 
sc config WerSvc start= demand 
sc config WpnUserService_5f1ad start= demand 
sc config WinHttpAutoProxySvc start= demand 
sc config DsmSvc start= demand 
sc config DeviceAssociationService start= demand 
sc config stisvc start= demand 
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Enable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Enable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Enable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Enable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Enable 
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /Enable 
schtasks /Change /TN "Microsoft\Windows\Device Information\Device" /Enable 
schtasks /Change /TN "Microsoft\Windows\Device Information\Device User" /Enable 
schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /Enable 
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /Enable 
schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /Enable 
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Enable 
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Enable 
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /Enable 
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Enable 
schtasks /Change /TN "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Enable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Enable 
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Enable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Enable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Enable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Enable 
schtasks /Change /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Enable 
schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Enable 
schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /Enable 
schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /Enable 
schtasks /Change /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /Enable 
schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /Enable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Enable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /Enable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /Enable 
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Enable 
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Enable 
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Cellular" /Enable 
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Logon" /Enable 
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Enable 
schtasks /Change /TN "Microsoft\Windows\Maps\MapsToastTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /Enable 
schtasks /Change /TN "Microsoft\Windows\MUI\LPRemove" /Enable 
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Enable 
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Enable 
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Enable 
schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /Enable 
schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /Enable 
schtasks /Change /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Enable 
schtasks /Change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /Enable 
schtasks /Change /TN "Microsoft\Windows\Servicing\StartComponentCleanup" /Enable 
schtasks /Change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /Enable 
schtasks /Change /TN "Microsoft\Windows\Task Manager\Interactive" /Enable 
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Enable 
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Enable 
schtasks /Change /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /Enable 
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr" /Enable 
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-Maintenance" /Enable 
schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Enable 
schtasks /Change /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\WDI\ResolutionHost" /Enable 
schtasks /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Enable 
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /Enable 
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /Enable 
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Enable 
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Enable 
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Enable 
schtasks /Change /TN "Microsoft\Windows\WwanSvc\NotificationTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\WwanSvc\OobeDiscovery" /Enable 
sc config uhssvc start= demand 
sc config upfc start= demand 
sc config PushToInstall start= demand 
sc config BITS start= demand 
sc config InstallService start= demand 
sc config uhssvc start= demand 
sc config UsoSvc start= demand 
sc config wuauserv start= demand 
sc config LanmanServer start= demand 
sc config ClipSVC start= disabled 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsoSvc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upfc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\uhssvc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ossrs" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "0" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "0" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgradePeriod" /t REG_DWORD /d "0" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "0" /f 
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdates" /Enable 
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /Enable 
schtasks /Change /TN "Microsoft\Windows\InstallService\SmartRetry" /Enable 
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /Enable 
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Report policies" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Enable 
schtasks /Change /TN "Microsoft\Windows\WaaSMedic\PerformRemediation" /Enable 
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /Enable 
schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Enable
sc config RemoteAccess start= demand 
sc config WinRM start= demand 
sc config PrintNotify start= demand 
sc config Spooler start= demand 
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Enable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Enable 
sc config BTAGService start= demand 
sc config bthserv start= demand 
sc config LanmanWorkstation start= demand 
sc config WdiServiceHost start= demand 
sc config NcbService start= demand 
sc config ndu start= demand 
sc config Netman start= demand 
sc config netprofm start= demand 
sc config WwanSvc start= demand 
sc config Dhcp start= auto 
sc config DPS start= auto 
sc config lmhosts start= auto 
sc config NlaSvc start= auto 
sc config nsi start= auto 
sc config RmSvc start= auto 
sc config Wcmsvc start= auto 
sc config Winmgmt start= auto 
sc config WlanSvc start= auto 
schtasks /Change /TN "Microsoft\Windows\WlanSvc\CDSSync" /Enable 
schtasks /Change /TN "Microsoft\Windows\WCM\WiFiTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Enable 
reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f 
reg add "HKLM\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\System\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f 
net start DPS 
net start nsi 
net start NlaSvc 
net start Dhcp 
net start Wcmsvc 
net start RmSvc 
wmic path win32_networkadapter where index=0 call disable 
wmic path win32_networkadapter where index=1 call disable 
wmic path win32_networkadapter where index=2 call disable 
wmic path win32_networkadapter where index=3 call disable 
wmic path win32_networkadapter where index=4 call disable 
wmic path win32_networkadapter where index=5 call disable 
wmic path win32_networkadapter where index=0 call enable 
wmic path win32_networkadapter where index=1 call enable 
wmic path win32_networkadapter where index=2 call enable 
wmic path win32_networkadapter where index=3 call enable 
wmic path win32_networkadapter where index=4 call enable 
wmic path win32_networkadapter where index=5 call enable 
arp -d * 
route -f 
nbtstat -R 
nbtstat -RR 
netcfg -d 
netsh winsock reset 
netsh int 6to4 reset all 
netsh int httpstunnel reset all 
netsh int ip reset 
netsh int isatap reset all 
netsh int portproxy reset all 
netsh int tcp reset all 
netsh int teredo reset all 
netsh branchcache reset 
ipconfig /release 
ipconfig /renew 
@echo off 
echo. 
echo. 
echo ALL services and tasks REACTIVATED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
:2 
echo. 
echo. 
@echo off 
echo Total amount of unnecessary services to be disabled = 94. 
echo To view a description for those services press Windows and R key at the same time. 
echo Type services.msc then hit ENTER. 
echo Total amount of unnecessary tasks to be disabled = 82. 
echo To view a description for those tasks press Windows and R key at the same time. 
echo Type taskschd.msc then hit ENTER. 
echo. 
echo. 
echo Unnecessary Services: (Total 94) 
echo. 
echo. 
echo PimIndexMaintenanceSvc 
echo WinHttpAutoProxySvc 
echo wlidsvc 
echo DisplayEnhancementService 
echo DiagTrack 
echo DeviceAssociationService 
echo DusmSvc 
echo TabletInputService 
echo RetailDemo 
echo Fax 
echo SharedAccess 
echo lfsvc 
echo WpcMonSvc 
echo SessionEnv 
echo MicrosoftEdgeElevationService 
echo edgeupdate 
echo edgeupdatem 
echo autotimesvc 
echo CscService 
echo TermService 
echo SensorDataService 
echo SensorService 
echo SensrSvc 
echo shpamsvc 
echo stisvc 
echo diagnosticshub.standardcollector.service 
echo PhoneSvc 
echo TapiSrv 
echo UevAgentService 
echo WalletService 
echo TokenBroker 
echo WebClient 
echo MixedRealityOpenXRSvc 
echo stisvc 
echo WbioSrvc 
echo icssvc 
echo Wecsvc 
echo XboxGipSvc 
echo XblAuthManager 
echo XboxNetApiSvc 
echo XblGameSave 
echo SEMgrSvc 
echo iphlpsvc 
echo Backupper Service 
echo BthAvctpSvc 
echo BDESVC 
echo cbdhsvc 
echo CDPSvc 
echo CDPUserSvc 
echo DevQueryBroker 
echo DevicesFlowUserSvc 
echo dmwappushservice 
echo DispBrokerDesktopSvc 
echo TrkWks 
echo dLauncherLoopback 
echo EFS 
echo fdPHost 
echo FDResPub 
echo IKEEXT 
echo NPSMSvc 
echo PcaSvc 
echo RasMan 
echo RetailDemo start=disabled 
echo SstpSvc start=disabled 
echo ShellHWDetection 
echo SSDPSRV 
echo OneSyncSvc 
echo lmhosts 
echo UserDataSvc 
echo UnistoreSvc 
echo Wcmsvc 
echo FontCache 
echo W32Time 
echo tzautoupdate 
echo DsSvc 
echo DevicesFlowUserSvc_5f1ad 
echo diagsvc 
echo DialogBlockingService 
echo PimIndexMaintenanceSvc_5f1ad 
echo MessagingService_5f1ad 
echo AppVClient 
echo MsKeyboardFilter 
echo NetTcpPortSharing 
echo ssh-agent 
echo SstpSvc 
echo OneSyncSvc_5f1ad 
echo wercplsupport 
echo WMPNetworkSvc 
echo WerSvc 
echo WpnUserService_5f1ad 
echo WinHttpAutoProxySvc 
echo DsmSvc 
echo. 
echo. 
echo Update and Store Services: (Total 13) 
echo. 
echo. 
echo ClipSVC 
echo DoSvc 
echo upfc 
echo uhssvc 
echo uhssvc 
echo UsoSvc 
echo ossrs 
echo BITS 
echo wuauserv 
echo PushToInstall 
echo InstallService 
echo LanmanServer 
echo WaaSMedicSvc 
echo. 
echo. 
echo Remote: (Total: 3) 
echo RemoteRegistry 
echo RemoteAccess 
echo WinRM 
echo. 
echo 
echo Printer (Total 2) 
echo PrintNotify 
echo Spooler 
echo. 
echo. 
echo Bluetooth: (Total 2) 
echo BTAGService 
echo bthserv 
echo. 
echo. 
echo Wifi: (Total 3) 
echo RmSvc 
echo NlaSvc 
echo LanmanWorkstation 
echo. 
echo. 
echo Unnecessary Tasks: (Total 82) 
echo. 
echo. 
echo "Driver Easy Scheduled Scan" 
echo "ModifyLinkUpdate" 
echo "SoftMakerUpdater" 
echo "StartCN" 
echo "StartDVR" 
echo Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser 
echo Microsoft\Windows\Application Experience\PcaPatchDbTask 
echo Microsoft\Windows\Application Experience\ProgramDataUpdater 
echo Microsoft\Windows\Application Experience\StartupAppTask 
echo Microsoft\Windows\Autochk\Proxy 
echo Microsoft\Windows\Customer Experience Improvement Program\Consolidator 
echo Microsoft\Windows\Customer Experience Improvement Program\UsbCeip 
echo Microsoft\Windows\Defrag\ScheduledDefrag 
echo Microsoft\Windows\Device Information\Device 
echo Microsoft\Windows\Device Information\Device User 
echo Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner 
echo Microsoft\Windows\Diagnosis\Scheduled 
echo Microsoft\Windows\DiskCleanup\SilentCleanup 
echo Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector 
echo Microsoft\Windows\DiskFootprint\Diagnostics 
echo Microsoft\Windows\DiskFootprint\StorageSense 
echo Microsoft\Windows\DUSM\dusmtask 
echo Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask 
echo Microsoft\Windows\Feedback\Siuf\DmClient 
echo Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload 
echo Microsoft\Windows\FileHistory\File History (maintenance mode) 
echo Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures 
echo Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing 
echo Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting 
echo Microsoft\Windows\Flighting\OneSettings\RefreshCache 
echo Microsoft\Windows\Input\LocalUserSyncDataAvailable 
echo Microsoft\Windows\Input\MouseSyncDataAvailable 
echo Microsoft\Windows\Input\PenSyncDataAvailable 
echo Microsoft\Windows\Input\TouchpadSyncDataAvailable 
echo Microsoft\Windows\International\Synchronize Language Settings 
echo Microsoft\Windows\LanguageComponentsInstaller\Installation 
echo Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources 
echo Microsoft\Windows\LanguageComponentsInstaller\Uninstallation 
echo Microsoft\Windows\License Manager\TempSignedLicenseExchange 
echo Microsoft\Windows\License Manager\TempSignedLicenseExchange 
echo Microsoft\Windows\Management\Provisioning\Cellular 
echo Microsoft\Windows\Management\Provisioning\Logon 
echo Microsoft\Windows\Maintenance\WinSAT 
echo Microsoft\Windows\Maps\MapsToastTask 
echo Microsoft\Windows\Maps\MapsUpdateTask 
echo Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parserd 
echo Microsoft\Windows\MUI\LPRemove 
echo Microsoft\Windows\NetTrace\GatherNetworkInfo 
echo Microsoft\Windows\PI\Sqm-Tasks 
echo Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem 
echo Microsoft\Windows\PushToInstall\Registration 
echo Microsoft\Windows\Ras\MobilityManager 
echo Microsoft\Windows\RecoveryEnvironment\VerifyWinRE 
echo Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask 
echo Microsoft\Windows\RetailDemo\CleanupOfflineContent 
echo Microsoft\Windows\Servicing\StartComponentCleanup 
echo Microsoft\Windows\SettingSync\NetworkStateChangeTask 
echo Microsoft\Windows\Setup\SetupCleanupTask 
echo Microsoft\Windows\Setup\SnapshotCleanupTask 
echo Microsoft\Windows\SpacePort\SpaceAgentTask 
echo Microsoft\Windows\SpacePort\SpaceManagerTask 
echo Microsoft\Windows\Speech\SpeechModelDownloadTask 
echo Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization 
echo Microsoft\Windows\Task Manager\Interactive 
echo Microsoft\Windows\Time Synchronization\ForceSynchronizeTime 
echo Microsoft\Windows\Time Synchronization\SynchronizeTime 
echo Microsoft\Windows\Time Zone\SynchronizeTimeZone 
echo Microsoft\Windows\TPM\Tpm-HASCertRetr 
echo Microsoft\Windows\TPM\Tpm-Maintenance 
echo Microsoft\Windows\UPnP\UPnPHostConfig 
echo Microsoft\Windows\User Profile Service\HiveUploadTask 
echo Microsoft\Windows\WDI\ResolutionHost 
echo Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange 
echo Microsoft\Windows\WOF\WIM-Hash-Management 
echo Microsoft\Windows\WOF\WIM-Hash-Validation 
echo Microsoft\Windows\Work Folders\Work Folders Logon Synchronization 
echo Microsoft\Windows\Work Folders\Work Folders Maintenance Work 
echo Microsoft\Windows\Workplace Join\Automatic-Device-Join 
echo Microsoft\Windows\WwanSvc\NotificationTask 
echo Microsoft\Windows\WwanSvc\OobeDiscovery 
echo. 
echo. 
echo Update and Store Tasks: (Total 12) 
echo. 
echo. 
echo Microsoft\Windows\InstallService\ScanForUpdates 
echo Microsoft\Windows\InstallService\ScanForUpdatesAsUser 
echo Microsoft\Windows\InstallService\SmartRetry 
echo Microsoft\Windows\InstallService\WakeUpAndContinueUpdates 
echo Microsoft\Windows\InstallService\WakeUpAndScanForUpdates 
echo Microsoft\Windows\UpdateOrchestrator\Report policies 
echo Microsoft\Windows\UpdateOrchestrator\Schedule Scan 
echo Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task 
echo Microsoft\Windows\UpdateOrchestrator\UpdateModelTask 
echo Microsoft\Windows\UpdateOrchestrator\USO_UxBroker 
echo Microsoft\Windows\WaaSMedic\PerformRemediation 
echo Microsoft\Windows\WindowsUpdate\Scheduled Start 
echo. 
echo. 
echo Printer: (Total 2) 
echo. 
echo. 
echo Microsoft\Windows\Printing\EduPrintProv 
echo Microsoft\Windows\Printing\PrinterCleanupTask 
echo. 
echo. 
echo Wifi: (Total 3) 
echo Microsoft\Windows\WlanSvc\CDSSync 
echo Microsoft\Windows\WCM\WiFiTask 
echo Microsoft\Windows\NlaSvc\WiFiTask 
echo. 
echo. 
echo All services and tasks listed above. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
:C 
echo. 
echo. 
@echo on 
reg add "HKLM\System\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f 
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /fd 
reg add "HKLM\System\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f 
reg add "HKLM\System\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneCaptureEnabled" /t REG_DWORD /d "0" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "2" /f 
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f 
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f 
sc config wlidsvc start= disabled 
sc config DisplayEnhancementService start= disabled 
sc config DiagTrack start= disabled 
sc config DusmSvc start= disabled 
sc config TabletInputService start= disabled 
sc config RetailDemo start= disabled 
sc config Fax start= disabled 
sc config SharedAccess start= disabled 
sc config lfsvc start= disabled 
sc config WpcMonSvc start= disabled 
sc config SessionEnv start= disabled 
sc config MicrosoftEdgeElevationService start= disabled 
sc config edgeupdate start= disabled 
sc config edgeupdatem start= disabled 
sc config autotimesvc start= disabled 
sc config CscService start= disabled 
sc config TermService start= disabled 
sc config SensorDataService start= disabled 
sc config SensorService start= disabled 
sc config SensrSvc start= disabled 
sc config shpamsvc start= disabled 
sc config diagnosticshub.standardcollector.service start= disabled 
sc config PhoneSvc start= disabled 
sc config TapiSrv start= disabled 
sc config UevAgentService start= disabled 
sc config WalletService start= disabled 
sc config TokenBroker start= disabled 
sc config WebClient start= disabled 
sc config MixedRealityOpenXRSvc start= disabled 
sc config stisvc start= disabled 
sc config WbioSrvc start= disabled 
sc config icssvc start= disabled 
sc config Wecsvc start= disabled 
sc config XboxGipSvc start= disabled 
sc config XblAuthManager start= disabled 
sc config XboxNetApiSvc start= disabled 
sc config XblGameSave start= disabled 
sc config SEMgrSvc start= disabled 
sc config iphlpsvc start= disabled 
sc config Backupper Service start= disabled 
sc config BthAvctpSvc start= disabled 
sc config BDESVC start= disabled 
sc config cbdhsvc start= disabled 
sc config CDPSvc start= disabled 
sc config CDPUserSvc start= disabled 
sc config DevQueryBroker start= disabled 
sc config DevicesFlowUserSvc start= disabled 
sc config dmwappushservice start= disabled 
sc config DispBrokerDesktopSvc start= disabled 
sc config TrkWks start= disabled 
sc config dLauncherLoopback start= disabled 
sc config EFS start= disabled 
sc config fdPHost start= disabled 
sc config FDResPub start= disabled 
sc config IKEEXT start= disabled 
sc config NPSMSvc start= disabled 
sc config PcaSvc start= disabled 
sc config RasMan start= disabled 
sc config RetailDemo start=disabled 
sc config SstpSvc start=disabled 
sc config ShellHWDetection start= disabled 
sc config SSDPSRV start= disabled  
sc config OneSyncSvc start= disabled 
sc config lmhosts start= disabled 
sc config UserDataSvc start= disabled 
sc config UnistoreSvc start= disabled 
sc config FontCache start= disabled 
sc config W32Time start= disabled 
sc config tzautoupdate start= disabled 
sc config DsSvc start= disabled 
sc config DevicesFlowUserSvc_5f1ad start= disabled 
sc config diagsvc start= disabled 
sc config DialogBlockingService start= disabled 
sc config PimIndexMaintenanceSvc_5f1ad start= disabled 
sc config MessagingService_5f1ad start= disabled 
sc config AppVClient start= disabled 
sc config MsKeyboardFilter start= disabled 
sc config NetTcpPortSharing start= disabled 
sc config ssh-agent start= disabled 
sc config SstpSvc start= disabled 
sc config OneSyncSvc_5f1ad start= disabled 
sc config wercplsupport start= disabled 
sc config WMPNetworkSvc start= disabled 
sc config WerSvc start= disabled 
sc config WpnUserService_5f1ad start= disabled 
sc config WinHttpAutoProxySvc start= disabled 
sc config DsmSvc start= disabled 
schtasks /DELETE /TN "AMDInstallLauncher" /f 
schtasks /DELETE /TN "AMDLinkUpdate" /f 
schtasks /DELETE /TN "AMDRyzenMasterSDKTask" /f 
schtasks /DELETE /TN "Driver Easy Scheduled Scan" /f 
schtasks /DELETE /TN "ModifyLinkUpdate" /f 
schtasks /DELETE /TN "SoftMakerUpdater" /f 
schtasks /DELETE /TN "StartCN" /f 
schtasks /DELETE /TN "StartDVR" /f 
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable 
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /Disable 
schtasks /Change /TN "Microsoft\Windows\Device Information\Device" /Disable 
schtasks /Change /TN "Microsoft\Windows\Device Information\Device User" /Disable 
schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /Disable 
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /Disable 
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable 
schtasks /Change /TN "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Disable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable 
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Disable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Disable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Disable 
schtasks /Change /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Disable 
schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Disable 
schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /Disable 
schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /Disable 
schtasks /Change /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /Disable 
schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /Disable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Disable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /Disable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /Disable 
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable 
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable 
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Cellular" /Disable 
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Logon" /Disable 
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable 
schtasks /Change /TN "Microsoft\Windows\Maps\MapsToastTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /Disable 
schtasks /Change /TN "Microsoft\Windows\MUI\LPRemove" /Disable 
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable 
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable 
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable 
schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /Disable 
schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /Disable 
schtasks /Change /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Disable 
schtasks /Change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /Disable 
schtasks /Change /TN "Microsoft\Windows\Servicing\StartComponentCleanup" /Disable 
schtasks /Change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /Disable 
schtasks /Change /TN "Microsoft\Windows\Task Manager\Interactive" /Disable 
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable 
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable 
schtasks /Change /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /Disable 
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr" /Disable 
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-Maintenance" /Disable 
schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Disable 
schtasks /Change /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\WDI\ResolutionHost" /Disable 
schtasks /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Disable 
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /Disable 
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /Disable 
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Disable 
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Disable 
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Disable 
schtasks /Change /TN "Microsoft\Windows\WwanSvc\NotificationTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\WwanSvc\OobeDiscovery" /Disable 
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Disable 
@echo off 
echo. 
echo. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:D 
echo. 
echo. 
@echo on 
reg add "HKLM\System\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "3" /f 
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /fd 
sc config wlidsvc start= demand 
sc config DisplayEnhancementService start= demand 
sc config DiagTrack start= demand 
sc config DusmSvc start= demand 
sc config TabletInputService start= demand 
sc config RetailDemo start= demand 
sc config Fax start= demand 
sc config SharedAccess start= demand 
sc config lfsvc start= demand 
sc config WpcMonSvc start= demand 
sc config SessionEnv start= demand 
sc config MicrosoftEdgeElevationService start= demand 
sc config edgeupdate start= demand 
sc config edgeupdatem start= demand 
sc config autotimesvc start= demand 
sc config CscService start= demand 
sc config TermService start= demand 
sc config SensorDataService start= demand 
sc config SensorService start= demand 
sc config SensrSvc start= demand 
sc config shpamsvc start= demand 
sc config diagnosticshub.standardcollector.service start= demand 
sc config PhoneSvc start= demand 
sc config TapiSrv start= demand 
sc config UevAgentService start= demand 
sc config WalletService start= demand 
sc config TokenBroker start= demand 
sc config WebClient start= demand 
sc config MixedRealityOpenXRSvc start= demand 
sc config stisvc start= demand 
sc config WbioSrvc start= demand 
sc config icssvc start= demand 
sc config Wecsvc start= demand 
sc config XboxGipSvc start= demand 
sc config XblAuthManager start= demand 
sc config XboxNetApiSvc start= demand 
sc config XblGameSave start= demand 
sc config SEMgrSvc start= demand 
sc config iphlpsvc start= demand 
sc config Backupper Service start= demand 
sc config BthAvctpSvc start= demand 
sc config BDESVC start= demand 
sc config cbdhsvc start= demand 
sc config CDPSvc start= demand 
sc config CDPUserSvc start= demand 
sc config DevQueryBroker start= demand 
sc config DevicesFlowUserSvc start= demand 
sc config dmwappushservice start= demand 
sc config DispBrokerDesktopSvc start= demand 
sc config TrkWks start= demand 
sc config dLauncherLoopback start= demand 
sc config EFS start= demand 
sc config fdPHost start= demand 
sc config FDResPub start= demand 
sc config IKEEXT start= demand 
sc config NPSMSvc start= demand 
sc config PcaSvc start= demand 
sc config RasMan start= demand 
sc config RetailDemo start=disabled 
sc config SstpSvc start=disabled 
sc config ShellHWDetection start= demand 
sc config SSDPSRV start= demand 
sc config OneSyncSvc start= demand 
sc config lmhosts start= demand 
sc config UserDataSvc start= demand 
sc config UnistoreSvc start= demand 
sc config Wcmsvc start= demand 
sc config FontCache start= demand 
sc config W32Time start= demand 
sc config tzautoupdate start= demand 
sc config DsSvc start= demand 
sc config DevicesFlowUserSvc_5f1ad start= demand 
sc config diagsvc start= demand 
sc config DialogBlockingService start= demand 
sc config PimIndexMaintenanceSvc_5f1ad start= demand 
sc config MessagingService_5f1ad start= demand 
sc config AppVClient start= demand 
sc config MsKeyboardFilter start= demand 
sc config NetTcpPortSharing start= demand 
sc config ssh-agent start= demand 
sc config SstpSvc start= demand 
sc config OneSyncSvc_5f1ad start= demand 
sc config wercplsupport start= demand 
sc config WMPNetworkSvc start= demand 
sc config WerSvc start= demand 
sc config WpnUserService_5f1ad start= demand 
sc config WinHttpAutoProxySvc start= demand 
sc config DsmSvc start= demand 
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Enable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Enable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Enable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Enable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Enable 
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /Enable 
schtasks /Change /TN "Microsoft\Windows\Device Information\Device" /Enable 
schtasks /Change /TN "Microsoft\Windows\Device Information\Device User" /Enable 
schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /Enable 
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /Enable 
schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /Enable 
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Enable 
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Enable 
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /Enable 
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Enable 
schtasks /Change /TN "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Enable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Enable 
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Enable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Enable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Enable 
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Enable 
schtasks /Change /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Enable 
schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Enable 
schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /Enable 
schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /Enable 
schtasks /Change /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /Enable 
schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /Enable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Enable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /Enable 
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /Enable 
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Enable 
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Enable 
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Cellular" /Enable 
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Logon" /Enable 
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Enable 
schtasks /Change /TN "Microsoft\Windows\Maps\MapsToastTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /Enable 
schtasks /Change /TN "Microsoft\Windows\MUI\LPRemove" /Enable 
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Enable 
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Enable 
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Enable 
schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /Enable 
schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /Enable 
schtasks /Change /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Enable 
schtasks /Change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /Enable 
schtasks /Change /TN "Microsoft\Windows\Servicing\StartComponentCleanup" /Enable 
schtasks /Change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /Enable  
schtasks /Change /TN "Microsoft\Windows\Task Manager\Interactive" /Enable 
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Enable 
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Enable 
schtasks /Change /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /Enable 
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr" /Enable 
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-Maintenance" /Enable 
schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Enable 
schtasks /Change /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\WDI\ResolutionHost" /Enable 
schtasks /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Enable 
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /Enable 
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /Enable 
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Enable 
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Enable 
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Enable 
schtasks /Change /TN "Microsoft\Windows\WwanSvc\NotificationTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\WwanSvc\OobeDiscovery" /Enable 
@echo off 
echo. 
echo. 
echo unnecessary services and tasks REACTIVATED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:E 
echo. 
echo. 
@echo on 
sc stop ClipSVC 
sc stop uhssvc 
sc stop upfc 
sc stop PushToInstall 
sc stop BITS 
sc stop InstallService 
sc stop uhssvc 
sc stop UsoSvc 
sc stop wuauserv 
sc stop LanmanServer 
sc config ClipSVC start= disabled 
sc config BITS start= disabled 
sc config InstallService start= disabled 
sc config uhssvc start= disabled 
sc config UsoSvc start= disabled 
sc config wuauserv start= disabled 
sc config LanmanServer start= disabled 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsoSvc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upfc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\uhssvc" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ossrs" /v Start /t reg_dword /d 4 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "1" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "1" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgradePeriod" /t REG_DWORD /d "1" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "1" /f 
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdates" /Disable 
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /Disable 
schtasks /Change /TN "Microsoft\Windows\InstallService\SmartRetry" /Disable 
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /Disable 
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Report policies" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Disable 
schtasks /Change /TN "Microsoft\Windows\WaaSMedic\PerformRemediation" /Disable 
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable 
@echo off 
echo.1 
echo. 
echo windows update and store services and tasks DISABLED. 
pause 
cls 
goto start 
echo Some windows update tasks can not be disabled as administrator, for instructions press 3. 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
pause 
:F 
echo. 
echo. 
@echo on 
sc config ClipSVC start= demand 
sc config uhssvc start= demand 
sc config upfc start= demand 
sc config PushToInstall start= demand 
sc config BITS start= demand 
sc config InstallService start= demand 
sc config uhssvc start= demand 
sc config UsoSvc start= demand 
sc config wuauserv start= demand 
sc config LanmanServer start= demand 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsoSvc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upfc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\uhssvc" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ossrs" /v Start /t reg_dword /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "0" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "0" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgradePeriod" /t REG_DWORD /d "0" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "0" /f 
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdates" /Enable 
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /Enable 
schtasks /Change /TN "Microsoft\Windows\InstallService\SmartRetry" /Enable 
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /Enable 
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Report policies" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Enable 
schtasks /Change /TN "Microsoft\Windows\WaaSMedic\PerformRemediation" /Enable 
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /Enable 
schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Enable 
@echo off 
echo. 
echo. 
echo windows update and store services and tasks REACTIVATED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:G 
echo. 
echo. 
@echo on 
sc config RemoteRegistry start= disabled 
sc config RemoteAccess start= disabled 
sc config WinRM start= disabled 
@echo off 
echo. 
echo. 
echo remote services and tasks DISABLED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:H 
echo. 
echo. 
@echo on 
sc config RemoteRegistry start= demand 
sc config RemoteAccess start= demand 
sc config WinRM start= demand 
@echo off 
echo. 
echo. 
echo remote services and tasks REACTIVATED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:I 
echo. 
echo. 
@echo on 
sc config PrintNotify start= disabled 
sc config Spooler start= disabled 
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable 
@echo off 
echo. 
echo. 
echo printer services and tasks DISABLED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:J 
echo. 
echo. 
@echo on 
sc config PrintNotify start= demand 
sc config Spooler start= demand 
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Enable 
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Enable 
@echo off 
echo. 
echo. 
echo printer services and tasks REACTIVATED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:K 
echo. 
echo. 
@echo on 
sc config BTAGService start= disabled 
sc config bthserv start= disabled 
@echo off 
echo. 
echo. 
echo bluetooth services and tasks DISABLED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:L 
echo. 
echo. 
@echo on 
sc config BTAGService start= demand 
sc config bthserv start= demand 
@echo off 
echo bluetooth services and tasks REACTIVATED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:M 
echo. 
echo. 
@echo on 
sc config LanmanWorkstation start= disabled 
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable 
reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "0" /f 
sc config BFE start= demand 
sc config Dnscache start= demand 
sc config WinHttpAutoProxySvc start= demand 
sc config Dhcp start= auto 
sc config DPS start= auto 
sc config lmhosts start= disabled 
sc config nsi start= auto 
sc config Winmgmt start= auto 
sc config WlanSvc start= demand 
@echo off 
echo. 
echo. 
echo wifi services and tasks DISABLED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:N 
echo. 
echo. 
@echo on 
sc config LanmanWorkstation start= demand 
sc config WdiServiceHost start= demand 
sc config NcbService start= demand 
sc config ndu start= demand 
sc config Netman start= demand 
sc config netprofm start= demand 
sc config WwanSvc start= demand 
sc config Dhcp start= auto 
sc config DPS start= auto 
sc config lmhosts start= auto 
sc config NlaSvc start= auto 
sc config nsi start= auto 
sc config RmSvc start= auto 
sc config Wcmsvc start= auto 
sc config Winmgmt start= auto 
sc config WlanSvc start= auto 
schtasks /Change /TN "Microsoft\Windows\WlanSvc\CDSSync" /Enable 
schtasks /Change /TN "Microsoft\Windows\WCM\WiFiTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Enable 
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Enable  
reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f 
reg add "HKLM\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\System\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f 
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f 
net start DPS 
net start nsi 
net start NlaSvc 
net start Dhcp 
net start Wcmsvc 
net start RmSvc 
wmic path win32_networkadapter where index=0 call disable 
wmic path win32_networkadapter where index=1 call disable 
wmic path win32_networkadapter where index=2 call disable 
wmic path win32_networkadapter where index=3 call disable 
wmic path win32_networkadapter where index=4 call disable 
wmic path win32_networkadapter where index=5 call disable 
wmic path win32_networkadapter where index=0 call enable 
wmic path win32_networkadapter where index=1 call enable 
wmic path win32_networkadapter where index=2 call enable 
wmic path win32_networkadapter where index=3 call enable 
wmic path win32_networkadapter where index=4 call enable 
wmic path win32_networkadapter where index=5 call enable 
arp -d * 
route -f 
nbtstat -R 
nbtstat -RR 
netcfg -d 
netsh winsock reset 
netsh int 6to4 reset all 
netsh int httpstunnel reset all 
netsh int ip reset 
netsh int isatap reset all 
netsh int portproxy reset all 
netsh int tcp reset all 
netsh int teredo reset all 
netsh branchcache reset 
ipconfig /release 
ipconfig /renew 
@echo off 
echo. 
echo. 
echo wifi services and tasks REACTIVATED. 
pause 
cls 
goto start 
set /p example= 
if %example% == 0 goto start 
if %example% == 1 goto 1 
if %example% == 2 goto 2 
if %example% == 3 goto 3 
if %example% == 4 goto 4 
if %example% == 5 goto 5 
if %example% == 6 goto 6 
if %example% == 7 goto 7 
if %example% == 8 goto 8 
if %example% == 9 goto 9 
if %example% == a goto A 
if %example% == A goto A 
if %example% == b goto B 
if %example% == B goto B 
if %example% == c goto C 
if %example% == C goto C 
if %example% == d goto D 
if %example% == D goto D 
if %example% == e goto E 
if %example% == E goto E 
if %example% == f goto F 
if %example% == F goto F 
if %example% == g goto G 
if %example% == G goto G 
if %example% == h goto H 
if %example% == H goto H 
if %example% == i goto I 
if %example% == I goto I 
if %example% == j goto J 
if %example% == J goto J 
if %example% == k goto K 
if %example% == K goto K 
if %example% == l goto L 
if %example% == L goto L 
if %example% == m goto M 
if %example% == M goto M 
if %example% == n goto N 
if %example% == N goto N 
if %example% == r goto R 
if %example% == R goto R 
if %example% == x goto X 
if %example% == X goto X 
if %example% == o goto o 
if %example% == O goto O 
pause 
:3 
goto start 
pause 
:1 
goto start 
pause 
:X 
goto  
pause 
:R 
timeout /t 3 >nul 
echo. 
pause 
goto main_menu 