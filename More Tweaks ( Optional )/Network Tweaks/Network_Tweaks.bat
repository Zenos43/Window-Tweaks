reg add "HKLM\SYSTEM\CurrentControlSet\Services\Afd\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d 1048576 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Afd\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d 1048576 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d 16000 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d 8192 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d 5 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v EnablePMTUBHDetect /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v EnablePMTUDiscovery /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d 300000 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d 1000 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v NonBestEffortLimit /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Afd\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "65536" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Afd\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "65536" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Afd\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Afd\Parameters" /v "DynamicReceiveBufferDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "RssBaseCpu" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f

powershell -Command "Disable-NetAdapterBinding -Name '*' -IncludeHidden"
powershell -Command "Enable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip"
powershell -Command "Disable-NetAdapterChecksumOffload -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterEncapsulatedPacketTaskOffload -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterIPsecOffload -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterLso -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterPowerManagement -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterQos -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterRdma -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterRsc -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterRss -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterSriov -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterUso -Name '*' -IncludeHidden"
powershell -Command "Disable-NetAdapterVmq -Name '*' -IncludeHidden"

powershell -Command "Set-NetOffloadGlobalSetting -Chimney Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -NetworkDirect Disabled -ErrorAction SilentlyContinue"
powershell -Command "Set-NetOffloadGlobalSetting -NetworkDirectAcrossIPSubnets Blocked"
powershell -Command "Set-NetOffloadGlobalSetting -PacketCoalescingFilter Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -ReceiveSegmentCoalescing Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -ReceiveSideScaling Disabled"
powershell -Command "Set-NetOffloadGlobalSetting -TaskOffload Disabled"

netsh interface tcp set global autotuninglevel=disabled
netsh interface tcp set global dca=disabled
netsh interface tcp set global netdma=disabled
netsh interface tcp set global timestamps=disabled
netsh interface tcp set global ecncapability=enabled
netsh interface tcp set global fastopen=disabled

netsh winsock set autotuning off

netsh interface udp set global uro=disable uso=disable

netsh interface teredo set state disabled
netsh interface isatap set state disabled
netsh interface 6to4 set state disabled

ipconfig /flushdns

netsh advfirewall firewall add rule name="Allow UDP Games" dir=in action=allow protocol=UDP localport=1024-65535
netsh advfirewall firewall add rule name="Allow UDP Out" dir=out action=allow protocol=UDP localport=1024-65535

powershell -Command "Restart-NetAdapter -Name '*' -IncludeHidden"

pause
