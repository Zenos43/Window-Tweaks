@echo off
setlocal

takeown /f C:\Windows\System32\windowsperformancerecordercontrol.dll
icacls C:\Windows\System32\windowsperformancerecordercontrol.dll /grant Administrators:F
ren C:\Windows\System32\windowsperformancerecordercontrol.dll windowsperformancerecordercontrolBACKUP.dll

takeown /f C:\Windows\System32\certcli.dll
icacls C:\Windows\System32\certcli.dll /grant Administrators:F
ren C:\Windows\System32\certcli.dll certcliBACKUP.dll

takeown /f C:\Windows\System32\mpclient.dll
icacls C:\Windows\System32\mpclient.dll /grant Administrators:F
ren C:\Windows\System32\mpclient.dll mpclientBACKUP.dll

takeown /f C:\Windows\System32\mpengine.dll
icacls C:\Windows\System32\mpengine.dll /grant Administrators:F
ren C:\Windows\System32\mpengine.dll mpengineBACKUP.dll

takeown /f C:\Windows\System32\wscsvc.dll
icacls C:\Windows\System32\wscsvc.dll /grant Administrators:F
ren C:\Windows\System32\wscsvc.dll wscsvcBACKUP.dll

takeown /f C:\Windows\System32\qwave.dll
icacls C:\Windows\System32\qwave.dll /grant Administrators:F
ren C:\Windows\System32\qwave.dll qwaveBACKUP.dll

takeown /f C:\Windows\System32\iphlpsvc.dll
icacls C:\Windows\System32\iphlpsvc.dll /grant Administrators:F
ren C:\Windows\System32\iphlpsvc.dll iphlpsvcBACKUP.dll

takeown /f C:\Windows\System32\msmpeng.exe
icacls C:\Windows\System32\msmpeng.exe /grant Administrators:F
ren C:\Windows\System32\msmpeng.exe msmpengBACKUP.exe

takeown /f C:\Windows\System32\srtsp64.dll
icacls C:\Windows\System32\srtsp64.dll /grant Administrators:F
ren C:\Windows\System32\srtsp64.dll srtsp64BACKUP.dll




pause
