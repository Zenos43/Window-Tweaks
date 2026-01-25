@echo off
setlocal enabledelayedexpansion
cd %systemroot%\system32
call :IsAdmin

REM Credits to questionable212122
REM https://discord.gg/YdYVSBbZWY

set "REG_PATH=HKLM\SYSTEM\CurrentControlSet\Control\usbflags"

for /f "tokens=*" %%i in ('reg query "%REG_PATH%" 2^>nul ^| findstr /r "[0-9A-F]\{12\}"') do (
    set "DEVICE_KEY=%%i"
    
    REM Remove the registry path to isolate the device ID
    for /f "tokens=*" %%a in ("!DEVICE_KEY:%REG_PATH%\=!") do (
        set "DEVICE_ID=%%a"
        
        REM Verify that the device ID is exactly 12 hex characters
        echo !DEVICE_ID! | findstr /r /c:"^[0-9A-F]\{12\}$" >nul
        if !errorlevel! EQU 0 (
            echo Disabling LPM for device: !DEVICE_ID!
            reg add "%REG_PATH%\!DEVICE_ID!" /v "DisableLPM" /t REG_DWORD /d "1" /f
        )
    )
)

set "USB_ENUM_PATH=HKLM\SYSTEM\CurrentControlSet\Enum\USB"

for /f "tokens=*" %%d in ('reg query "%USB_ENUM_PATH%" 2^>nul') do (
    set "DEVICE_PATH=%%d"
    
    for /f "tokens=*" %%i in ('reg query "!DEVICE_PATH!" 2^>nul') do (
        set "INSTANCE_PATH=%%i"
        
            reg query "!INSTANCE_PATH!\Device Parameters" >nul 2>&1
            if !errorlevel! EQU 0 (
                echo Configuring parameters for: !INSTANCE_PATH:*USB\=!
                reg add "!INSTANCE_PATH!\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f
                reg add "!INSTANCE_PATH!\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f
                reg add "!INSTANCE_PATH!\Device Parameters" /v "IdleTimeoutPeriodInMilliSec" /t REG_DWORD /d "0" /f
                reg add "!INSTANCE_PATH!\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
                reg add "!INSTANCE_PATH!\Device Parameters" /v "EnhancedPowerManagementUseMonitor" /t REG_DWORD /d "0" /f
                reg add "!INSTANCE_PATH!\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f
                reg add "!INSTANCE_PATH!\Device Parameters" /v "SelectiveSuspendTimeout" /t REG_DWORD /d "0" /f
                reg add "!INSTANCE_PATH!\Device Parameters" /v "SuppressInputInCS" /t REG_DWORD /d "0" /f
                reg add "!INSTANCE_PATH!\Device Parameters" /v "SystemInputSuppressionEnabled" /t REG_DWORD /d "0" /f
                
                reg query "!INSTANCE_PATH!\Device Parameters\Wdf" >nul 2>&1
                if !errorlevel! EQU 0 (
                    echo Adjusting Wdf power settings for: !INSTANCE_PATH:*USB\=!
                    reg add "!INSTANCE_PATH!\Device Parameters\Wdf" /v "IdleInWorkingState" /t REG_DWORD /d "0" /f
                    reg add "!INSTANCE_PATH!\Device Parameters\Wdf" /v "SleepstudyState" /t REG_DWORD /d "0" /f
                    reg add "!INSTANCE_PATH!\Device Parameters\Wdf" /v "WdfDefaultIdleInWorkingState" /t REG_DWORD /d "0" /f
                    reg add "!INSTANCE_PATH!\Device Parameters\Wdf" /v "WdfDirectedPowerTransitionChildrenOptional" /t REG_DWORD /d "0" /f
                    reg add "!INSTANCE_PATH!\Device Parameters\Wdf" /v "WdfDirectedPowerTransitionEnable" /t REG_DWORD /d "0" /f
                    reg add "!INSTANCE_PATH!\Device Parameters\Wdf" /v "WdfUseWdfTimerForPofx" /t REG_DWORD /d "0" /f
                )
            )
        )
    )

    set "ROOT_HUB_PATH=HKLM\SYSTEM\CurrentControlSet\Enum\USB\ROOT_HUB30"
    if exist "%ROOT_HUB_PATH%" (
        for /f "tokens=*" %%r in ('reg query "%ROOT_HUB_PATH%" 2^>nul') do (
            set "HUB_PATH=%%r"
            reg add "!HUB_PATH!\Device Parameters\Wdf" /v "IdleInWorkingState" /t REG_DWORD /d "0" /f
            reg add "!HUB_PATH!\Device Parameters\Wdf" /v "SleepstudyState" /t REG_DWORD /d "0" /f
            reg add "!HUB_PATH!\Device Parameters\Wdf" /v "WdfDefaultIdleInWorkingState" /t REG_DWORD /d "0" /f
            reg add "!HUB_PATH!\Device Parameters\Wdf" /v "WdfDirectedPowerTransitionChildrenOptional" /t REG_DWORD /d "0" /f
            reg add "!HUB_PATH!\Device Parameters\Wdf" /v "WdfDirectedPowerTransitionEnable" /t REG_DWORD /d "0" /f
            reg add "!HUB_PATH!\Device Parameters\Wdf" /v "WdfUseWdfTimerForPofx" /t REG_DWORD /d "0" /f
            echo Adjusted Wdf parameters for: !HUB_PATH:*ROOT_HUB30\=!
        )
    )


