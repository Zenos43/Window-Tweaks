netsh winsock reset
netsh int ip reset
netsh advfirewall reset
netsh interface ipv4 reset
netsh interface ipv6 reset
ipconfig /release
ipconfig /flushdns
ipconfig /renew

powershell -Command "Restart-NetAdapter -Name "*" -IncludeHidden"

pause






