rem # Thread Quantum Selector

rem # https://www.xbitlabs.com/win32priorityseparation-performance/

rem # https://smallvoid.com/article/winnt-process-scheduler-priority.html

rem # https://forums.blurbusters.com/viewtopic.php?t=8535

rem # https://www.tenforums.com/performance-maintenance/130775-win32priorityseparation-value-decimal-26-a.html#post1614519

rem # https://www.youtube.com/watch?v=bqDMG1ZS-Yw

rem # garlin: https://www.elevenforum.com/members/garlin.5387/
rem # https://www.elevenforum.com/t/batch-script-choose-1-or-2-registry-setting.30348/#post-524139

rem # 2 Hex = Short, Variable, High foreground boost (default) (26 Hex) (best performance/FPS) (xbitlabs article)
rem # 2A Hex = Short, Fixed, High foreground boost
rem # 29 Hex = Short, Fixed, Medium foreground boost
rem # 28 Hex = Short, Fixed, No foreground boost (best input/latency) (theoretically)
rem # 26 Hex = Short, Variable, High foreground boost (default) (2 Hex) (best performance/FPS) (xbitlabs article)
rem # 25 Hex = Short, Variable, Medium foreground boost
rem # 24 Hex = Short, Variable, No foreground boost (best input/latency) (xbitlabs article)
rem # 1A Hex = Long, Fixed, High foreground boost
rem # 19 Hex = Long, Fixed, Medium foreground boost
rem # 18 Hex = Long, Fixed, No foreground boost
rem # 16 Hex = Long, Variable, High foreground boost (best performance/FPS) (theoretically)
rem # 15 Hex = Long, Variable, Medium foreground boost
rem # 14 Hex = Long, Variable, No foreground boost

rem # 26 HEX/2 HEX are the same value

rem # Best Input/Latency - 24 HEX: Short, Variable, No foreground boost (xbitlabs article)
rem # Best Performance/FPS - 26 HEX/2 HEX: Short, Variable, High foreground boost (xbitlabs article)

rem # Best Input/Latency - 28 HEX: Short, Fixed, No foreground boost (theorectically)
rem # Best Performance/FPS - 16 HEX: Long, Variable, High foreground boost (theoretically)

rem # Default - 2 HEX: Short, Variable, High foreground boost

PAUSE

@echo off

echo.
echo 1. Latency Configuration (24 HEX) (xbitlabs article)
echo 2. Performance Configuration (26 HEX) (xbitlabs article)
echo 3. Latency Configuration (28 HEX) (theoretically)
echo 4. Performance Configuration (16 HEX) (theoretically)
echo 5. Default Configuration (2 HEX)
echo C. Cancel
echo.
choice /c 12345C /m "Choose an option :"

if 6 EQU %ERRORLEVEL% (
   echo User chose to cancel.
) else if 5 EQU %ERRORLEVEL% (
   call :default
) else if 4 EQU %ERRORLEVEL% (
   call :performancetheo
) else if 3 EQU %ERRORLEVEL% (
   call :latencytheo
) else if 2 EQU %ERRORLEVEL% (
   call :performancexbit
) else if 1 EQU %ERRORLEVEL% (
   call :latencyxbit
) else if 0 EQU %ERRORLEVEL% (
   echo User bailed out.
)

goto :eof

:latencyxbit
echo User chose Latency (xbitlabs article) (24 Hex = Short, Variable, No foreground boost).
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "0x00000024" /f
PAUSE
exit /b

:performancexbit
echo User chose Performance (xbitlabs article) (26 Hex = Short, Variable, High foreground boost).
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "0x00000026" /f
PAUSE
exit /b

:latencytheo
echo User chose Latency (theoretically) (28 Hex = Short, Fixed, No foreground boost).
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "0x00000028" /f
PAUSE
exit /b

:performancetheo
echo User chose Performance (theoretically) (16 Hex = Long, Variable, High foreground boost).
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "0x00000016" /f
PAUSE
exit /b

:default
echo User chose Default (2 Hex = Short, Variable, High foreground boost).
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "0x00000002" /f
PAUSE
exit /b