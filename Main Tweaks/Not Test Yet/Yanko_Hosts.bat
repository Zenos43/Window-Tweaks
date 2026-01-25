@echo off
REM Change Hosts File To Secured One
CD %SystemRoot%\System32\drivers\etc
If Not Exist hosts.bak Ren hosts hosts.bak >Nul 2>&1
Curl -L -S https://raw.githubusercontent.com/0FFLlNE/YankoHostsFile/refs/heads/main/hosts -O hosts >Nul 2>&1
If Not Exist hosts Ren hosts.bak hosts >Nul 2>&1
IPConfig /FlushDns >Nul 2>&1
