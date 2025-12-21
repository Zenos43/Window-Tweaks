netsh int tcp set supplemental Template=Internet CongestionProvider=CTCP
netsh int tcp set supplemental Template=Datacenter CongestionProvider=CTCP
netsh int tcp set supplemental Template=Compat CongestionProvider=CTCP
netsh int tcp set supplemental Template=DatacenterCustom CongestionProvider=CTCP
netsh int tcp set supplemental Template=InternetCustom CongestionProvider=CTCP
netsh int tcp set supplemental Template=Automatic CongestionProvider=CTCP

powershell "Get-NetTCPSetting | Select SettingName, CongestionProvider"

pause