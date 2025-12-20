rem Run bcdedit command to check for the current status / Yes = True / No = False
rem https://docs.microsoft.com/en-us/windows-hardware/drivers/devtest/bcdedit--set
rem https://docs.google.com/document/d/1c2-lUJq74wuYK1WrA_bIvgb89dUN0sj8-hO3vqmrau4/edit
bcdedit /deletevalue safeboot
bcdedit /deletevalue safebootalternateshell
bcdedit /deletevalue removememory
bcdedit /deletevalue truncatememory
bcdedit /deletevalue useplatformclock
bcdedit /set hypervisorlaunchtype off
bcdedit /set flightsigning off
bcdedit /set {bootmgr} displaybootmenu no
bcdedit /set {bootmgr} flightsigning off
bcdedit /set advancedoptions false
bcdedit /set bootems no
bcdedit /set bootmenupolicy standard
bcdedit /set bootstatuspolicy IgnoreAllFailures
bcdedit /set bootux disabled
bcdedit /set disabledynamictick yes
bcdedit /set lastknowngood yes
bcdedit /set recoveryenabled no
bcdedit /set quietboot yes
bcdedit /set useplatformtick yes
bcdedit /set vsmlaunchtype off
bcdedit /set vm no
pause