rem # RAM Tweaks

rem # https://www.elevenforum.com/members/garlin.5387/
rem # https://www.elevenforum.com/t/gpu-tweaks-batch-script.30134/post-521530

rem # Pagefile Size in MB 
rem # 8GB = 8192 / 16GB = 16384 / 32GB = 32768 / 64GB = 65536

rem # InitialSize=65536,MaximumSize=65536

rem # Disable Page File
rem reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "c:\pagefile.sys 0 0" /f

if not exist C:\Windows\System32\wbem\WMIC.exe (
    echo Installing WMIC...
    DISM /Online /Add-Capability /CapabilityName:WMIC~~~~
    echo Done.
)

rem # Sets SvcHostSplitThresholdInKB, IoPageLockLimit, CacheUnmapBehindLengthInMB, and ModifiedWriteMaximum according to RAM size

@echo off

@echo off

echo.
echo 1. 8GB RAM
echo 2. 16GB RAM
echo 3. 32GB RAM
echo 4. 64GB RAM
echo C. Cancel
echo.
choice /c 1234C /m "Choose an option :"

if 5 EQU %ERRORLEVEL% (
   echo User chose to cancel.
) else if 4 EQU %ERRORLEVEL% (
   call :64gb
) else if 3 EQU %ERRORLEVEL% (
   call :32gb
) else if 2 EQU %ERRORLEVEL% (
   call :16gb
) else if 1 EQU %ERRORLEVEL% (
   call :8gb
) else if 0 EQU %ERRORLEVEL% (
   echo User bailed out.
)

goto :eof

:8gb
echo User chose 8GB RAM

rem wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False
rem wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=8192,MaximumSize=8192

reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "800000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "800000" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "0xffffffff" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CacheUnmapBehindLengthInMB" /t REG_DWORD /d "0x00000200" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ModifiedWriteMaximum" /t REG_DWORD /d "0x00000040" /f
goto :end

:16gb
echo User chose 16GB RAM

rem wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False
rem wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=16384,MaximumSize=16384

reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "1000000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "1000000" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "0xffffffff" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CacheUnmapBehindLengthInMB" /t REG_DWORD /d "0x00000400" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ModifiedWriteMaximum" /t REG_DWORD /d "0x00000080" /f
goto :end

:32gb
echo User chose 32GB RAM

rem wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False
rem wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=32768,MaximumSize=32768

reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "2000000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "2000000" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "0xffffffff" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CacheUnmapBehindLengthInMB" /t REG_DWORD /d "0x00000800" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ModifiedWriteMaximum" /t REG_DWORD /d "0x00000160" /f
goto :end

:64gb
echo User chose 64GB RAM

rem wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False
rem wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=65536,MaximumSize=65536

reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "4000000" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "4000000" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "0xffffffff" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CacheUnmapBehindLengthInMB" /t REG_DWORD /d "0x00001600" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ModifiedWriteMaximum" /t REG_DWORD /d "0x00000320" /f
goto :end

:end

rem # https://msfn.org/board/topic/25684-registry-myths-1-iopagelocklimit/
rem # https://www.reddit.com/r/techsupport/comments/s92o06/paged_pool_and_non_paged_pool_is_very_high/
rem # https://learn.microsoft.com/en-us/troubleshoot/windows-server/performance/unable-allocate-memory-system-paged-pool
rem # https://support.arcserve.com/s/article/Tuning-Guide-for-StorageCraft-Software-on-Servers?language=de
rem # https://sites.google.com/site/tweakradje/windows/windows-tweaking
rem # https://github.com/mirror/reactos/blob/master/reactos/ntoskrnl/mm/ARM3/mminit.c

rem # Max Page Pool Size / 1GB Non Paged Pool Size
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_DWORD /d "0x400" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "0xffffffff" /f

reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "DynamicMemory" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "EnforceWriteProtection" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "MakeLowMemory" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "SessionPoolSize" /t REG_DWORD /d "64" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "SessionViewSize" /t REG_DWORD /d "136" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "SystemCacheLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "SessionSpaceLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "WriteWatch" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "SnapUnloads" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "MapAllocationFragment" /t REG_DWORD /d "0x20000" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "Mirroring" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "EnableLowVaAccess" /t REG_DWORD /d "1" /f

rem # Disable Memory Compression
PowerShell -Command "Disable-MMAgent -MemoryCompression"

rem # Disable Page Combining
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f

PowerShell -Command "Disable-MMAgent -PageCombining"

PAUSE

rem # SvcHostSplitThresholdInKB value is amount of RAM in KiloBytes (KB)
rem # Example math formula: 8 GB = 8x1024 MB = 8x1024x1024 KB = 8388608 KB
rem # 8GB = 8388608 (800000) / 16GB = 16777216 (1000000) / 32GB = 33554432 (2000000) / 64GB = 67108864 (4000000)

rem # IOPageLockLimit will limit RAM to use certain tasks
rem # Example math formula: 8 GB = 8x1024 MB = 8x1024x1024 KB = 8388608 KB
rem # 8GB = 8388608 (800000) / 16GB = 16777216 (1000000) / 32GB = 33554432 (2000000) / 64GB = 67108864 (4000000)

rem # CacheUnmapBehindLengthInMB trims your massive WorkingSet

rem # https://www.tenforums.com/performance-maintenance/189717-test-trim-workingset-ram.html

rem # https://www.i.u-tokyo.ac.jp/edu/training/ss/lecture/new-documents/Lectures/15-CacheManager/CacheManager.pdf

rem # CacheUnmapBehindLengthInMB=dword:00000100 ;256MB = 4GB RAM / 512MB = 8GB RAM / 1024MB = 16GB RAM / 2048MB = 32GB RAM / 4096MB = 64GB RAM
rem # dword:00000100 = 256MB = 4GB RAM / dword:00000200 = 512MB = 8GB RAM / dword:00000300 = 768MB = 12GB RAM / dword:00000400 = 1024MB = 16GB RAM / dword:00000800 = 2048MB = 32GB RAM / dword:00001600 = 4096MB = 64GB RAM


rem # ModifiedWriteMaximum=dword:00000020 ;32MB = 4GB RAM / 64MB = 8GB RAM / 128MB = 16GB RAM / 256MB = 32GB RAM / 512MB = 64GB RAM

rem # dword:00000020 ;32MB = 4GB RAM / dword:00000040 ;64MB = 8GB RAM / dword:00000060 ;96MB = 12GB RAM / dword:00000080 ;128MB = 16GB RAM / dword:00000160 ;256MB = 32GB RAM / dword:00000320 ;512MB = 64GB RAM