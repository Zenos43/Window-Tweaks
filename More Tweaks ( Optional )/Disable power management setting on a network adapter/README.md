The enhancements made to Windows 7+ for managing power settings for network adapters greatly reduces the number of spurious wakes. It allows computers to sleep for longer periods of time when idle. Furthermore, you can configure the power management settings to meet the needs of your users through device properties, standard registry settings.



When deploying Windows 7+ or Windows Server 2008 R2, you may want to disable the following network adapter power management setting on some computers:



this can be disabled from the registry editor

reg add "HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Class\\{4D36E972-E325-11CE-BFC1-08002bE10318}\\DeviceNumber" /v "PnPCapabilities" /t REG\_DWORD /d "24" /f



reg add "HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Class\\{4D36E972-E325-11CE-BFC1-08002bE10318}\\DeviceNumber" /v "DefaultPnPCapabilities" /t REG\_DWORD /d "24" /f



DefaultPnPCapabilities string was also found from debugging the ndis.sys driver

https://github.com/WinDLLsExports/10\_0\_22622\_601/blob/c598035e1a6627384d646140fe9e4d234b36b11d/C/Windows/System32/drivers/ndis.sys.strings#L4

Reg.exe add "HKLM\\SYSTEM\\CurrentControlSet\\Services\\NDIS\\Parameters" /v "DefaultPnPCapabilities" /t REG\_DWORD /d "24" /f

