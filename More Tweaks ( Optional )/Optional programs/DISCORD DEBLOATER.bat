Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "Discord" /t REG_BINARY /d "0300000066AF9C7C5A46D901" /f 

timeout /t 1 /nobreak > NUL

rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_game_utils"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_game_utils"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_game_utils"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_game_utils"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_spellcheck"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_spellcheck"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_spellcheck"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_spellcheck"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_krisp"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_krisp"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_krisp"  
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_krisp"    
