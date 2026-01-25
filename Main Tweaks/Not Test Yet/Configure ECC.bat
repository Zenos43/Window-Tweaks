@echo off

dism >nul 2>&1 || (echo ^<Run the script as administrator^> && pause>nul && cls&exit)
title Configure ECC
color B

for /L %%i in (0,1,9) do (
    for /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\000%%i" /v "ProviderName" 2^>nul') do (
	if /i "%%b"=="NVIDIA" (
		set G=000%%i
		)
	)
)

choice -c 12 -n -m "[1] Disable ECC | [2] Enable ECC"
if %errorlevel% equ 1 (
	cls
	@echo Disable ECC Fuse Check
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMNoECCFuseCheck" /t REG_DWORD /d "1" /f > nul 2>&1
	
	@echo Disable L1 ECC
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMEnableL1ECC" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable SM ECC
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMEnableSMECC" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable SHM ECC
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMEnableSHMECC" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable Assert On ECC Errors
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMAssertOnEccErrors" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable Other ECC
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RM1441072" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable Guest ECC State
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMGuestECCState" /t REG_DWORD /d "0" /f > nul 2>&1

	@echo Disable ECC using Nvidia SMI
	nvidia-smi.exe -e 0 > nul 2>&1
	@echo.
	@echo Disabled ECC!
	pause
)
if %errorlevel% equ 2 (
	reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMNoECCFuseCheck" /f > nul 2>&1
	reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMEnableL1ECC" /f > nul 2>&1
	reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMEnableSMECC" /f > nul 2>&1
	reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMEnableSHMECC" /f > nul 2>&1
	reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMAssertOnEccErrors" /f > nul 2>&1
	reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RM1441072" /f > nul 2>&1
	reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\%G%" /v "RMGuestECCState" /f > nul 2>&1
	nvidia-smi.exe -e 1 > nul 2>&1
)

exit
