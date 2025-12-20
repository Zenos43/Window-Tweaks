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
:: ---------Disable app access to "Documents" folder---------
:: ----------------------------------------------------------
echo --- Disable app access to "Documents" folder
:: Disable app capability (documentsLibrary) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Disable app access to "Pictures" folder----------
:: ----------------------------------------------------------
echo --- Disable app access to "Pictures" folder
:: Disable app capability (picturesLibrary) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable app access to "Videos" folder-----------
:: ----------------------------------------------------------
echo --- Disable app access to "Videos" folder
:: Disable app capability (videosLibrary) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable app access to "Music" folder-----------
:: ----------------------------------------------------------
echo --- Disable app access to "Music" folder
:: Disable app capability (musicLibrary) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable app access to personal files-----------
:: ----------------------------------------------------------
echo --- Disable app access to personal files
:: Disable app capability (broadFileSystemAccess) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Disable app access to call history------------
:: ----------------------------------------------------------
echo --- Disable app access to call history
:: Disable app access (LetAppsAccessCallHistory) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCallHistory' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCallHistory_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCallHistory_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCallHistory_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (phoneCallHistory) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({8BC668CF-7728-45BD-93F8-CF2B3B41D7AB}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{8BC668CF-7728-45BD-93F8-CF2B3B41D7AB}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: Disable app access to phone calls (breaks phone calls through Phone Link)
echo --- Disable app access to phone calls (breaks phone calls through Phone Link)
:: Disable app access (LetAppsAccessPhone) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessPhone' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessPhone_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessPhone_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessPhone_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (phoneCall) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable app access to messaging (SMS / MMS)--------
:: ----------------------------------------------------------
echo --- Disable app access to messaging (SMS / MMS)
:: Disable app access (LetAppsAccessMessaging) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMessaging' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMessaging_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMessaging_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMessaging_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (chat) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({992AFA70-6F47-4148-B3E9-3003349C1548}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{992AFA70-6F47-4148-B3E9-3003349C1548}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({21157C1F-2651-4CC1-90CA-1F28B02263F6}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{21157C1F-2651-4CC1-90CA-1F28B02263F6}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable app access to paired Bluetooth devices------
:: ----------------------------------------------------------
echo --- Disable app access to paired Bluetooth devices
:: Disable app capability (bluetooth) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetooth' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable app access to unpaired Bluetooth devices-----
:: ----------------------------------------------------------
echo --- Disable app access to unpaired Bluetooth devices
:: Disable app capability (bluetoothSync) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable app access to voice activation----------
:: ----------------------------------------------------------
echo --- Disable app access to voice activation
:: Disable app access (LetAppsActivateWithVoice) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoice' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoice_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoice_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoice_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps' /v 'AgentActivationEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -Disable app access to voice activation on locked system--
:: ----------------------------------------------------------
echo --- Disable app access to voice activation on locked system
:: Disable app access (LetAppsActivateWithVoiceAboveLock) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoiceAboveLock' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoiceAboveLock_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoiceAboveLock_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsActivateWithVoiceAboveLock_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps' /v 'AgentActivationOnLockScreenEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------------Disable app access to location--------------
:: ----------------------------------------------------------
echo --- Disable app access to location
:: Disable app access (LetAppsAccessLocation) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessLocation' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessLocation_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessLocation_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessLocation_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (location) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration' /v 'Status' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Disable app access ({BFA794E4-F964-4FDB-90F6-51056BFE4B44}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({E6AD100E-5F4E-44CD-BE0F-2265D88D14F5}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{E6AD100E-5F4E-44CD-BE0F-2265D88D14F5}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: Disable app access to account information, name, and picture
echo --- Disable app access to account information, name, and picture
:: Disable app access (LetAppsAccessAccountInfo) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessAccountInfo' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessAccountInfo_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessAccountInfo_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessAccountInfo_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (userAccountInformation) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({C1D23ACC-752B-43E5-8448-8D0E519CD6D6}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{C1D23ACC-752B-43E5-8448-8D0E519CD6D6}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable app access to motion activity-----------
:: ----------------------------------------------------------
echo --- Disable app access to motion activity
:: Disable app access (LetAppsAccessMotion) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMotion' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMotion_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMotion_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessMotion_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (activity) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable app access to trusted devices-----------
:: ----------------------------------------------------------
echo --- Disable app access to trusted devices
:: Disable app access (LetAppsAccessTrustedDevices) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTrustedDevices' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTrustedDevices_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTrustedDevices_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTrustedDevices_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable app access to unpaired wireless devices------
:: ----------------------------------------------------------
echo --- Disable app access to unpaired wireless devices
:: Disable app access (LetAppsSyncWithDevices) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsSyncWithDevices' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsSyncWithDevices_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsSyncWithDevices_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsSyncWithDevices_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app access (LooselyCoupled) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Disable app access to information about other apps----
:: ----------------------------------------------------------
echo --- Disable app access to information about other apps
:: Disable app access (LetAppsGetDiagnosticInfo) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsGetDiagnosticInfo' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsGetDiagnosticInfo_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsGetDiagnosticInfo_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsGetDiagnosticInfo_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (appDiagnostics) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({2297E4E2-5DBE-466D-A12B-0F8286F0D9CA}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2297E4E2-5DBE-466D-A12B-0F8286F0D9CA}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable app access to your contacts------------
:: ----------------------------------------------------------
echo --- Disable app access to your contacts
:: Disable app access (LetAppsAccessContacts) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessContacts' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessContacts_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessContacts_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessContacts_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (contacts) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({7D7E8402-7C54-4821-A34E-AEEFD62DED93}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{7D7E8402-7C54-4821-A34E-AEEFD62DED93}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------------Disable app access to calendar--------------
:: ----------------------------------------------------------
echo --- Disable app access to calendar
:: Disable app access (LetAppsAccessCalendar) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCalendar' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCalendar_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCalendar_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessCalendar_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (appointments) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({D89823BA-7180-4B81-B50C-7E471E6121A3}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{D89823BA-7180-4B81-B50C-7E471E6121A3}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------------Disable app access to email----------------
:: ----------------------------------------------------------
echo --- Disable app access to email
:: Disable app access (LetAppsAccessEmail) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessEmail' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessEmail_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessEmail_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessEmail_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (email) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({9231CB4C-BF57-4AF3-8C55-FDA7BFCC04C5}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{9231CB4C-BF57-4AF3-8C55-FDA7BFCC04C5}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------------Disable app access to tasks----------------
:: ----------------------------------------------------------
echo --- Disable app access to tasks
:: Disable app access (LetAppsAccessTasks) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTasks' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTasks_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTasks_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessTasks_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (userDataTasks) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({E390DF20-07DF-446D-B962-F5C953062741}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{E390DF20-07DF-446D-B962-F5C953062741}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------------Disable app access to radios---------------
:: ----------------------------------------------------------
echo --- Disable app access to radios
:: Disable app access (LetAppsAccessRadios) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessRadios' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessRadios_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessRadios_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessRadios_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (radios) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access ({A8804298-2D5F-42E3-9531-9C8C39EB29CE}) in older Windows versions (before 1903)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{A8804298-2D5F-42E3-9531-9C8C39EB29CE}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Disable app access to physical movement----------
:: ----------------------------------------------------------
echo --- Disable app access to physical movement
:: Disable app access (LetAppsAccessBackgroundSpatialPerception) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessBackgroundSpatialPerception' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (spatialPerception) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\spatialPerception' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app capability (backgroundSpatialPerception) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\backgroundSpatialPerception' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Disable app access to eye tracking------------
:: ----------------------------------------------------------
echo --- Disable app access to eye tracking
:: Disable app access (LetAppsAccessGazeInput) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGazeInput' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGazeInput_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGazeInput_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGazeInput_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (gazeInput) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable app access to human presence-----------
:: ----------------------------------------------------------
echo --- Disable app access to human presence
:: Disable app access (LetAppsAccessHumanPresence) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessHumanPresence' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessHumanPresence_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessHumanPresence_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessHumanPresence_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (humanPresence) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\humanPresence' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable app access to screen capture-----------
:: ----------------------------------------------------------
echo --- Disable app access to screen capture
:: Disable app access (LetAppsAccessGraphicsCaptureProgrammatic) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGraphicsCaptureProgrammatic' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (graphicsCaptureProgrammatic) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Disable app access (LetAppsAccessGraphicsCaptureWithoutBorder) using GPO (re-activation through GUI is not possible)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGraphicsCaptureWithoutBorder' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '\0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' /v 'LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps' /t 'REG_MULTI_SZ' /d "^""$data"^"" /f"
:: Disable app capability (graphicsCaptureWithoutBorder) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable app access to input devices------------
:: ----------------------------------------------------------
echo --- Disable app access to input devices
:: Disable app capability (humanInterfaceDevice) using user privacy settings
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\humanInterfaceDevice' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: Disable "Connected User Experiences and Telemetry" (`DiagTrack`) service
echo --- Disable "Connected User Experiences and Telemetry" (`DiagTrack`) service
:: Disable service(s): `DiagTrack`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'DiagTrack'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) { Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try { Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') { Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try { Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch { Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable WAP push notification routing service-------
:: ----------------------------------------------------------
echo --- Disable WAP push notification routing service
:: Disable service(s): `dmwappushservice`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'dmwappushservice'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) { Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try { Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') { Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try { Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch { Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---Disable "Diagnostics Hub Standard Collector" service---
:: ----------------------------------------------------------
echo --- Disable "Diagnostics Hub Standard Collector" service
:: Disable service(s): `diagnosticshub.standardcollector.service`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'diagnosticshub.standardcollector.service'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) { Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try { Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') { Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try { Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch { Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Disable "Diagnostic Execution Service" (`diagsvc`)----
:: ----------------------------------------------------------
echo --- Disable "Diagnostic Execution Service" (`diagsvc`)
:: Disable service(s): `diagsvc`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'diagsvc'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) { Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try { Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') { Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try { Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch { Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------------Disable "Device" task-------------------
:: ----------------------------------------------------------
echo --- Disable "Device" task
:: Disable scheduled task(s): `\Microsoft\Windows\Device Information\Device`
PowerShell -ExecutionPolicy Unrestricted -Command "$taskPathPattern='\Microsoft\Windows\Device Information\'; $taskNamePattern='Device'; Write-Output "^""Disabling tasks matching pattern `"^""$taskNamePattern`"^""."^""; $tasks = @(Get-ScheduledTask -TaskPath $taskPathPattern -TaskName $taskNamePattern -ErrorAction Ignore); if (-Not $tasks) { Write-Output "^""Skipping, no tasks matching pattern `"^""$taskNamePattern`"^"" found, no action needed."^""; exit 0; }; $operationFailed = $false; foreach ($task in $tasks) { $taskName = $task.TaskName; if ($task.State -eq [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already disabled, no action needed."^""; continue; }; try { $task | Disable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully disabled task `"^""$taskName`"^""."^""; } catch { Write-Error "^""Failed to disable task `"^""$taskName`"^"": $($_.Exception.Message)"^""; $operationFailed = $true; }; }; if ($operationFailed) { Write-Output 'Failed to disable some tasks. Check error messages above.'; exit 1; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------------Disable "Device User" task----------------
:: ----------------------------------------------------------
echo --- Disable "Device User" task
:: Disable scheduled task(s): `\Microsoft\Windows\Device Information\Device User`
PowerShell -ExecutionPolicy Unrestricted -Command "$taskPathPattern='\Microsoft\Windows\Device Information\'; $taskNamePattern='Device User'; Write-Output "^""Disabling tasks matching pattern `"^""$taskNamePattern`"^""."^""; $tasks = @(Get-ScheduledTask -TaskPath $taskPathPattern -TaskName $taskNamePattern -ErrorAction Ignore); if (-Not $tasks) { Write-Output "^""Skipping, no tasks matching pattern `"^""$taskNamePattern`"^"" found, no action needed."^""; exit 0; }; $operationFailed = $false; foreach ($task in $tasks) { $taskName = $task.TaskName; if ($task.State -eq [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already disabled, no action needed."^""; continue; }; try { $task | Disable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully disabled task `"^""$taskName`"^""."^""; } catch { Write-Error "^""Failed to disable task `"^""$taskName`"^"": $($_.Exception.Message)"^""; $operationFailed = $true; }; }; if ($operationFailed) { Write-Output 'Failed to disable some tasks. Check error messages above.'; exit 1; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Disable device and configuration data collection tool---
:: ----------------------------------------------------------
echo --- Disable device and configuration data collection tool
:: Check and terminate the running process "DeviceCensus.exe"
tasklist /fi "ImageName eq DeviceCensus.exe" /fo csv 2>NUL | find /i "DeviceCensus.exe">NUL && (
    echo DeviceCensus.exe is running and will be killed.
    taskkill /f /im DeviceCensus.exe
) || (
    echo Skipping, DeviceCensus.exe is not running.
)
:: Configure termination of "DeviceCensus.exe" immediately upon its startup
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '%WINDIR%\System32\taskkill.exe'; reg add 'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe' /v 'Debugger' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Add a rule to prevent the executable "DeviceCensus.exe" from running via File Explorer
PowerShell -ExecutionPolicy Unrestricted -Command "$executableFilename='DeviceCensus.exe'; try { $registryPathForDisallowRun='HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun'; $existingBlockEntries = Get-ItemProperty -Path "^""$registryPathForDisallowRun"^"" -ErrorAction Ignore; $nextFreeRuleIndex = 1; if ($existingBlockEntries) { $existingBlockingRuleForExecutable = $existingBlockEntries.PSObject.Properties | Where-Object { $_.Value -eq $executableFilename }; if ($existingBlockingRuleForExecutable) { $existingBlockingRuleIndexForExecutable = $existingBlockingRuleForExecutable.Name; Write-Output "^""Skipping, no action needed: `$executableFilename` is already blocked under rule index `"^""$existingBlockingRuleIndexForExecutable`"^""."^""; exit 0; }; $occupiedRuleIndexes = $existingBlockEntries.PSObject.Properties | Where-Object { $_.Name -Match '^\d+$' } | Select -ExpandProperty Name; if ($occupiedRuleIndexes) { while ($occupiedRuleIndexes -Contains $nextFreeRuleIndex) { $nextFreeRuleIndex += 1; }; }; }; Write-Output "^""Adding block rule for `"^""$executableFilename`"^"" under rule index `"^""$nextFreeRuleIndex`"^""."^""; if (!(Test-Path $registryPathForDisallowRun)) { New-Item -Path "^""$registryPathForDisallowRun"^"" -Force -ErrorAction Stop | Out-Null; }; New-ItemProperty -Path "^""$registryPathForDisallowRun"^"" -Name "^""$nextFreeRuleIndex"^"" -PropertyType String -Value "^""$executableFilename"^"" ` -ErrorAction Stop | Out-Null; Write-Output "^""Successfully blocked `"^""$executableFilename`"^"" with rule index `"^""$nextFreeRuleIndex`"^""."^""; } catch { Write-Error "^""Failed to block `"^""$executableFilename`"^"": $_"^""; Exit 1; }"
:: Activate the DisallowRun policy to block specified programs from running via File Explorer
PowerShell -ExecutionPolicy Unrestricted -Command "try { $fileExplorerDisallowRunRegistryPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer'; $currentDisallowRunPolicyValue = Get-ItemProperty -Path "^""$fileExplorerDisallowRunRegistryPath"^"" -Name 'DisallowRun' -ErrorAction Ignore | Select -ExpandProperty DisallowRun; if ([string]::IsNullOrEmpty($currentDisallowRunPolicyValue)) { Write-Output "^""Creating DisallowRun policy at `"^""$fileExplorerDisallowRunRegistryPath`"^""."^""; if (!(Test-Path $fileExplorerDisallowRunRegistryPath)) { New-Item -Path "^""$fileExplorerDisallowRunRegistryPath"^"" -Force -ErrorAction Stop | Out-Null; }; New-ItemProperty -Path "^""$fileExplorerDisallowRunRegistryPath"^"" -Name 'DisallowRun' -Value 1 -PropertyType DWORD -Force -ErrorAction Stop | Out-Null; Write-Output 'Successfully activated DisallowRun policy.'; Exit 0; }; if ($currentDisallowRunPolicyValue -eq 1) { Write-Output 'Skipping, no action needed: DisallowRun policy is already in place.'; Exit 0; }; Write-Output 'Updating DisallowRun policy from unexpected value `"^""$currentDisallowRunPolicyValue`"^"" to `"^""1`"^"".'; Set-ItemProperty -Path "^""$fileExplorerDisallowRunRegistryPath"^"" -Name 'DisallowRun' -Value 1 -Type DWORD -Force -ErrorAction Stop | Out-Null; Write-Output 'Successfully activated DisallowRun policy.'; } catch { Write-Error "^""Failed to activate DisallowRun policy: $_"^""; Exit 1; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Disable processing of Desktop Analytics----------
:: ----------------------------------------------------------
echo --- Disable processing of Desktop Analytics
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowDesktopAnalyticsProcessing' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Disable sending device name in Windows diagnostic data--
:: ----------------------------------------------------------
echo --- Disable sending device name in Windows diagnostic data
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowDeviceNameInTelemetry' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: Disable collection of Edge browsing data for Desktop Analytics
echo --- Disable collection of Edge browsing data for Desktop Analytics
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'MicrosoftEdgeDataOptIn' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --Disable diagnostics data processing for Business cloud--
:: ----------------------------------------------------------
echo --- Disable diagnostics data processing for Business cloud
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowWUfBCloudProcessing' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -Disable Update Compliance processing of diagnostics data-
:: ----------------------------------------------------------
echo --- Disable Update Compliance processing of diagnostics data
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowUpdateComplianceProcessing' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable commercial usage of collected data--------
:: ----------------------------------------------------------
echo --- Disable commercial usage of collected data
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowCommercialDataPipeline' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable diagnostic and usage telemetry----------
:: ----------------------------------------------------------
echo --- Disable diagnostic and usage telemetry
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection' /v 'AllowTelemetry' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection' /v 'AllowTelemetry' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable automatic cloud configuration downloads------
:: ----------------------------------------------------------
echo --- Disable automatic cloud configuration downloads
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Policies\Microsoft\Windows\DataCollection' /v 'DisableOneSettingsDownloads' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------------Disable license telemetry-----------------
:: ----------------------------------------------------------
echo --- Disable license telemetry
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform' /v 'NoGenTicket' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------------Disable error reporting------------------
:: ----------------------------------------------------------
echo --- Disable error reporting
:: Disable Windows Error Reporting (WER)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting' /v 'Disabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting' /v 'Disabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Disable Windows Error Reporting (WER) consent
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent' /v 'DefaultConsent' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent' /v 'DefaultOverrideBehavior' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Disable WER sending second-level data
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Microsoft\Windows\Windows Error Reporting' /v 'DontSendAdditionalData' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Microsoft\Windows\Windows Error Reporting' /v 'LoggingDisabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Disable scheduled task(s): `\Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate`
PowerShell -ExecutionPolicy Unrestricted -Command "$taskPathPattern='\Microsoft\Windows\ErrorDetails\'; $taskNamePattern='EnableErrorDetailsUpdate'; Write-Output "^""Disabling tasks matching pattern `"^""$taskNamePattern`"^""."^""; $tasks = @(Get-ScheduledTask -TaskPath $taskPathPattern -TaskName $taskNamePattern -ErrorAction Ignore); if (-Not $tasks) { Write-Output "^""Skipping, no tasks matching pattern `"^""$taskNamePattern`"^"" found, no action needed."^""; exit 0; }; $operationFailed = $false; foreach ($task in $tasks) { $taskName = $task.TaskName; if ($task.State -eq [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already disabled, no action needed."^""; continue; }; try { $task | Disable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully disabled task `"^""$taskName`"^""."^""; } catch { Write-Error "^""Failed to disable task `"^""$taskName`"^"": $($_.Exception.Message)"^""; $operationFailed = $true; }; }; if ($operationFailed) { Write-Output 'Failed to disable some tasks. Check error messages above.'; exit 1; }"
:: Disable scheduled task(s): `\Microsoft\Windows\Windows Error Reporting\QueueReporting`
PowerShell -ExecutionPolicy Unrestricted -Command "$taskPathPattern='\Microsoft\Windows\Windows Error Reporting\'; $taskNamePattern='QueueReporting'; Write-Output "^""Disabling tasks matching pattern `"^""$taskNamePattern`"^""."^""; $tasks = @(Get-ScheduledTask -TaskPath $taskPathPattern -TaskName $taskNamePattern -ErrorAction Ignore); if (-Not $tasks) { Write-Output "^""Skipping, no tasks matching pattern `"^""$taskNamePattern`"^"" found, no action needed."^""; exit 0; }; $operationFailed = $false; foreach ($task in $tasks) { $taskName = $task.TaskName; if ($task.State -eq [Microsoft.PowerShell.Cmdletization.GeneratedTypes.ScheduledTask.StateEnum]::Disabled) { Write-Output "^""Skipping, task `"^""$taskName`"^"" is already disabled, no action needed."^""; continue; }; try { $task | Disable-ScheduledTask -ErrorAction Stop | Out-Null; Write-Output "^""Successfully disabled task `"^""$taskName`"^""."^""; } catch { Write-Error "^""Failed to disable task `"^""$taskName`"^"": $($_.Exception.Message)"^""; $operationFailed = $true; }; }; if ($operationFailed) { Write-Output 'Failed to disable some tasks. Check error messages above.'; exit 1; }"
:: Disable service(s): `wersvc`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'wersvc'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) { Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try { Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') { Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try { Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch { Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
:: Disable service(s): `wercplsupport`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'wercplsupport'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) { Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try { Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') { Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try { Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch { Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Disable Windows Location Provider-------------
:: ----------------------------------------------------------
echo --- Disable Windows Location Provider
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' /v 'DisableWindowsLocationProvider' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------------Disable location scripting----------------
:: ----------------------------------------------------------
echo --- Disable location scripting
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' /v 'DisableLocationScripting' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------------------Disable location---------------------
:: ----------------------------------------------------------
echo --- Disable location
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors' /v 'DisableLocation' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = 'Deny'; reg add 'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}' /v 'Value' /t 'REG_SZ' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}' /v 'SensorPermissionState' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Disable Cortana's history display-------------
:: ----------------------------------------------------------
echo --- Disable Cortana's history display
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'HistoryViewEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable Cortana's device history usage----------
:: ----------------------------------------------------------
echo --- Disable Cortana's device history usage
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'DeviceHistoryEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable "Hey Cortana" voice activation----------
:: ----------------------------------------------------------
echo --- Disable "Hey Cortana" voice activation
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Speech_OneCore\Preferences' /v 'VoiceActivationOn' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\Software\Microsoft\Speech_OneCore\Preferences' /v 'VoiceActivationDefaultOn' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: Disable Cortana keyboard shortcut (**Windows logo key** + **C**)
echo --- Disable Cortana keyboard shortcut (**Windows logo key** + **C**)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'VoiceShortcut' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Disable Cortana on locked device-------------
:: ----------------------------------------------------------
echo --- Disable Cortana on locked device
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Speech_OneCore\Preferences' /v 'VoiceActivationEnableAboveLockscreen' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------Disable automatic update of speech data----------
:: ----------------------------------------------------------
echo --- Disable automatic update of speech data
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Speech_OneCore\Preferences' /v 'ModelDownloadAllowed' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Disable Cortana voice support during Windows setup----
:: ----------------------------------------------------------
echo --- Disable Cortana voice support during Windows setup
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE' /v 'DisableVoice' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------------Disable Cortana during search---------------
:: ----------------------------------------------------------
echo --- Disable Cortana during search
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowCortana' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------------Disable Cortana experience----------------
:: ----------------------------------------------------------
echo --- Disable Cortana experience
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana' /v 'value' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: Disable Cortana's access to cloud services such as OneDrive and SharePoint
echo --- Disable Cortana's access to cloud services such as OneDrive and SharePoint
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowCloudSearch' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: Disable Cortana speech interaction while the system is locked
echo --- Disable Cortana speech interaction while the system is locked
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowCortanaAboveLock' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable participation in Cortana data collection-----
:: ----------------------------------------------------------
echo --- Disable participation in Cortana data collection
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Windows\CurrentVersion\Search' /v 'CortanaConsent' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---------------Disable enabling of Cortana----------------
:: ----------------------------------------------------------
echo --- Disable enabling of Cortana
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Windows\CurrentVersion\Search' /v 'CanCortanaBeEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------------Disable Cortana in start menu---------------
:: ----------------------------------------------------------
echo --- Disable Cortana in start menu
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'CortanaEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'CortanaEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Remove "Cortana" icon from taskbar------------
:: ----------------------------------------------------------
echo --- Remove "Cortana" icon from taskbar
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' /v 'ShowCortanaButton' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Disable Cortana in ambient mode--------------
:: ----------------------------------------------------------
echo --- Disable Cortana in ambient mode
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'CortanaInAmbientMode' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable indexing of encrypted items------------
:: ----------------------------------------------------------
echo --- Disable indexing of encrypted items
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowIndexingEncryptedStoresOrItems' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Disable automatic language detection when indexing----
:: ----------------------------------------------------------
echo --- Disable automatic language detection when indexing
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AlwaysUseAutoLangDetection' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable remote access to search index-----------
:: ----------------------------------------------------------
echo --- Disable remote access to search index
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'PreventRemoteQueries' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable iFilters and protocol handlers----------
:: ----------------------------------------------------------
echo --- Disable iFilters and protocol handlers
PowerShell -ExecutionPolicy Unrestricted -Command "$data = ' '; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'PreventUnwantedAddIns' /t 'REG_SZ' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: Disable Bing search and recent search suggestions (breaks search history)
echo --- Disable Bing search and recent search suggestions (breaks search history)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer' /v 'DisableSearchBoxSuggestions' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'DisableSearchBoxSuggestions' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Disable Bing search in start menu-------------
:: ----------------------------------------------------------
echo --- Disable Bing search in start menu
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'BingSearchEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Disable web search in search bar-------------
:: ----------------------------------------------------------
echo --- Disable web search in search bar
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'DisableWebSearch' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable web results in Windows Search-----------
:: ----------------------------------------------------------
echo --- Disable web results in Windows Search
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'ConnectedSearchUseWeb' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'ConnectedSearchUseWebOverMeteredConnections' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Disable Windows search highlights-------------
:: ----------------------------------------------------------
echo --- Disable Windows search highlights
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'EnableDynamicContentInWSB' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings' /v 'IsDynamicSearchBoxEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable search's access to location------------
:: ----------------------------------------------------------
echo --- Disable search's access to location
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'AllowSearchToUseLocation' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' /v 'AllowSearchToUseLocation' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -Disable local search history (breaks recent suggestions)-
:: ----------------------------------------------------------
echo --- Disable local search history (breaks recent suggestions)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Policies\Microsoft\Windows\Explorer' /v 'DisableSearchHistory' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings' /v 'IsDeviceSearchHistoryEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ---Disable sharing personal search data with Microsoft----
:: ----------------------------------------------------------
echo --- Disable sharing personal search data with Microsoft
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '3'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search' /v 'ConnectedSearchPrivacy' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable personal cloud content search in taskbar-----
:: ----------------------------------------------------------
echo --- Disable personal cloud content search in taskbar
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings' /v 'IsMSACloudSearchEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings' /v 'IsAADCloudSearchEnabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: Suggest restarting explorer.exe for changes to take effect
PowerShell -ExecutionPolicy Unrestricted -Command "$message = 'This script will not take effect until you restart explorer.exe. You can restart explorer.exe by restarting your computer or by running following on command prompt: `taskkill /f /im explorer.exe & start explorer`.'; $warn =  $false; if ($warn) { Write-Warning "^""$message"^""; } else { Write-Host "^""Note: "^"" -ForegroundColor Blue -NoNewLine; Write-Output "^""$message"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------------Disable Windows Tips-------------------
:: ----------------------------------------------------------
echo --- Disable Windows Tips
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent' /v 'DisableSoftLanding' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: Disable Windows Spotlight (shows random wallpapers on lock screen)
echo --- Disable Windows Spotlight (shows random wallpapers on lock screen)
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Policies\Microsoft\Windows\CloudContent' /v 'DisableWindowsSpotlightFeatures' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------Disable Microsoft Consumer Experiences----------
:: ----------------------------------------------------------
echo --- Disable Microsoft Consumer Experiences
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\Software\Policies\Microsoft\Windows\CloudContent' /v 'DisableWindowsConsumerFeatures' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------Disable ad customization with Advertising ID-------
:: ----------------------------------------------------------
echo --- Disable ad customization with Advertising ID
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo' /v 'Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo' /v 'DisabledByGroupPolicy' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable suggested content in Settings app---------
:: ----------------------------------------------------------
echo --- Disable suggested content in Settings app
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' /v 'SubscribedContent-338393Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' /v 'SubscribedContent-353694Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' /v 'SubscribedContent-353696Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----------------Disable use of biometrics-----------------
:: ----------------------------------------------------------
echo --- Disable use of biometrics
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Biometrics' /v 'Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------------Disable biometric logon------------------
:: ----------------------------------------------------------
echo --- Disable biometric logon
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Biometrics\Credential Provider' /v 'Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable "Windows Biometric Service"------------
:: ----------------------------------------------------------
echo --- Disable "Windows Biometric Service"
:: Disable service(s): `WbioSrvc`
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'WbioSrvc'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) { Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) { Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try { Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch { Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else { Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) { $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) { $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') { Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try { Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch { Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable all settings synchronization-----------
:: ----------------------------------------------------------
echo --- Disable all settings synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableSyncOnPaidNetwork' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '5'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'SyncPolicy' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable "Application" setting synchronization-------
:: ----------------------------------------------------------
echo --- Disable "Application" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableApplicationSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableApplicationSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable "App Sync" setting synchronization--------
:: ----------------------------------------------------------
echo --- Disable "App Sync" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableAppSyncSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableAppSyncSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable "Credentials" setting synchronization-------
:: ----------------------------------------------------------
echo --- Disable "Credentials" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableCredentialsSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableCredentialsSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials' /v 'Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable "Desktop Theme" setting synchronization------
:: ----------------------------------------------------------
echo --- Disable "Desktop Theme" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableDesktopThemeSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableDesktopThemeSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Disable "Personalization" setting synchronization-----
:: ----------------------------------------------------------
echo --- Disable "Personalization" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisablePersonalizationSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisablePersonalizationSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable "Start Layout" setting synchronization------
:: ----------------------------------------------------------
echo --- Disable "Start Layout" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableStartLayoutSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableStartLayoutSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable "Web Browser" setting synchronization-------
:: ----------------------------------------------------------
echo --- Disable "Web Browser" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableWebBrowserSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableWebBrowserSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable "Windows" setting synchronization---------
:: ----------------------------------------------------------
echo --- Disable "Windows" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '2'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableWindowsSettingSync' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync' /v 'DisableWindowsSettingSyncUserOverride' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable "Language" setting synchronization--------
:: ----------------------------------------------------------
echo --- Disable "Language" setting synchronization
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '1'; reg add 'HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language' /v 'Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------Disable automatic map downloads--------------
:: ----------------------------------------------------------
echo --- Disable automatic map downloads
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps' /v 'AllowUntriggeredNetworkTrafficOnSettingsPage' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps' /v 'AutoDownloadAndUpdateMapData' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------------Disable game screen recording---------------
:: ----------------------------------------------------------
echo --- Disable game screen recording
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_Enabled' /t 'REG_DWORD' /d "^""$data"^"" /f"
PowerShell -ExecutionPolicy Unrestricted -Command "$data = '0'; reg add 'HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR' /v 'AllowGameDVR' /t 'REG_DWORD' /d "^""$data"^"" /f"
:: ----------------------------------------------------------


:: Pause the script to view the final state
pause
:: Restore previous environment settings
endlocal
:: Exit the script successfully
exit /b 0