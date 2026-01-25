@echo off
:: https://privacy.sexy — v0.13.6 — Sun, 22 Sep 2024 19:27:21 GMT
:: Ensure admin privileges
fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)
:: Initialize environment
setlocal EnableExtensions DisableDelayedExpansion

:: ----------------------------------------------------------
:: ----Disable app access to "Documents" folder (revert)-----
:: ----------------------------------------------------------
echo --- Disable app access to "Documents" folder (revert)
:: Restore app capability (documentsLibrary) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable app access to "Pictures" folder (revert)-----
:: ----------------------------------------------------------
echo --- Disable app access to "Pictures" folder (revert)
:: Restore app capability (picturesLibrary) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable app access to "Videos" folder (revert)------
:: ----------------------------------------------------------
echo --- Disable app access to "Videos" folder (revert)
:: Restore app capability (videosLibrary) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable app access to "Music" folder (revert)-------
:: ----------------------------------------------------------
echo --- Disable app access to "Music" folder (revert)
:: Restore app capability (musicLibrary) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable app access to personal files (revert)-------
:: ----------------------------------------------------------
echo --- Disable app access to personal files (revert)
:: Restore app capability (broadFileSystemAccess) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable app access to call history (revert)--------
:: ----------------------------------------------------------
echo --- Disable app access to call history (revert)
:: Restore app access (LetAppsAccessCallHistory) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCallHistory' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCallHistory_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCallHistory_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCallHistory_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (phoneCallHistory) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({8BC668CF-7728-45BD-93F8-CF2B3B41D7AB}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{8BC668CF-7728-45BD-93F8-CF2B3B41D7AB}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: Disable app access to phone calls (breaks phone calls through Phone Link) (revert)
echo --- Disable app access to phone calls (breaks phone calls through Phone Link) (revert)
:: Restore app access (LetAppsAccessPhone) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessPhone' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessPhone_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessPhone_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessPhone_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (phoneCall) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---Disable app access to messaging (SMS / MMS) (revert)---
:: ----------------------------------------------------------
echo --- Disable app access to messaging (SMS / MMS) (revert)
:: Restore app access (LetAppsAccessMessaging) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMessaging' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMessaging_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMessaging_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMessaging_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (chat) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({992AFA70-6F47-4148-B3E9-3003349C1548}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{992AFA70-6F47-4148-B3E9-3003349C1548}' /v 'Value' /f 2>$null"
:: Restore app access ({21157C1F-2651-4CC1-90CA-1F28B02263F6}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{21157C1F-2651-4CC1-90CA-1F28B02263F6}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -Disable app access to paired Bluetooth devices (revert)--
:: ----------------------------------------------------------
echo --- Disable app access to paired Bluetooth devices (revert)
:: Restore app capability (bluetooth) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetooth' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: Disable app access to unpaired Bluetooth devices (revert)-
:: ----------------------------------------------------------
echo --- Disable app access to unpaired Bluetooth devices (revert)
:: Restore app capability (bluetoothSync) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable app access to voice activation (revert)------
:: ----------------------------------------------------------
echo --- Disable app access to voice activation (revert)
:: Restore app access (LetAppsActivateWithVoice) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoice' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoice_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoice_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoice_ForceDenyTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps' /v 'AgentActivationEnabled' /f 2>$null"
:: ----------------------------------------------------------


:: Disable app access to voice activation on locked system (revert)
echo --- Disable app access to voice activation on locked system (revert)
:: Restore app access (LetAppsActivateWithVoiceAboveLock) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoiceAboveLock' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoiceAboveLock_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoiceAboveLock_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoiceAboveLock_ForceDenyTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps' /v 'AgentActivationOnLockScreenEnabled' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Disable app access to location (revert)----------
:: ----------------------------------------------------------
echo --- Disable app access to location (revert)
:: Restore app access (LetAppsAccessLocation) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessLocation' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessLocation_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessLocation_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessLocation_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (location) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = '1'; reg add 'HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration' /v 'Status' /t 'REG_DWORD' /d "^""$revertData"^"" /f"
:: Restore app access ({BFA794E4-F964-4FDB-90F6-51056BFE4B44}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}' /v 'Value' /f 2>$null"
:: Restore app access ({E6AD100E-5F4E-44CD-BE0F-2265D88D14F5}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{E6AD100E-5F4E-44CD-BE0F-2265D88D14F5}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: Disable app access to account information, name, and picture (revert)
echo --- Disable app access to account information, name, and picture (revert)
:: Restore app access (LetAppsAccessAccountInfo) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessAccountInfo' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessAccountInfo_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessAccountInfo_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessAccountInfo_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (userAccountInformation) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({C1D23ACC-752B-43E5-8448-8D0E519CD6D6}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{C1D23ACC-752B-43E5-8448-8D0E519CD6D6}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable app access to motion activity (revert)------
:: ----------------------------------------------------------
echo --- Disable app access to motion activity (revert)
:: Restore app access (LetAppsAccessMotion) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMotion' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMotion_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMotion_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMotion_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (activity) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: Disable app access to information about other apps (revert)
echo --- Disable app access to information about other apps (revert)
:: Restore app access (LetAppsGetDiagnosticInfo) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsGetDiagnosticInfo' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsGetDiagnosticInfo_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsGetDiagnosticInfo_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsGetDiagnosticInfo_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (appDiagnostics) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({2297E4E2-5DBE-466D-A12B-0F8286F0D9CA}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2297E4E2-5DBE-466D-A12B-0F8286F0D9CA}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable app access to your contacts (revert)-------
:: ----------------------------------------------------------
echo --- Disable app access to your contacts (revert)
:: Restore app access (LetAppsAccessContacts) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessContacts' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessContacts_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessContacts_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessContacts_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (contacts) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({7D7E8402-7C54-4821-A34E-AEEFD62DED93}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{7D7E8402-7C54-4821-A34E-AEEFD62DED93}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Disable app access to calendar (revert)----------
:: ----------------------------------------------------------
echo --- Disable app access to calendar (revert)
:: Restore app access (LetAppsAccessCalendar) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCalendar' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCalendar_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCalendar_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCalendar_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (appointments) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({D89823BA-7180-4B81-B50C-7E471E6121A3}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{D89823BA-7180-4B81-B50C-7E471E6121A3}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable app access to email (revert)-----------
:: ----------------------------------------------------------
echo --- Disable app access to email (revert)
:: Restore app access (LetAppsAccessEmail) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessEmail' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessEmail_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessEmail_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessEmail_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (email) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({9231CB4C-BF57-4AF3-8C55-FDA7BFCC04C5}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{9231CB4C-BF57-4AF3-8C55-FDA7BFCC04C5}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable app access to tasks (revert)-----------
:: ----------------------------------------------------------
echo --- Disable app access to tasks (revert)
:: Restore app access (LetAppsAccessTasks) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTasks' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTasks_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTasks_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTasks_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (userDataTasks) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({E390DF20-07DF-446D-B962-F5C953062741}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{E390DF20-07DF-446D-B962-F5C953062741}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable app access to radios (revert)-----------
:: ----------------------------------------------------------
echo --- Disable app access to radios (revert)
:: Restore app access (LetAppsAccessRadios) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessRadios' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessRadios_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessRadios_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessRadios_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (radios) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app access ({A8804298-2D5F-42E3-9531-9C8C39EB29CE}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{A8804298-2D5F-42E3-9531-9C8C39EB29CE}' /v 'Value' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable app access to physical movement (revert)-----
:: ----------------------------------------------------------
echo --- Disable app access to physical movement (revert)
:: Restore app access (LetAppsAccessBackgroundSpatialPerception) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessBackgroundSpatialPerception' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (spatialPerception) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\spatialPerception' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: Restore app capability (backgroundSpatialPerception) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\backgroundSpatialPerception' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable app access to eye tracking (revert)--------
:: ----------------------------------------------------------
echo --- Disable app access to eye tracking (revert)
:: Restore app access (LetAppsAccessGazeInput) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGazeInput' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGazeInput_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGazeInput_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGazeInput_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (gazeInput) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable app access to human presence (revert)-------
:: ----------------------------------------------------------
echo --- Disable app access to human presence (revert)
:: Restore app access (LetAppsAccessHumanPresence) using GPO
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessHumanPresence' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessHumanPresence_UserInControlOfTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessHumanPresence_ForceAllowTheseApps' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessHumanPresence_ForceDenyTheseApps' /f 2>$null"
:: Restore app capability (humanPresence) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\humanPresence' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable app access to input devices (revert)-------
:: ----------------------------------------------------------
echo --- Disable app access to input devices (revert)
:: Restore app capability (humanInterfaceDevice) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = 'Allow'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\humanInterfaceDevice' /v 'Value' /t 'REG_SZ' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable diagnostic and usage telemetry (revert)------
:: ----------------------------------------------------------
echo --- Disable diagnostic and usage telemetry (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = '1'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' /v 'AllowTelemetry' /t 'REG_DWORD' /d "^""$revertData"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowTelemetry' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -Disable automatic cloud configuration downloads (revert)-
:: ----------------------------------------------------------
echo --- Disable automatic cloud configuration downloads (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Policies\Microsoft\Windows\DataCollection' /v 'DisableOneSettingsDownloads' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Disable license telemetry (revert)------------
:: ----------------------------------------------------------
echo --- Disable license telemetry (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' /v 'NoGenTicket' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Disable error reporting (revert)-------------
:: ----------------------------------------------------------
echo --- Disable error reporting (revert)
:: Revert Windows Error Reporting (WER)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting' /v 'Disabled' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting' /v 'Disabled' /f 2>$null"
:: Revert Windows Error Reporting (WER) consent
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = '4'; reg add 'HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent' /v 'DefaultConsent' /t 'REG_DWORD' /d "^""$revertData"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent' /v 'DefaultOverrideBehavior' /f 2>$null"
:: Revert WER sending second-level data
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Microsoft\Windows\Windows Error Reporting' /v 'DontSendAdditionalData' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Microsoft\Windows\Windows Error Reporting' /v 'LoggingDisabled' /f 2>$null"
:: Restore scheduled task(s) to default state: `\Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate`
PowerShell -ExecutionPolicy Unrestricted -Command "$taskPathPattern='\Microsoft\Windows\ErrorDetails\'; $taskNamePattern='EnableErrorDetailsUpdate'; $shouldDisable =  $false; Write-Output "^""Enabling tasks matching pattern `"^""$taskNamePattern`"^""."^""; $tasks = @(Get-ScheduledTask -TaskPath $taskPathPattern -TaskName $taskNamePattern -ErrorAction Ignore); if (-Not $tasks) { Write-Warning ( "^""Missing task: Cannot enable, no tasks matching pattern `"^""$taskNamePattern`"^"" found."^"" + "^"" This task appears to be not included in this version of Windows."^"" ); exit 0; }; $operationFailed = $false; foreach ($task in $tasks) { $taskName = $task.TaskName; if ($shouldDisable) { if ($task.State -eq [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already disabled, no action needed."^""; continue; }; } else { if (($task.State -ne [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) -and ($task.State -ne [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Unknown)) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already enabled, no action needed."^""; continue; }; }; try { if ($shouldDisable) { $task | Disable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully disabled task `"^""$taskName`"^""."^""; } else { $task | Enable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully enabled task `"^""$taskName`"^""."^""; }; } catch { Write-Error "^""Failed to restore task `"^""$taskName`"^"": $($_.Exception.Message)"^""; $operationFailed = $true; }; }; if ($operationFailed) { Write-Output 'Failed to restore some tasks. Check error messages above.'; exit 1; }"
:: Restore scheduled task(s) to default state: `\Microsoft\Windows\Windows Error Reporting\QueueReporting`
PowerShell -ExecutionPolicy Unrestricted -Command "$taskPathPattern='\Microsoft\Windows\Windows Error Reporting\'; $taskNamePattern='QueueReporting'; $shouldDisable =  $false; Write-Output "^""Enabling tasks matching pattern `"^""$taskNamePattern`"^""."^""; $tasks = @(Get-ScheduledTask -TaskPath $taskPathPattern -TaskName $taskNamePattern -ErrorAction Ignore); if (-Not $tasks) { Write-Warning ( "^""Missing task: Cannot enable, no tasks matching pattern `"^""$taskNamePattern`"^"" found."^"" + "^"" This task appears to be not included in this version of Windows."^"" ); exit 0; }; $operationFailed = $false; foreach ($task in $tasks) { $taskName = $task.TaskName; if ($shouldDisable) { if ($task.State -eq [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already disabled, no action needed."^""; continue; }; } else { if (($task.State -ne [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) -and ($task.State -ne [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Unknown)) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already enabled, no action needed."^""; continue; }; }; try { if ($shouldDisable) { $task | Disable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully disabled task `"^""$taskName`"^""."^""; } else { $task | Enable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully enabled task `"^""$taskName`"^""."^""; }; } catch { Write-Error "^""Failed to restore task `"^""$taskName`"^"": $($_.Exception.Message)"^""; $operationFailed = $true; }; }; if ($operationFailed) { Write-Output 'Failed to restore some tasks. Check error messages above.'; exit 1; }"
:: Restore service(s) to default state: `wersvc`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'wersvc'; $defaultStartupMode = 'Manual'; $ignoreMissingOnRevert =  $false; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if (!$service) { if ($ignoreMissingOnRevert) { Write-Output "^""Skipping: The service `"^""$serviceName`"^"" is not found. No action required."^""; Exit 0; }; Write-Warning "^""Failed to revert changes to the service `"^""$serviceName`"^"". The service is not found."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") { Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else { try { Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, this may require restarting your computer."^""; } catch { Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') { if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try { Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is already running, no need to start."^""; }; }"
:: Restore service(s) to default state: `wercplsupport`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'wercplsupport'; $defaultStartupMode = 'Manual'; $ignoreMissingOnRevert =  $false; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if (!$service) { if ($ignoreMissingOnRevert) { Write-Output "^""Skipping: The service `"^""$serviceName`"^"" is not found. No action required."^""; Exit 0; }; Write-Warning "^""Failed to revert changes to the service `"^""$serviceName`"^"". The service is not found."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") { Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else { try { Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, this may require restarting your computer."^""; } catch { Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') { if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try { Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is already running, no need to start."^""; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------------Disable "Device" task (revert)--------------
:: ----------------------------------------------------------
echo --- Disable "Device" task (revert)
:: Restore scheduled task(s) to default state: `\Microsoft\Windows\Device Information\Device`
PowerShell -ExecutionPolicy Unrestricted -Command "$taskPathPattern='\Microsoft\Windows\Device Information\'; $taskNamePattern='Device'; $shouldDisable =  $false; Write-Output "^""Enabling tasks matching pattern `"^""$taskNamePattern`"^""."^""; $tasks = @(Get-ScheduledTask -TaskPath $taskPathPattern -TaskName $taskNamePattern -ErrorAction Ignore); if (-Not $tasks) { Write-Warning ( "^""Missing task: Cannot enable, no tasks matching pattern `"^""$taskNamePattern`"^"" found."^"" + "^"" This task appears to be not included in this version of Windows."^"" ); exit 0; }; $operationFailed = $false; foreach ($task in $tasks) { $taskName = $task.TaskName; if ($shouldDisable) { if ($task.State -eq [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already disabled, no action needed."^""; continue; }; } else { if (($task.State -ne [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) -and ($task.State -ne [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Unknown)) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already enabled, no action needed."^""; continue; }; }; try { if ($shouldDisable) { $task | Disable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully disabled task `"^""$taskName`"^""."^""; } else { $task | Enable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully enabled task `"^""$taskName`"^""."^""; }; } catch { Write-Error "^""Failed to restore task `"^""$taskName`"^"": $($_.Exception.Message)"^""; $operationFailed = $true; }; }; if ($operationFailed) { Write-Output 'Failed to restore some tasks. Check error messages above.'; exit 1; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable "Device User" task (revert)------------
:: ----------------------------------------------------------
echo --- Disable "Device User" task (revert)
:: Restore scheduled task(s) to default state: `\Microsoft\Windows\Device Information\Device User`
PowerShell -ExecutionPolicy Unrestricted -Command "$taskPathPattern='\Microsoft\Windows\Device Information\'; $taskNamePattern='Device User'; $shouldDisable =  $false; Write-Output "^""Enabling tasks matching pattern `"^""$taskNamePattern`"^""."^""; $tasks = @(Get-ScheduledTask -TaskPath $taskPathPattern -TaskName $taskNamePattern -ErrorAction Ignore); if (-Not $tasks) { Write-Warning ( "^""Missing task: Cannot enable, no tasks matching pattern `"^""$taskNamePattern`"^"" found."^"" + "^"" This task appears to be not included in this version of Windows."^"" ); exit 0; }; $operationFailed = $false; foreach ($task in $tasks) { $taskName = $task.TaskName; if ($shouldDisable) { if ($task.State -eq [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already disabled, no action needed."^""; continue; }; } else { if (($task.State -ne [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) -and ($task.State -ne [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Unknown)) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already enabled, no action needed."^""; continue; }; }; try { if ($shouldDisable) { $task | Disable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully disabled task `"^""$taskName`"^""."^""; } else { $task | Enable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully enabled task `"^""$taskName`"^""."^""; }; } catch { Write-Error "^""Failed to restore task `"^""$taskName`"^"": $($_.Exception.Message)"^""; $operationFailed = $true; }; }; if ($operationFailed) { Write-Output 'Failed to restore some tasks. Check error messages above.'; exit 1; }"
:: ----------------------------------------------------------


:: Disable device and configuration data collection tool (revert)
echo --- Disable device and configuration data collection tool (revert)
:: Remove configuration preventing "DeviceCensus.exe" from starting
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe' /v 'Debugger' /f 2>$null"
:: Remove the rule that prevents the executable "DeviceCensus.exe" from running via File Explorer
PowerShell -ExecutionPolicy Unrestricted -Command "$executableFilename='DeviceCensus.exe'; try { $blockEntries = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -ErrorAction Ignore; if (-Not $blockEntries) { Write-Output "^""Skipping, no action needed: No block rules exist, `"^""$executableFilename`"^"" is not blocked."^""; exit 0; }; $blockingRulesForExecutable = @(; $blockEntries.PSObject.Properties | Where-Object { $_.Value -eq $executableFilename }; ); if (-Not $blockingRulesForExecutable) { Write-Output "^""Skipping, no action needed: `"^""$executableFilename`"^"" is not currently blocked."^""; exit 0; }; foreach ($blockingRuleForExecutable in $blockingRulesForExecutable) { $blockingRuleIndexForExecutable = $blockingRuleForExecutable.Name; Write-Output "^""Removing rule `"^""$blockingRuleIndexForExecutable`"^"" that blocks `"^""$executableFilename`"^""."^""; Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -Name "^""$blockingRuleIndexForExecutable"^"" -Force -ErrorAction Stop; Write-Output "^""Successfully revoked blocking of `$executableFilename` under rule `"^""$blockingRuleIndexForExecutable`"^""."^""; }; } catch { Write-Error "^""Failed to revoke blocking of `"^""$executableFilename`"^"": $_"^""; Exit 1; }"
:: Restore the File Explorer DisallowRun policy if no other blocks are active
PowerShell -ExecutionPolicy Unrestricted -Command "try { $currentDisallowRunPolicyValue = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'DisallowRun' -ErrorAction Ignore | Select-Object -ExpandProperty 'DisallowRun'; if ([string]::IsNullOrEmpty($currentDisallowRunPolicyValue)) { Write-Output 'Skipping, no action needed: DisallowRun policy is not active.'; Exit 0; }; if ($currentDisallowRunPolicyValue -ne 1) { Write-Output "^""Skipping, DisallowRun policy is not configured by privacy.sexy, unexpected value: `"^""$currentDisallowRunPolicyValue`"^""."^""; Exit 0; }; $remainingBlockingRules = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun' -ErrorAction Ignore; if ($remainingBlockingRules) { Write-Output 'Skipping deactivating DisallowRun policy, there are still active rules.'; Exit 0; }; Write-Output 'No remaining rules, deleting DisallowRun policy.'; Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer' -Name 'DisallowRun' -Force -ErrorAction Stop; Write-Output 'Successfully restored DisallowRun policy.'; } catch { Write-Error "^""Failed to restore DisallowRun policy: $_"^""; Exit 1; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---Disable commercial usage of collected data (revert)----
:: ----------------------------------------------------------
echo --- Disable commercial usage of collected data (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowCommercialDataPipeline' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable processing of Desktop Analytics (revert)-----
:: ----------------------------------------------------------
echo --- Disable processing of Desktop Analytics (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowDesktopAnalyticsProcessing' /f 2>$null"
:: ----------------------------------------------------------


:: Disable sending device name in Windows diagnostic data (revert)
echo --- Disable sending device name in Windows diagnostic data (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowDeviceNameInTelemetry' /f 2>$null"
:: ----------------------------------------------------------


:: Disable collection of Edge browsing data for Desktop Analytics (revert)
echo --- Disable collection of Edge browsing data for Desktop Analytics (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'MicrosoftEdgeDataOptIn' /f 2>$null"
:: ----------------------------------------------------------


:: Disable diagnostics data processing for Business cloud (revert)
echo --- Disable diagnostics data processing for Business cloud (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowWUfBCloudProcessing' /f 2>$null"
:: ----------------------------------------------------------


:: Disable Update Compliance processing of diagnostics data (revert)
echo --- Disable Update Compliance processing of diagnostics data (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowUpdateComplianceProcessing' /f 2>$null"
:: ----------------------------------------------------------


:: Disable "Connected User Experiences and Telemetry" (`DiagTrack`) service (revert)
echo --- Disable "Connected User Experiences and Telemetry" (`DiagTrack`) service (revert)
:: Restore service(s) to default state: `DiagTrack`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'DiagTrack'; $defaultStartupMode = 'Automatic'; $ignoreMissingOnRevert =  $false; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if (!$service) { if ($ignoreMissingOnRevert) { Write-Output "^""Skipping: The service `"^""$serviceName`"^"" is not found. No action required."^""; Exit 0; }; Write-Warning "^""Failed to revert changes to the service `"^""$serviceName`"^"". The service is not found."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") { Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else { try { Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, this may require restarting your computer."^""; } catch { Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') { if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try { Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is already running, no need to start."^""; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Disable WAP push notification routing service (revert)--
:: ----------------------------------------------------------
echo --- Disable WAP push notification routing service (revert)
:: Restore service(s) to default state: `dmwappushservice`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'dmwappushservice'; $defaultStartupMode = 'Manual'; $ignoreMissingOnRevert =  $false; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if (!$service) { if ($ignoreMissingOnRevert) { Write-Output "^""Skipping: The service `"^""$serviceName`"^"" is not found. No action required."^""; Exit 0; }; Write-Warning "^""Failed to revert changes to the service `"^""$serviceName`"^"". The service is not found."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") { Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else { try { Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, this may require restarting your computer."^""; } catch { Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') { if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try { Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is already running, no need to start."^""; }; }"
:: ----------------------------------------------------------


:: Disable "Diagnostics Hub Standard Collector" service (revert)
echo --- Disable "Diagnostics Hub Standard Collector" service (revert)
:: Restore service(s) to default state: `diagnosticshub.standardcollector.service`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'diagnosticshub.standardcollector.service'; $defaultStartupMode = 'Manual'; $ignoreMissingOnRevert =  $false; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if (!$service) { if ($ignoreMissingOnRevert) { Write-Output "^""Skipping: The service `"^""$serviceName`"^"" is not found. No action required."^""; Exit 0; }; Write-Warning "^""Failed to revert changes to the service `"^""$serviceName`"^"". The service is not found."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") { Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else { try { Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, this may require restarting your computer."^""; } catch { Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') { if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try { Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is already running, no need to start."^""; }; }"
:: ----------------------------------------------------------


:: Disable "Diagnostic Execution Service" (`diagsvc`) (revert)
echo --- Disable "Diagnostic Execution Service" (`diagsvc`) (revert)
:: Restore service(s) to default state: `diagsvc`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'diagsvc'; $defaultStartupMode = 'Manual'; $ignoreMissingOnRevert =  $false; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if (!$service) { if ($ignoreMissingOnRevert) { Write-Output "^""Skipping: The service `"^""$serviceName`"^"" is not found. No action required."^""; Exit 0; }; Write-Warning "^""Failed to revert changes to the service `"^""$serviceName`"^"". The service is not found."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") { Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else { try { Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, this may require restarting your computer."^""; } catch { Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') { if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try { Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is already running, no need to start."^""; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable Windows Location Provider (revert)--------
:: ----------------------------------------------------------
echo --- Disable Windows Location Provider (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' /v 'DisableWindowsLocationProvider' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable location scripting (revert)------------
:: ----------------------------------------------------------
echo --- Disable location scripting (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' /v 'DisableLocationScripting' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------------Disable location (revert)-----------------
:: ----------------------------------------------------------
echo --- Disable location (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' /v 'DisableLocation' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}' /v 'Value' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = '1'; reg add 'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}' /v 'SensorPermissionState' /t 'REG_DWORD' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable search's access to location (revert)-------
:: ----------------------------------------------------------
echo --- Disable search's access to location (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowSearchToUseLocation' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'AllowSearchToUseLocation' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: Disable local search history (breaks recent suggestions) (revert)
echo --- Disable local search history (breaks recent suggestions) (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Policies\Microsoft\Windows\Explorer' /v 'DisableSearchHistory' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings' /v 'IsDeviceSearchHistoryEnabled' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: Disable sharing personal search data with Microsoft (revert)
echo --- Disable sharing personal search data with Microsoft (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'ConnectedSearchPrivacy' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: Disable personal cloud content search in taskbar (revert)-
:: ----------------------------------------------------------
echo --- Disable personal cloud content search in taskbar (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings' /v 'IsMSACloudSearchEnabled' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings' /v 'IsAADCloudSearchEnabled' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable Cortana during search (revert)----------
:: ----------------------------------------------------------
echo --- Disable Cortana during search (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowCortana' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable Cortana experience (revert)------------
:: ----------------------------------------------------------
echo --- Disable Cortana experience (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = '1'; reg add 'HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana' /v 'value' /t 'REG_DWORD' /d "^""$revertData"^"" /f"
:: ----------------------------------------------------------


:: Disable Cortana's access to cloud services such as OneDrive and SharePoint (revert)
echo --- Disable Cortana's access to cloud services such as OneDrive and SharePoint (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowCloudSearch' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: Disable Cortana speech interaction while the system is locked (revert)
echo --- Disable Cortana speech interaction while the system is locked (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowCortanaAboveLock' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: Disable participation in Cortana data collection (revert)-
:: ----------------------------------------------------------
echo --- Disable participation in Cortana data collection (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Windows\CurrentVersion\Search' /v 'CortanaConsent' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable enabling of Cortana (revert)-----------
:: ----------------------------------------------------------
echo --- Disable enabling of Cortana (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Windows\CurrentVersion\Search' /v 'CanCortanaBeEnabled' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable Cortana in start menu (revert)----------
:: ----------------------------------------------------------
echo --- Disable Cortana in start menu (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'CortanaEnabled' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'CortanaEnabled' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Remove "Cortana" icon from taskbar (revert)--------
:: ----------------------------------------------------------
echo --- Remove "Cortana" icon from taskbar (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' /v 'ShowCortanaButton' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Disable Cortana in ambient mode (revert)---------
:: ----------------------------------------------------------
echo --- Disable Cortana in ambient mode (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'CortanaInAmbientMode' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable Cortana's history display (revert)--------
:: ----------------------------------------------------------
echo --- Disable Cortana's history display (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'HistoryViewEnabled' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable Cortana's device history usage (revert)------
:: ----------------------------------------------------------
echo --- Disable Cortana's device history usage (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'DeviceHistoryEnabled' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable "Hey Cortana" voice activation (revert)------
:: ----------------------------------------------------------
echo --- Disable "Hey Cortana" voice activation (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Speech_OneCore\Preferences' /v 'VoiceActivationOn' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Microsoft\Speech_OneCore\Preferences' /v 'VoiceActivationDefaultOn' /f 2>$null"
:: ----------------------------------------------------------


:: Disable Cortana keyboard shortcut (**Windows logo key** + **C**) (revert)
echo --- Disable Cortana keyboard shortcut (**Windows logo key** + **C**) (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'VoiceShortcut' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable Cortana on locked device (revert)---------
:: ----------------------------------------------------------
echo --- Disable Cortana on locked device (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Speech_OneCore\Preferences' /v 'VoiceActivationEnableAboveLockscreen' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable automatic update of speech data (revert)-----
:: ----------------------------------------------------------
echo --- Disable automatic update of speech data (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Speech_OneCore\Preferences' /v 'ModelDownloadAllowed' /f 2>$null"
:: ----------------------------------------------------------


:: Disable Cortana voice support during Windows setup (revert)
echo --- Disable Cortana voice support during Windows setup (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE' /v 'DisableVoice' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable indexing of encrypted items (revert)-------
:: ----------------------------------------------------------
echo --- Disable indexing of encrypted items (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowIndexingEncryptedStoresOrItems' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: Disable automatic language detection when indexing (revert)
echo --- Disable automatic language detection when indexing (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AlwaysUseAutoLangDetection' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable remote access to search index (revert)------
:: ----------------------------------------------------------
echo --- Disable remote access to search index (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'PreventRemoteQueries' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable iFilters and protocol handlers (revert)------
:: ----------------------------------------------------------
echo --- Disable iFilters and protocol handlers (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'PreventUnwantedAddIns' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: Disable Bing search and recent search suggestions (breaks search history) (revert)
echo --- Disable Bing search and recent search suggestions (breaks search history) (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer' /v 'DisableSearchBoxSuggestions' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'DisableSearchBoxSuggestions' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable Bing search in start menu (revert)--------
:: ----------------------------------------------------------
echo --- Disable Bing search in start menu (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'BingSearchEnabled' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable web search in search bar (revert)---------
:: ----------------------------------------------------------
echo --- Disable web search in search bar (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'DisableWebSearch' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable web results in Windows Search (revert)------
:: ----------------------------------------------------------
echo --- Disable web results in Windows Search (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'ConnectedSearchUseWeb' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'ConnectedSearchUseWebOverMeteredConnections' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable Windows search highlights (revert)--------
:: ----------------------------------------------------------
echo --- Disable Windows search highlights (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'EnableDynamicContentInWSB' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings' /v 'IsDynamicSearchBoxEnabled' /f 2>$null"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Disable ad customization with Advertising ID (revert)---
:: ----------------------------------------------------------
echo --- Disable ad customization with Advertising ID (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = '1'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo' /v 'Enabled' /t 'REG_DWORD' /d "^""$revertData"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo' /v 'DisabledByGroupPolicy' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Disable suggested content in Settings app (revert)----
:: ----------------------------------------------------------
echo --- Disable suggested content in Settings app (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' /v 'SubscribedContent-338393Enabled' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' /v 'SubscribedContent-353694Enabled' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' /v 'SubscribedContent-353696Enabled' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------------Disable Windows Tips (revert)---------------
:: ----------------------------------------------------------
echo --- Disable Windows Tips (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent' /v 'DisableSoftLanding' /f 2>$null"
:: ----------------------------------------------------------


:: Disable Windows Spotlight (shows random wallpapers on lock screen) (revert)
echo --- Disable Windows Spotlight (shows random wallpapers on lock screen) (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Policies\Microsoft\Windows\CloudContent' /v 'DisableWindowsSpotlightFeatures' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable Microsoft Consumer Experiences (revert)------
:: ----------------------------------------------------------
echo --- Disable Microsoft Consumer Experiences (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\Software\Policies\Microsoft\Windows\CloudContent' /v 'DisableWindowsConsumerFeatures' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Disable use of biometrics (revert)------------
:: ----------------------------------------------------------
echo --- Disable use of biometrics (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Biometrics' /v 'Enabled' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Disable biometric logon (revert)-------------
:: ----------------------------------------------------------
echo --- Disable biometric logon (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Biometrics\Credential Provider' /v 'Enabled' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable "Windows Biometric Service" (revert)-------
:: ----------------------------------------------------------
echo --- Disable "Windows Biometric Service" (revert)
:: Restore service(s) to default state: `WbioSrvc`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'WbioSrvc'; $defaultStartupMode = 'Manual'; $ignoreMissingOnRevert =  $false; Write-Host "^""Enabling service: `"^""$serviceName`"^"" with `"^""$defaultStartupMode`"^"" start."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if (!$service) { if ($ignoreMissingOnRevert) { Write-Output "^""Skipping: The service `"^""$serviceName`"^"" is not found. No action required."^""; Exit 0; }; Write-Warning "^""Failed to revert changes to the service `"^""$serviceName`"^"". The service is not found."^""; Exit 1; }; <# -- 2. Enable or skip if already enabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq "^""$defaultStartupMode"^"") { Write-Host "^""`"^""$serviceName`"^"" is already enabled with `"^""$defaultStartupMode`"^"" start, no further action is needed."^""; } else { try { Set-Service -Name "^""$serviceName"^"" -StartupType "^""$defaultStartupMode"^"" -Confirm:$false -ErrorAction Stop; Write-Host "^""Enabled `"^""$serviceName`"^"" successfully with `"^""$defaultStartupMode`"^"" start, this may require restarting your computer."^""; } catch { Write-Error "^""Could not enable `"^""$serviceName`"^"": $_"^""; Exit 1; }; }; <# -- 4. Start if not running (must be enabled first) #>; if($defaultStartupMode -eq 'Automatic') { if ($service.Status -ne [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is not running, starting it."^""; try { Start-Service $serviceName -ErrorAction Stop; Write-Host "^""Started `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not start `"^""$serviceName`"^"", requires restart, it will be started after reboot.`r`n$_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is already running, no need to start."^""; }; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable all settings synchronization (revert)-------
:: ----------------------------------------------------------
echo --- Disable all settings synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableSettingSync' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableSettingSyncUserOverride' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableSyncOnPaidNetwork' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'SyncPolicy' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Disable "Application" setting synchronization (revert)--
:: ----------------------------------------------------------
echo --- Disable "Application" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableApplicationSettingSync' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableApplicationSettingSyncUserOverride' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---Disable "App Sync" setting synchronization (revert)----
:: ----------------------------------------------------------
echo --- Disable "App Sync" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableAppSyncSettingSync' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableAppSyncSettingSyncUserOverride' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Disable "Credentials" setting synchronization (revert)--
:: ----------------------------------------------------------
echo --- Disable "Credentials" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableCredentialsSettingSync' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableCredentialsSettingSyncUserOverride' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials' /v 'Enabled' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -Disable "Desktop Theme" setting synchronization (revert)-
:: ----------------------------------------------------------
echo --- Disable "Desktop Theme" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableDesktopThemeSettingSync' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableDesktopThemeSettingSyncUserOverride' /f 2>$null"
:: ----------------------------------------------------------


:: Disable "Personalization" setting synchronization (revert)
echo --- Disable "Personalization" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisablePersonalizationSettingSync' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisablePersonalizationSettingSyncUserOverride' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -Disable "Start Layout" setting synchronization (revert)--
:: ----------------------------------------------------------
echo --- Disable "Start Layout" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableStartLayoutSettingSync' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Disable "Web Browser" setting synchronization (revert)--
:: ----------------------------------------------------------
echo --- Disable "Web Browser" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableWebBrowserSettingSync' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Disable "Windows" setting synchronization (revert)----
:: ----------------------------------------------------------
echo --- Disable "Windows" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableWindowsSettingSync' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableWindowsSettingSyncUserOverride' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---Disable "Language" setting synchronization (revert)----
:: ----------------------------------------------------------
echo --- Disable "Language" setting synchronization (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language' /v 'Enabled' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Disable automatic map downloads (revert)---------
:: ----------------------------------------------------------
echo --- Disable automatic map downloads (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps' /v 'AllowUntriggeredNetworkTrafficOnSettingsPage' /f 2>$null"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps' /v 'AutoDownloadAndUpdateMapData' /f 2>$null"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable game screen recording (revert)----------
:: ----------------------------------------------------------
echo --- Disable game screen recording (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "$revertData = '0'; reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_Enabled' /t 'REG_DWORD' /d "^""$revertData"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "reg delete 'HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR' /v 'AllowGameDVR' /f 2>$null"
:: ----------------------------------------------------------


:: Pause the script to view the final state
pause
:: Restore previous environment settings
endlocal
:: Exit the script successfully
exit /b 0