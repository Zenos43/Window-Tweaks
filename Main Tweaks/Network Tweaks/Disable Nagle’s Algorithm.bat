@echo off
for /f "usebackq delims=" %%a in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
    reg add %%a /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
)

for /f "usebackq delims=" %%a in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
    reg add %%a /v "TcpNoDelay" /t REG_DWORD /d "1" /f
)

for /f "usebackq delims=" %%a in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
    reg add %%a /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
)

echo Registry changes applied successfully.
pause
