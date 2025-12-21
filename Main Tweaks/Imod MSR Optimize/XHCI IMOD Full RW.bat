@Echo Off
SetLocal EnableDelayedExpansion
Reg.exe Add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CI\Config" /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d "0" /f >Nul 2>&1
:IMod
Set "RW_Setup_Url=https://www.dropbox.com/scl/fi/s8iwvaomadss24djwmbnc/SetupRwX64.exe?rlkey=olkl02l1p1wolg3giwetvvfif&st=rotthl28&dl=0"
Set "IMod_Script_Url=https://www.dropbox.com/scl/fi/90lt7ywphbt73ybafpj77/XHCI-IMOD-Full-RW.ps1?rlkey=uud6hsmsgf5se5ow5r0ayf1m5&st=20a5fh41&dl=0"
Set "RW_Setup_Path=%Temp%\SetupRwX64.exe"
Set "IMod_Script_Path=C:\XHCI IMOD Full RW.ps1"
Set "Install_Dir=C:\Program Files (x86)\RW-Everything"
Set "Shortcut_Name=RW-Everything.lnk"
Set "Desktop_Dir=%UserProfile%\Desktop"
Mkdir "%Install_Dir%" >Nul 2>&1
Curl -L -o "%RW_Setup_Path%" "%RW_Setup_Url%" >Nul 2>&1
Start /Wait "" "%RW_Setup_Path%" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /DIR="%Install_Dir%" >Nul 2>&1
Curl -L -o "%IMod_Script_Path%" "%IMod_Script_Url%" >Nul 2>&1
Del "%Desktop_Dir%\%Shortcut_Name%" >Nul 2>&1
Set "Shortcut_Folder=%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
Set "Shortcut_Name=XHCI IMOD Full RW.ps1.lnk"
Set "Shortcut_Path=%Shortcut_Folder%\%Shortcut_Name%"
Powershell -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%Shortcut_Path%'); $s.TargetPath = 'C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe'; $s.Arguments = '-ExecutionPolicy Bypass -File \"%IMod_Script_Path%\"'; $s.Save()" >Nul 2>&1
Del "%RW_Setup_Path%" >Nul 2>&1
Endlocal