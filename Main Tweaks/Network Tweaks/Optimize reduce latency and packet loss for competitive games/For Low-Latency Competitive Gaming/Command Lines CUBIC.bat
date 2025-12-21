netsh int tcp set supplemental Template=Internet CongestionProvider=cubic
netsh int tcp set supplemental Template=Datacenter CongestionProvider=cubic
netsh int tcp set supplemental Template=Compat CongestionProvider=cubic
netsh int tcp set supplemental Template=DatacenterCustom CongestionProvider=cubic
netsh int tcp set supplemental Template=InternetCustom CongestionProvider=cubic
netsh int tcp set supplemental Template=Automatic CongestionProvider=cubic

powershell "Get-NetTCPSetting | Select SettingName, CongestionProvider"

pause