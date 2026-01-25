reg add "HKCR\.ps1" /ve /d "ps1legacy" /f
reg add "HKCR\.ps1\ShellNew" /v NullFile /t REG_SZ /d "" /f
reg add "HKCR\ps1legacy" /ve /d "pwsh" /f
reg add "HKCR\ps1legacy" /v FriendlyTypeName /t REG_SZ /d "pwsh" /f
reg add "HKCR\.txt" /ve /d "txtlegacy" /f
reg add "HKCR\.txt\ShellNew" /v NullFile /t REG_SZ /d "" /f
reg add "HKCR\txtlegacy" /ve /d "txt" /f
reg add "HKCR\txtlegacy" /v FriendlyTypeName /t REG_SZ /d "txt" /f
reg add "HKCR\.bat" /ve /d "batfile" /f
reg add "HKCR\.bat\ShellNew" /v NullFile /t REG_SZ /d "" /f
reg add "HKCR\batfile" /ve /d "bat" /f
reg add "HKCR\batfile" /v FriendlyTypeName /t REG_SZ /d "bat" /f
taskkill /f /im explorer.exe
start explorer.exe