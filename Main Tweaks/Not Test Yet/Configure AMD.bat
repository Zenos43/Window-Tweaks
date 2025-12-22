@echo off
dism >nul 2>&1 || (echo ^<Run the script as administrator^> && pause>nul && cls&exit)
title Configure AMD
color B
mode 50,4

for /f "tokens=*" %%c in (
	'reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /f "Radeon" /t REG_SZ /s 2^>nul ^| findstr /l "}"'
) do (
	set gpu_key=%%c
)

choice -c 12 -n -m "[1] add AMD Tweaks | [2] remove AMD Tweaks"
if %errorlevel% equ 1 (
	@echo Disable Sleep
	reg add "%gpu_key%" /v "DisableGfxCoarseGrainLightSleep" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxCpLightSleep" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxMediumGrainLightSleep" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxRlcLightSleep" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableDrmLightSleep" /t REG_DWORD /d "1" /f > nul 2>&1

	@echo Disable ULPS
	reg add "%gpu_key%" /v "PP_EnableCFULPSPolicy" /t reg_dword /d 0 /f >nul
	reg add "%gpu_key%" /v "EnableUlps" /t reg_dword /d 0 /f >nul

	@echo Disable Radeon Boost
	reg add "%gpu_key%" /v "KMD_RadeonBoostEnabled" /t reg_dword /d 0 /f > nul 2>&1

	@echo Disable Clock Gating
	reg add "%gpu_key%" /v "DisableGfx3DCGLS" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxCGTS" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxCGTS_LS" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxMGCGPerfMon" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableDrmdmaMGCG" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableDrmMGCG" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfx3DCGCG" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "EnableUvdClockGating" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "EnableVceSwClockGating" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "EnableGfxClockGatingThruSmu" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "EnableSysClockGatingThruSmu" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "IRQMgrDisableIHClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "swGcClockGatingMask" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "swGcClockGatingOverride" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableRomMediumGrainClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableRomMGCGClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableSamuClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableSysClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableVceClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxCoarseGrainClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxMediumGrainClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableMcMediumGrainClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableNbioMediumGrainClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DalDisableClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DalFineGrainClockGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableAllClockGating" /t reg_dword /d 1 /f > nul 2>&1

	@echo Disable Power Gating
	reg add "%gpu_key%" /v "DisableGfxPGCondClearStateWA" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableCpPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableAcpPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableDrmdmaPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableDynamicGfxMGPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGDSPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGfxCGPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableGFXPipelinePowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableUVDPowerGatingDynamic" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisablePowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableQuickGfxMGPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableSAMUPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableStaticGfxMGPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableUVDPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableVCEPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableXdmaPowerGating" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableXdmaSclkGating" /t reg_dword /d 1 /f > nul 2>&1

	@echo Disable Powerdown
	reg add "%gpu_key%" /v "DalPSRSkipCRTCPowerDown" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "PP_GPUPowerDownEnabled" /t reg_dword /d 0 /f > nul 2>&1

	@echo Disable ASPM
	reg add "%gpu_key%" /v "DisableAspmSWL1" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableAspmL0s" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "DisableAspmL1" /t reg_dword /d 1 /f > nul 2>&1
	reg add "%gpu_key%" /v "EnableAspmL0s" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "EnableAspmL1" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "EnableAspmL1SS" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "AspmL0sTimeout" /t reg_dword /d 0 /f > nul 2>&1
	reg add "%gpu_key%" /v "AspmL1Timeout" /t reg_dword /d 0 /f > nul 2>&1

	@echo Enable Performance Mode
	reg add "%gpu_key%" /v "PP_Force3DPerformanceMode" /t REG_DWORD /d "1" /f > nul 2>&1
	reg add "%gpu_key%" /v "PP_ForceHighDPMLevel" /t REG_DWORD /d "1" /f > nul 2>&1

	@echo Disable ClkReq
	reg add "%gpu_key%" /v "DisableClkReqSupport" /t REG_DWORD /d "1" /f > nul 2>&1

	@echo Disable FBC
	reg add "%gpu_key%" /v "DisableFBCSupport" /t REG_DWORD /d "1" /f > nul 2>&1

	@echo Disable UvD
	reg add "%gpu_key%" /v "DisableForceUvdToSclk" /t REG_DWORD /d "1" /f > nul 2>&1

	@echo Configure Downgrade
	reg add "%gpu_key%" /v "PipeTilingDowngrade" /t REG_DWORD /d "0" /f > nul 2>&1
	reg add "%gpu_key%" /v "GroupSizeDowngrade" /t REG_DWORD /d "0" /f > nul 2>&1
	reg add "%gpu_key%" /v "RowTilingDowngrade" /t REG_DWORD /d "0" /f > nul 2>&1
	reg add "%gpu_key%" /v "SampleSplitDowngrade" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable Spread Spectrum
	reg add "%gpu_key%" /v "EnableSpreadSpectrum" /t REG_DWORD /d "0" /f > nul 2>&1

	reg add "HKCU\Software\AMD\CN" /v "PowerSaverAutoEnable_CUR" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable Services
	reg add "HKLM\System\CurrentControlSet\Services\amdwddmg" /v "ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
	reg add "HKLM\System\CurrentControlSet\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
	reg add "HKLM\System\CurrentControlSet\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
	reg add "HKLM\System\CurrentControlSet\Services\amdfendr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
	reg add "HKLM\System\CurrentControlSet\Services\amdfendrmgr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
	reg add "HKLM\System\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1

	@echo Disable Auto Update
	reg add "HKCU\Software\AMD\CN" /v "AutoUpdateTriggered" /t REG_DWORD /d "0" /f > nul 2>&1
	reg add "HKCU\Software\AMD\CN" /v "AutoUpdate" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable Animations
	reg add "HKCU\Software\AMD\CN" /v "AnimationEffect" /t REG_SZ /d "false" /f > nul 2>&1
	sc config amdlog start=disabled
	exit
)
if %errorlevel% equ 2 (
	reg delete "%gpu_key%" /v "DisableGfxCoarseGrainLightSleep" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxCpLightSleep" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxMediumGrainLightSleep" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfx3DCGLS" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxCGTS" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxCGTS_LS" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxMGCGPerfMon" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxPGCondClearStateWA" /f > nul 2>&1
	reg delete "%gpu_key%" /v "PP_Force3DPerformanceMode" /f > nul 2>&1
	reg delete "%gpu_key%" /v "PP_ForceHighDPMLevel" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableClkReqSupport" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableDrmdmaMGCG" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableDrmLightSleep" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableDrmMGCG" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableFBCSupport" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableForceUvdToSclk" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfx3DCGCG" /f > nul 2>&1
	reg delete "%gpu_key%" /v "GroupSizeDowngrade" /f > nul 2>&1
	reg delete "%gpu_key%" /v "PipeTilingDowngrade" /f > nul 2>&1
	reg delete "%gpu_key%" /v "RowTilingDowngrade" /f > nul 2>&1
	reg delete "%gpu_key%" /v "SampleSplitDowngrade" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxRlcLightSleep" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableSpreadSpectrum" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DalDisableClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DalFineGrainClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableAcpPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableAllClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableCpPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableDrmdmaPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableDynamicGfxMGPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGDSPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxCGPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGFXPipelinePowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableUVDPowerGatingDynamic" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxCoarseGrainClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableGfxMediumGrainClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableMcMediumGrainClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableNbioMediumGrainClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisablePowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableQuickGfxMGPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableRomMediumGrainClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableRomMGCGClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableSamuClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableSAMUPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableStaticGfxMGPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableSysClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableUVDPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableVceClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableVCEPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableXdmaPowerGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableXdmaSclkGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableUvdClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableVceSwClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableGfxClockGatingThruSmu" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableSysClockGatingThruSmu" /f > nul 2>&1
	reg delete "%gpu_key%" /v "IRQMgrDisableIHClockGating" /f > nul 2>&1
	reg delete "%gpu_key%" /v "swGcClockGatingMask" /f > nul 2>&1
	reg delete "%gpu_key%" /v "swGcClockGatingOverride" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableAspmSWL1" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableAspmL0s" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DisableAspmL1" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableAspmL0s" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableAspmL1" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableAspmL1SS" /f > nul 2>&1
	reg delete "%gpu_key%" /v "AspmL0sTimeout" /f > nul 2>&1
	reg delete "%gpu_key%" /v "AspmL1Timeout" /f > nul 2>&1
	reg delete "%gpu_key%" /v "DalPSRSkipCRTCPowerDown" /f > nul 2>&1
	reg delete "%gpu_key%" /v "PP_GPUPowerDownEnabled" /f > nul 2>&1
	reg delete "%gpu_key%" /v "PP_EnableCFULPSPolicy" /f > nul 2>&1
	reg delete "%gpu_key%" /v "EnableUlps" /f > nul 2>&1
	reg delete "%gpu_key%" /v "KMD_RadeonBoostEnabled" /f > nul 2>&1
	exit
)

exit