reg add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "DisableHCS0Idle" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "Allow64KLowOrFullSpeedControlTransfers" /t REG_DWORD /d "1" /f


reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "TimerCoalescing" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "RITdemonTimerPowerSaveElapse" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "RITdemonTimerPowerSaveCoalescing" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "IsVailContainer" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "DCEInUseTelemetryDisabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "GlobalDCEsInUseThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "ProcessDCEsInUseThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "DesktopHeapLogging" /t REG_DWORD /d "0" /f


reg add "HKCU\Control Panel\Mouse" /v "RawMouseThrottleEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "RawMouseThrottleForced" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "RawMouseThrottleDuration" /t REG_DWORD /d "20" /f
reg add "HKCU\Control Panel\Mouse" /v "RawMouseThrottleLeeway" /t REG_DWORD /d "0" /f


reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\DefaultPressure" /v "Disable" /t REG_DWORD /d "1" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogRequestQueueTimeoutMsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogPoCalloutTimeoutMsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogPowerOnGdiTimeoutMsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogDwmSyncFlushTimeoutMsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogDrvSetMonitorTimeoutMsec" /t REG_DWORD /d "0" /f


reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows\Input\DelayZonePalmRejection" /v "RejectionEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows\Input\DelayZonePalmRejection" /v "DisableTimeThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows\Input\DelayZonePalmRejection" /v "DelayZonePalmRejectionExtensionSizeDips" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows\Input\DelayZonePalmRejection" /v "DelayZonePalmRejectionThresholdMS" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\Input" /v "WakeOnInputDeviceTypes" /t REG_DWORD /d "0" /f


reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BamThrottling" /v "DisableWindowHinting" /t REG_DWORD /d "1" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Wdf" /v "WdfGlobalLogsDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Wdf" /v "WdfGlobalSleepStudyDisabled" /t REG_DWORD /d "1" /f



reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweakn" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverState /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EmiPollingInterval /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EmiTelemetryActivePollingInterval /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EmiTelemetryCsPollingInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PmiPollingInterval" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergySaverState" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EmiPollingInterval" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EmiTelemetryActivePollingInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EmiTelemetryCsPollingInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PmiPollingInterval" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "ActivityCheckTimerLowPowerPeriodMs" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "ActivityCheckTimerPeriodMs" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "AlternateCancellationTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "DisableTriggerCoalescing" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "DefaultTriggerCoalescingTime" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "EnergyBudgetDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "EnergyBudgetBgTaskPercentage" /t REG_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "EnergyBudgetClearDebtOnFg" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "EnergyBudgetDebtCancellationDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "EnergyBudgetInfiniteOnFg" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "EnergyBudgetInitialMultiplier" /t REG_DWORD /d "100" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "GlobalCoalesceMaxAdditionalTasksPerWake" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "GlobalCoalesceMaxEarlyFireWindowMs" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "StandbyBudgetCommonPortionPercent" /t REG_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "StandbyBudgetRuntimeMsLimitPerHour" /t REG_DWORD /d "4294967295" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure\Parameters" /v "StandbyBudgetWakeLimitPerHour" /t REG_DWORD /d "4294967295" /f


reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\SYSTEM" /v "EnableLocalLogonSid" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\SYSTEM" /v "EnableVirtualization" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "5" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "UuidSequenceNumber" /t REG_DWORD /d "3322358" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "TickcountRolloverDelay" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "KernelWorkerTestFlags" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "MaximumKernelWorkerThreads" /t REG_DWORD /d "25000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "ForceEnableMutantAutoboost" /t REG_DWORD /d "1" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "AllowRemoteDASD" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "DisableDiskCounters" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "IoAllowLoadCrashDumpDriver" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "IoEnableSessionZeroAccessCheck" /t REG_DWORD /d "1" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ForceParkingRequested" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "EnableWerUserReporting" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "HyperStartDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableLightWeightSuspend" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "TimerCheckFlags" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ForceIdleGracePeriod" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaxDynamicTickDuration" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "EnableTickAccumulationFromAccountingPeriods" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "EnablePerCpuClockTickScheduling" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SerializeTimerExpiration" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "XStateContextLookasidePerProcMaxDepth" /t REG_DWORD /d "1024" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "LongDpcQueueThreshold" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "LongDpcRuntimeThreshold" /t REG_DWORD /d "50" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ForceBugcheckForDpcWatchdog" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ForceForegroundBoostDecay" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "RebalanceMinPriority" /t REG_DWORD /d "16" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "InterruptSteeringFlags" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "AlwaysTrackIoBoosting" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableControlFlowGuardExportSuppression" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaximumCooperativeIdleSearchWidth" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "PowerSettingProfile" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "WatchdogResumeTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "WatchdogSleepTimeout" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SkipTickOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "Win32CalloutWatchdogBugcheckEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "IdleScanInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "64" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CustomizeDuringSetup" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HiberFileSizePercent" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MfBufferingThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCalculateActualUtilization" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SourceSettingsVersion" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TimerRebaseThresholdOnDripsExit" /t REG_DWORD /d "60" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LidReliabilityState" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableInboxPepGeneratedConstraints" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableDisplayBurstOnPowerSourceChange" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "IdleProcessorsRequireQosManagement" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TtmEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "AllowAudioToEnableExecutionRequiredPowerRequests" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DeepIoCoalescingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "IgnoreCsComplianceCheck" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DripsSwHwDivergenceEnableLiveDump" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepstudyAccountingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnableInputSuppression" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCheckTimerImplementation" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "StandbyConnectivityGracePeriod" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnforceAusterityMode" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "AlwaysComputeQosHints" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HeteroMultiCoreClassesEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HeteroMultiClassParkingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableIdleStatesAtBoot" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfBoostAtGuaranteed" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MSDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "FxAccountingTelemetryDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Win32kCalloutWatchdogTimeoutSeconds" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnableMinimalHiberFile" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumFrequencyOverride" /t REG_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PoFxSystemIrpWaitForReportDevicePowered" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "AllowSystemRequiredPowerRequests" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingFlushInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HeteroHgsEePerfHintsIndependentEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HeteroHgsPlusDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "IpiLastClockOwnerDisable" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogRequestQueueTimeoutMsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogPoCalloutTimeoutMsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogPowerOnGdiTimeoutMsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogDwmSyncFlushTimeoutMsec" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerWatchdogDrvSetMonitorTimeoutMsec" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ForceHibernateDisabled" /v "Policy" /t REG_DWORD /d "1" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "EnableDsNetRefresh" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "EnabledActions" /t REG_DWORD /d "0" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f



:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof