netsh int ipv4 set gl loopbacklargemtu=disabled
netsh int ipv6 set gl loopbacklargemtu=disabled

netsh int tcp set supplemental Template=Internet CongestionProvider=BBR
netsh int tcp set supplemental Template=Datacenter CongestionProvider=BBR
netsh int tcp set supplemental Template=Compat CongestionProvider=BBR
netsh int tcp set supplemental Template=DatacenterCustom CongestionProvider=BBR
netsh int tcp set supplemental Template=InternetCustom CongestionProvider=BBR

powershell "Get-NetTCPSetting | Select SettingName, CongestionProvider"

pause