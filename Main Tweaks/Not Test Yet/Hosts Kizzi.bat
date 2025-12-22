@echo off
cd %SystemRoot%\System32\drivers\etc
if not exist hosts.bak ren hosts hosts.bak >nul 2>&1
curl -l -s https://raw.githubusercontent.com/kizzimo/HostsTWEAKED/main/hosts -o hosts
if not exist hosts ren hosts.bak hosts >nul 2>&1
cd "%~dp0"