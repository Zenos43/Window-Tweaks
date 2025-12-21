netsh int tcp set supplemental Template=Internet CongestionProvider=dctcp
netsh int tcp set supplemental Template=Datacenter CongestionProvider=dctcp
netsh int tcp set supplemental Template=Compat CongestionProvider=dctcp
netsh int tcp set supplemental Template=DatacenterCustom CongestionProvider=dctcp
netsh int tcp set supplemental Template=InternetCustom CongestionProvider=dctcp
netsh int tcp set supplemental Template=Automatic CongestionProvider=dctcp

powershell "Get-NetTCPSetting | Select SettingName, CongestionProvider"

pause