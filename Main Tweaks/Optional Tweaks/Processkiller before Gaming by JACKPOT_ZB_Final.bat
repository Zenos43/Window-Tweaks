@echo off
title Processkiller before Gaming by JACKPOT_ZB
setlocal EnableDelayedExpansion
chcp 65001 >nul
cls

:: ANSI-Farben
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
  set "ESC=%%b"
)

set "red=%ESC%[91m"
set "green=%ESC%[96m"
set "yellow=%ESC%[94m"
set "cyan=%ESC%[96m"
set "blue=%ESC%[94m"
set "magenta=%ESC%[94m"
set "purple=%ESC%[34m"
set "purple2=%ESC%[34m"
set "weiss=%ESC%[97m"      # Helles Weiß
set "lime=%ESC%[92m"       # Neongrün/Lime
set "reset=%ESC%[0m"


:: Regenbogenfarben
set "colors[0]=%ESC%[38;5;196m"  & rem Sehr helles Rot
set "colors[1]=%ESC%[93m"  & rem Gelb
set "colors[2]=%ESC%[92m"  & rem Grün
set "colors[3]=%ESC%[96m"  & rem Cyan
set "colors[4]=%ESC%[94m"  & rem Blau
set "colors[5]=%ESC%[35m"  & rem Magenta

:: Regenbogen-Discord-Link
set "discord=https://discord.gg/ZnUyPwfehs"
set "rainbowText="
set "i=0"

for /L %%A in (0,1,27) do (
    set /A "colorIndex=%%A %% 6"
    for %%B in (!colorIndex!) do set "rainbowText=!rainbowText!!colors[%%B]!!discord:~%%A,1!"
)

:menu
cls
echo:
echo:
echo:                                 %yellow%        ██╗ █████╗  ██████╗██╗  ██╗██████╗  ██████╗ ████████╗%reset%
echo:                                %green%         ██║██╔══██╗██╔════╝██║ ██╔╝██╔══██╗██╔═══██╗╚══██╔══╝%reset%
echo:                               %cyan%          ██║███████║██║     █████╔╝ ██████╔╝██║   ██║   ██║%reset%   
echo:                               %blue%     ██   ██║██╔══██║██║     ██╔═██╗ ██╔═══╝ ██║   ██║   ██║%reset%   
echo:                               %purple2%     ╚█████╔╝██║  ██║╚██████╗██║  ██╗██║     ╚██████╔╝   ██║%reset%   
echo:                                 %purple%    ╚════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝      ╚═════╝    ╚═╝%reset%
echo:
echo:                                                           
echo.                               %magenta%PROCESSKILLER HELPS TO IMPROVE PERFORMANCE BEFORE YOU START YOUR GAME
echo.                               %magenta%IT KILLS UNNEEDED PROCESSES CLOSES THE EXPLORER AND OTHER STUFF
echo.                               %magenta%DISABLED CPU IDLE STATES FOR LOW LATENCY AND QUICK RESPONSE
echo.                               
echo:
echo:
echo:                                                         !rainbowText!%reset%
echo:
echo:
echo:                               %magenta%=====================================================================================
echo:                               %weiss%[1] %lime%DISABLE ALL  (Processes, Idle, explorer ect.)%reset%      %weiss%[2] %weiss%ENABLE ALL%reset%
echo:                               %magenta%=====================================================================================
echo:                               %weiss%[3] %lime%Close Explorer%reset%                                     %weiss%[4] %weiss%Open Explorer%reset%
echo:                               %magenta%=====================================================================================
echo:                               %weiss%[5] %lime%Disable Nvidia Container%reset%                           %weiss%[6] %weiss%Enable Nvidia Container 
echo:                               %magenta%=====================================================================================
echo:                               %weiss%[7] %lime%Disable CPU Idle States %red%(Watch your CPU Temps!)%reset%     %weiss%[8] %weiss%Enable CPU Idle States
echo:                               %magenta%=====================================================================================


choice /C 12345678 /N /M "Auswahl: "
set "input=%errorlevel%"

goto option%input%

:option1
call :DISABLE_ALL
goto :menu

:option2
call :ENABLE_ALL
goto :menu

:option3
call :DISABLE_EXPLORER
goto :menu

:option4
call :ENABLE_EXPLORER
goto :menu

:option5
call :DISABLE_NVIDIA
goto :menu

:option6
call :ENABLE_NVIDIA
goto :menu

:option7
call :DISABLE_IDLE
goto :menu

:option8
call :ENABLE_IDLE
goto :menu

:: Funktionen
:DISABLE_ALL
echo %yellow%[SYSTEM]%reset% Starte vollst%E4ndige Optimierung...
call :DISABLE_EXPLORER silent
call :DISABLE_NVIDIA silent
call :DISABLE_IDLE silent
echo %green%[ERFOLG]%reset% Alle Optimierungen angewendet!
timeout /t 1 >nul
exit /b

:ENABLE_ALL
echo %yellow%[SYSTEM]%reset% Stelle Standardeinstellungen wieder her...
call :ENABLE_EXPLORER silent
call :ENABLE_NVIDIA silent
call :ENABLE_IDLE silent
echo %green%[ERFOLG]%reset% Alle Einstellungen zur%FCckgesetzt!
timeout /t 1 >nul
exit /b

:DISABLE_EXPLORER
taskkill /f /im explorer.exe >nul 2>&1
taskkill /f /im runtimebroker.exe >nul 2>&1
taskkill /f /im SearchUI.exe >nul 2>&1
taskkill /f /im EpicGamesLauncher.exe 2>&1
taskkill /f /im TextInputHost.exe 2>&1
taskkill /f /im CrashReportClient.exe 2>&1

if "%~1" neq "silent" echo %green%[ERFOLG]%reset% Explorer beendet!
exit /b

:ENABLE_EXPLORER
start "" explorer.exe >nul 2>&1
timeout /t 1 >nul
if "%~1" neq "silent" echo %green%[ERFOLG]%reset% Explorer gestartet!
exit /b

:DISABLE_NVIDIA
sc config NVDisplay.ContainerLocalSystem start= disabled >nul
sc stop NVDisplay.ContainerLocalSystem >nul 2>&1
if "%~1" neq "silent" echo %green%[ERFOLG]%reset% Nvidia-Dienste deaktiviert!
exit /b

:ENABLE_NVIDIA
sc config NVDisplay.ContainerLocalSystem start= auto >nul
sc start NVDisplay.ContainerLocalSystem >nul 2>&1
if "%~1" neq "silent" echo %green%[ERFOLG]%reset% Nvidia-Dienste aktiviert!
exit /b

:DISABLE_IDLE
powercfg /setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 1 >nul
powercfg /setactive scheme_current >nul
if "%~1" neq "silent" echo %green%[ERFOLG]%reset% CPU-Idle-Zust%E4nde deaktiviert!
exit /b

:ENABLE_IDLE
powercfg /setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0 >nul
powercfg /setactive scheme_current >nul
if "%~1" neq "silent" echo %green%[ERFOLG]%reset% CPU-Idle-Zust%E4nde aktiviert!
exit /b