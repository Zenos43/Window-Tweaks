@echo off
goto menu

:menu
rem Get the list of devices that can wake the system
for /f "tokens=*" %%a in ('powercfg /devicequery wake_armed') do (
    echo %%a
)

rem Ask the user to select a device or type FF to disable all
set /p device="Enter the name of the device to disable wake for (or type 'FF' to disable all): "

rem Check if user typed FF
if /i "%device%"=="FF" (
    echo Disabling wake for all devices...
    rem Disable wake for all devices
    for /f "tokens=*" %%a in ('powercfg /devicequery wake_armed') do (
        powercfg /devicedisablewake "%%a"
    )
) else (
    rem Disable wake for the selected device
    powercfg /devicedisablewake "%device%"
)

rem Clear the screen
cls
goto menu
