#====================================================================================
#                     THE S.U.C.K. SERVICE PROTOCOL
#                  A FortKnight's Legacy by JACKPOT_ZB
#
#       Founder of SUC(K) - Secret Unlocked Circle of FortKnight's
#                Find us on Discord: https://discord.gg/xtgBxkpc2x
#====================================================================================

# This try-catch block is a failsafe to catch any unexpected error and prevent the window from closing.
try { 
    # --- SCRIPT-WIDE VARIABLES FOR SUMMARY ---
    $script:failedOperations = @()
    $script:successfulOperations = 0

    Clear-Host
    $ErrorActionPreference = "Continue"
    $Host.UI.RawUI.WindowTitle = "The S.U.C.K. Protocol - Advanced Configuration"

    # Set console colors
    try {
        $Host.UI.RawUI.BackgroundColor = "Black"
        $Host.UI.RawUI.ForegroundColor = "Yellow"
        Clear-Host
    }
    catch {
        Write-Host "Warning: Could not set console colors." -ForegroundColor Red
        Start-Sleep -Seconds 2
    }

    # --- ROBUST ADMINISTRATOR CHECK ---
    if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Clear-Host
        Write-Host "-------------------------------------------------------------------" -ForegroundColor Red
        Write-Host " ERROR: Administrator privileges are REQUIRED!" -ForegroundColor Red
        Write-Host "-------------------------------------------------------------------" -ForegroundColor Red
        Write-Host ""
        Write-Host "This script needs to modify system settings." -ForegroundColor Yellow
        Write-Host "Please run it as an Administrator." -ForegroundColor Yellow
        Write-Host ""
        Write-Host "HOW TO FIX:" -ForegroundColor Cyan
        Write-Host "1. Close this window."
        Write-Host "2. Right-click on the .ps1 script file."
        Write-Host "3. Select 'Run with PowerShell' or 'Run as administrator'."
        Write-Host ""
        Read-Host "Press ENTER to close this window."
        exit
    }

    # --- FUNCTION DEFINITIONS ---

    function Write-ColorText($Text, $ForegroundColor) {
        try {
            Write-Host $Text -ForegroundColor $ForegroundColor -ErrorAction Stop
        }
        catch {
            Write-Host $Text
        }
    }

    function Write-Header($Title) {
        $boxWidth = 67
        $fullLine = '═' * $boxWidth
        $padding = [math]::Floor(($boxWidth - $Title.Length - 2) / 2)
        $paddedTitle = (' ' * $padding) + $Title.ToUpper()
        Write-Host ""
        Write-Host "╔$fullLine╗" -ForegroundColor Yellow
        Write-Host "║$($paddedTitle.PadRight($boxWidth))║" -ForegroundColor Yellow
        Write-Host "╚$fullLine╝" -ForegroundColor Yellow
        Write-Host ""
    }
    
    # --- NEW: Graceful Exit function ---
    function Graceful-Exit {
        Clear-Host
        Write-Header "HEY, DON'T FORGET!"
        Write-Host ""
        "A reboot is needed for all changes to take full effect!".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Cyan; Start-Sleep -Milliseconds 10 }; Write-Host ""
        Write-Host ""
        "This window will close in 5 seconds...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Gray; Start-Sleep -Milliseconds 10 }; Write-Host ""
        Start-Sleep -Seconds 5
        exit
    }
    
    function Set-RegistryProperties($Path, [hashtable]$Properties) {
        if (-not (Test-Path $Path)) {
            try { New-Item -Path $Path -Force | Out-Null } catch {}
        }
        foreach ($prop in $Properties.GetEnumerator()) {
            try {
                $Type = if ($prop.Value -is [int]) { "DWord" } elseif ($prop.Value -is [byte[]]) { "Binary" } else { "String" }
                Set-ItemProperty -Path $Path -Name $prop.Key -Value $prop.Value -Type $Type -ErrorAction Stop -Force
            } catch {
                # Silent failure
            }
        }
    }

    function Prompt-And-Return {
        Write-Host ""
        "Press 0 and ENTER to return to the main menu.".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 1 }; Write-Host ""
        "Press ENTER to exit the program.".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Gray; Start-Sleep -Milliseconds 1 }; Write-Host ""
        $choice = Read-Host "Your choice: "
        if ($choice -eq "0") {
            mainMenu
        } else {
            Graceful-Exit
        }
    }
    
    function Prompt-Reboot-Or-Return {
        Write-Host ""
        Write-ColorText "A REBOOT IS REQUIRED for changes to take full effect." "Red"
        "Press [R] to Reboot Now, [0] for Main Menu, or [ENTER] to Quit.".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 1 }; Write-Host ""
        $choice = Read-Host "Your choice"

        switch ($choice.ToUpper()) {
            "R" { Perform-RebootFn }
            "0" { mainMenu }
            default { Graceful-Exit }
        }
    }

    function Show-Summary($itemType, $promptFunction) {
        Write-Header "OPERATION SUMMARY"
        Write-ColorText "[✓] $($script:successfulOperations) $itemType were processed successfully." "Green"
        
        if ($script:failedOperations.Count -gt 0) {
            Write-ColorText "[✗] $($script:failedOperations.Count) $itemType could not be changed due to access restrictions:" "Red"
            foreach ($failedItem in $script:failedOperations) {
                Write-ColorText "   - $failedItem" "DarkYellow"
            }
            Write-Host ""
            Write-Header "PRO-TIP"
            Write-ColorText "To resolve 'access denied' errors, run this script with higher privileges." "Cyan"
            Write-ColorText "Tools like NSudo or PowerRun are recommended, ideally in Windows Safe Mode." "Cyan"

        } else {
            Write-ColorText "All operations completed without any detectable errors." "Green"
        }
        
        Invoke-Expression $promptFunction
    }

    function Disable-ServiceAndTask($serviceName) {
        Write-ColorText "       - Attempting to disable: $serviceName..." "Yellow"
        Try {
            $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue
            if ($service) {
                Stop-Service -Name $serviceName -Force -ErrorAction SilentlyContinue | Out-Null
                Set-Service -Name $serviceName -StartupType Disabled -ErrorAction Stop | Out-Null
                Write-ColorText "       - [✓] '$serviceName' is now disabled." "Green"
                $script:successfulOperations++
            } else {
                Write-ColorText "       - [!] Service '$serviceName' not found, skipping." "Gray"
            }
        } Catch {
            Write-ColorText "       - [✗] FAILED to disable '$serviceName' (Access likely denied)." "DarkYellow"
            $script:failedOperations += $serviceName
        }
    }

    function Enable-ServiceAndTask($serviceName, $startupType) {
        Write-ColorText "       - Attempting to re-enable: $serviceName..." "Yellow"
        Try {
            $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue
            if ($service) {
                Set-Service -Name $serviceName -StartupType $startupType -ErrorAction Stop | Out-Null
                if ($startupType -ne "Disabled") {
                    Start-Service -Name $serviceName -ErrorAction SilentlyContinue | Out-Null
                }
                Write-ColorText "       - [✓] '$serviceName' re-enabled to '$startupType'." "Green"
                $script:successfulOperations++
            } else {
                Write-ColorText "       - [!] Service '$serviceName' not found, skipping." "Gray"
            }
        } Catch {
            Write-ColorText "       - [✗] FAILED to re-enable '$serviceName' (Access likely denied)." "DarkYellow"
            $script:failedOperations += $serviceName
        }
    }
    
    function Reset-Counters {
        $script:failedOperations = @()
        $script:successfulOperations = 0
    }

    # --- MENU OPTION FUNCTIONS ---

    function Disable-AllServicesFn {
        Reset-Counters
        Write-Header "DISABLE ALL SERVICES FOR MINIMAL CONFIGURATION"
        "Preparing your system for a truly minimal setup...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        Disable-UnnecessaryServicesFn
        Disable-WinUpdateStoreServicesFn
        Disable-RemoteServicesFn
        Disable-PrinterServicesFn
        Disable-BluetoothServicesFn
        Disable-WifiServicesFn
        Show-Summary "services" "Prompt-Reboot-Or-Return"
    }

    function Reactivate-AllServicesFn {
        Reset-Counters
        Write-Header "REACTIVATE ALL SERVICES TO DEFAULT"
        "Restoring system services to their default configurations...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        Reactivate-UnnecessaryServicesFn
        Reactivate-WinUpdateStoreServicesFn
        Reactivate-RemoteServicesFn
        Reactivate-PrinterServicesFn
        Reactivate-BluetoothServicesFn
        Reactivate-WifiServicesFn
        Show-Summary "services" "Prompt-Reboot-Or-Return"
    }

    function Disable-UnnecessaryServicesFn {
        Write-Header "DISABLE UNNECESSARY SERVICES"
        "Optimizing system by disabling non-essential services...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\BluetoothUserService" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\CDPUserSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\CaptureService" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\MessagingService" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\services\OneSyncSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\UserDataSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\UnistoreSvc" @{"Start" = 4}
        Set-RegistryProperties "HKLM:\SYSTEM\CurrentControlSet\Services\WpnUserService" @{"Start" = 4}
        
        $servicesToDisable = @(
            "AJRouter", "AppXSvc", "ALG", "AppMgmt", "AppReadiness", "tzautoupdate", "AssignedAccessManagerSvc", "BDESVC", "wbengine",
            "BthHFSrv", "PeerDistSvc", "KeyIso", "CertPropSvc", "VaultSvc", "CDPSvc", "diagsvc", "DPS", "WdiServiceHost", "WdiSystemHost",
            "TrkWks", "MSDTC", "dmwappushservice", "DisplayEnhancementService", "MapsBroker", "fdPHost", "FDResPub", "EFS", "EntAppSvc",
            "fhsvc", "GraphicsPerfSvc", "HomeGroupListener", "HomeGroupProvider", "HvHost", "hns", "vmickvpexchange", "vmicguestinterface",
            "vmicshutdown", "vmicheartbeat", "vmicvmsession", "vmicrdv", "vmictimesync", "vmicvss", "IEEtwCollectorService", "iphlpsvc",
            "IpxlatCfgSvc", "PolicyAgent", "irmon", "lltdsvc", "diagnosticshub.standardcollector.service", "wlidsvc", "AppVClient", "NgcSvc",
            "NgcCtnrSvc", "swprv", "smphost", "SmsRouter", "MSiSCSI", "NaturalAuthentication", "NetTcpPortSharing", "Netlogon", "NcdAutoSetup",
            "NcbService", "NcaSvc", "CscService", "defragsvc", "SEMgrSvc", "PNRPsvc", "p2psvc", "p2pimsvc", "pla", "PhoneSvc", "WPDBusEnum",
            "PcaSvc", "WpcMonSvc", "QWAVE", "RasAuto", "RasMan", "SessionEnv", "TermService", "UmRdpService", "RpcLocator", "RetailDemo",
            "SNMPTRAP", "seclogon", "wscsvc", "SensorDataService", "SensrSvc", "SensorService", "shpamsvc", "ShellHWDetection", "SCardSvr",
            "ScDeviceEnum", "SCPolicySvc", "SharedRealitySvc", "StorSvc", "TieringEngineService", "SysMain", "SgrmBroker", "lmhosts", "TapiSrv",
            "Themes", "tiledatamodelsvc", "TabletInputService", "UevAgentService", "VSS", "WalletService", "wmiApSrv", "WwanSvc", "TokenBroker",
            "WebClient", "WFDSConMgrSvc", "SDRSVC", "WbioSrvc", "FrameServer", "wcncsvc", "Sense", "WdNisSvc", "WinDefend", "SecurityHealthService",
            "WEPHOSTSVC", "WerSvc", "Wecsvc", "FontCache", "StiSvc", "wisvc", "LicenseManager", "icssvc", "WMPNetworkSvc", "FontCache3.0.0.0",
            "WpnService", "perceptionsimulation", "spectrum", "WSearch", "W32Time", "XboxGipSvc", "xbgm", "XblAuthManager", "XblGameSave", "XboxNetApiSvc",
            "DeviceAssociationService", "DusmSvc", "lfsvc", "Fax", "SharedAccess"
        )
        foreach ($service in $servicesToDisable) {
            Disable-ServiceAndTask $service
        }
    }

    function Reactivate-UnnecessaryServicesFn {
        Write-Header "REACTIVATE UNNECESSARY SERVICES"
        "Restoring non-essential services to their default states...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""

        $servicesToReactivate = @(
            "AJRouter", "AppXSvc", "ALG", "AppMgmt", "AppReadiness", "tzautoupdate", "AssignedAccessManagerSvc", "BDESVC", "wbengine",
            "BthHFSrv", "PeerDistSvc", "KeyIso", "CertPropSvc", "VaultSvc", "CDPSvc", "diagsvc", "DPS", "WdiServiceHost", "WdiSystemHost",
            "TrkWks", "MSDTC", "dmwappushservice", "DisplayEnhancementService", "MapsBroker", "fdPHost", "FDResPub", "EFS", "EntAppSvc",
            "fhsvc", "GraphicsPerfSvc", "HomeGroupListener", "HomeGroupProvider", "HvHost", "hns", "vmickvpexchange", "vmicguestinterface",
            "vmicshutdown", "vmicheartbeat", "vmicvmsession", "vmicrdv", "vmictimesync", "vmicvss", "IEEtwCollectorService", "iphlpsvc",
            "IpxlatCfgSvc", "PolicyAgent", "irmon", "lltdsvc", "diagnosticshub.standardcollector.service", "wlidsvc", "AppVClient", "NgcSvc",
            "NgcCtnrSvc", "swprv", "smphost", "SmsRouter", "MSiSCSI", "NaturalAuthentication", "NetTcpPortSharing", "Netlogon", "NcdAutoSetup",
            "NcbService", "NcaSvc", "CscService", "defragsvc", "SEMgrSvc", "PNRPsvc", "p2psvc", "p2pimsvc", "pla", "PhoneSvc", "WPDBusEnum",
            "PcaSvc", "WpcMonSvc", "QWAVE", "RasAuto", "RasMan", "SessionEnv", "TermService", "UmRdpService", "RpcLocator", "RetailDemo",
            "SNMPTRAP", "seclogon", "wscsvc", "SensorDataService", "SensrSvc", "SensorService", "shpamsvc", "ShellHWDetection", "SCardSvr",
            "ScDeviceEnum", "SCPolicySvc", "SharedRealitySvc", "StorSvc", "TieringEngineService", "SysMain", "SgrmBroker", "lmhosts", "TapiSrv",
            "Themes", "tiledatamodelsvc", "TabletInputService", "UevAgentService", "VSS", "WalletService", "wmiApSrv", "WwanSvc", "TokenBroker",
            "WebClient", "WFDSConMgrSvc", "SDRSVC", "WbioSrvc", "FrameServer", "wcncsvc", "Sense", "WdNisSvc", "WinDefend", "SecurityHealthService",
            "WEPHOSTSVC", "WerSvc", "Wecsvc", "FontCache", "StiSvc", "wisvc", "LicenseManager", "icssvc", "WMPNetworkSvc", "FontCache3.0.0.0",
            "WpnService", "perceptionsimulation", "spectrum", "WSearch", "W32Time", "XboxGipSvc", "xbgm", "XblAuthManager", "XblGameSave", "XboxNetApiSvc",
            "DeviceAssociationService", "DusmSvc", "lfsvc", "Fax", "SharedAccess"
        )
        foreach ($service in $servicesToReactivate) {
            Enable-ServiceAndTask $service "Manual"
        }
        Enable-ServiceAndTask "Themes" "Automatic"
        Enable-ServiceAndTask "SysMain" "Automatic"
    }

    function Disable-WinUpdateStoreServicesFn {
        Write-Header "DISABLE WINDOWS UPDATE & STORE"
        $services = @("ClipSVC", "BITS", "InstallService", "UsoSvc", "wuauserv", "WaaSMedicSvc", "DoSvc")
        foreach ($service in $services) { Disable-ServiceAndTask $service }
    }

    function Reactivate-WinUpdateStoreServicesFn {
        Write-Header "REACTIVATE WINDOWS UPDATE & STORE"
        Enable-ServiceAndTask "ClipSVC" "Manual"
        Enable-ServiceAndTask "BITS" "AutomaticDelayedStart"
        Enable-ServiceAndTask "InstallService" "Manual"
        Enable-ServiceAndTask "UsoSvc" "AutomaticDelayedStart"
        Enable-ServiceAndTask "wuauserv" "Manual"
        Enable-ServiceAndTask "WaaSMedicSvc" "Manual"
        Enable-ServiceAndTask "DoSvc" "AutomaticDelayedStart"
    }

    function Disable-RemoteServicesFn {
        Write-Header "DISABLE REMOTE SERVICES"
        $services = @("RemoteRegistry", "RemoteAccess", "WinRM", "RmSvc")
        foreach ($service in $services) { Disable-ServiceAndTask $service }
    }

    function Reactivate-RemoteServicesFn {
        Write-Header "REACTIVATE REMOTE SERVICES"
        Enable-ServiceAndTask "RemoteRegistry" "Manual"
        Enable-ServiceAndTask "RemoteAccess" "Manual"
        Enable-ServiceAndTask "WinRM" "Manual"
        Enable-ServiceAndTask "RmSvc" "Manual"
    }

    function Disable-PrinterServicesFn {
        Write-Header "DISABLE PRINTER SERVICES"
        $services = @("PrintNotify", "Spooler")
        foreach ($service in $services) { Disable-ServiceAndTask $service }
    }

    function Reactivate-PrinterServicesFn {
        Write-Header "REACTIVATE PRINTER SERVICES"
        Enable-ServiceAndTask "PrintNotify" "Manual"
        Enable-ServiceAndTask "Spooler" "Automatic"
    }

    function Disable-BluetoothServicesFn {
        Write-Header "DISABLE BLUETOOTH SERVICES"
        $services = @("BTAGService", "bthserv")
        foreach ($service in $services) { Disable-ServiceAndTask $service }
    }

    function Reactivate-BluetoothServicesFn {
        Write-Header "REACTIVATE BLUETOOTH SERVICES"
        Enable-ServiceAndTask "BTAGService" "Manual"
        Enable-ServiceAndTask "bthserv" "Manual"
    }

    function Disable-WifiServicesFn {
        Write-Header "DISABLE WIFI SERVICES"
        $services = @("NlaSvc", "LanmanWorkstation")
        foreach ($service in $services) { Disable-ServiceAndTask $service }
    }

    function Reactivate-WifiServicesFn {
        Write-Header "REACTIVATE WIFI SERVICES"
        Enable-ServiceAndTask "NlaSvc" "Automatic"
        Enable-ServiceAndTask "LanmanWorkstation" "Automatic"
    }
    
    function Rename-CriticalFiles {
        Reset-Counters
        Write-Header "RENAMING CRITICAL SYSTEM FILES"
        "Taking ownership and renaming files... This is a critical operation.".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        $filesToRename = @(
            "C:\Windows\System32\windowsperformancerecordercontrol.dll", "C:\Windows\System32\certcli.dll", "C:\Windows\System32\mpclient.dll",
            "C:\Windows\System32\mpengine.dll", "C:\Windows\System32\wscsvc.dll", "C:\Windows\System32\qwave.dll",
            "C:\Windows\System32\iphlpsvc.dll", "C:\Windows\System32\msmpeng.exe", "C:\Windows\System32\srtsp64.dll"
        )
        foreach ($file in $filesToRename) {
            $backupFile = "$($file).BACKUP"
            $fileName = Split-Path $file -Leaf
            if (Test-Path $file) {
                Write-ColorText "       - Processing: $fileName..." "Yellow"
                try {
                    takeown.exe /f $file /a | Out-Null
                    icacls.exe $file /grant "Administrators:F" | Out-Null
                    Rename-Item -Path $file -NewName $backupFile -Force -ErrorAction Stop
                    Write-ColorText "       - [✓] Renamed to $($fileName).BACKUP." "Green"
                    $script:successfulOperations++
                } catch { 
                    Write-ColorText "       - [✗] ERROR renaming $fileName" "DarkYellow"
                    $script:failedOperations += $fileName
                }
            } elseif (Test-Path $backupFile) { Write-ColorText "       - [!] $fileName already renamed. Skipping." "Gray" }
        }
        Show-Summary "files" "Prompt-Reboot-Or-Return"
    }

    function Revert-CriticalFiles {
        Reset-Counters
        Write-Header "REVERTING CRITICAL SYSTEM FILES"
        "Restoring original filenames...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        $filesToRevert = @(
            "C:\Windows\System32\windowsperformancerecordercontrol.dll", "C:\Windows\System32\certcli.dll", "C:\Windows\System32\mpclient.dll",
            "C:\Windows\System32\mpengine.dll", "C:\Windows\System32\wscsvc.dll", "C:\Windows\System32\qwave.dll",
            "C:\Windows\System32\iphlpsvc.dll", "C:\Windows\System32\msmpeng.exe", "C:\Windows\System32\srtsp64.dll"
        )
        foreach ($originalFile in $filesToRevert) {
            $backupFile = "$($originalFile).BACKUP"
            $fileName = Split-Path $originalFile -Leaf
            if (Test-Path $backupFile) {
                Write-ColorText "       - Reverting: $fileName..." "Yellow"
                try {
                    Rename-Item -Path $backupFile -NewName $originalFile -Force -ErrorAction Stop
                    Write-ColorText "       - [✓] Restored $fileName." "Green"
                    $script:successfulOperations++
                } catch { 
                    Write-ColorText "       - [✗] ERROR reverting $fileName." "DarkYellow"
                    $script:failedOperations += $fileName
                }
            } elseif (Test-Path $originalFile) { Write-ColorText "       - [!] $fileName is already restored. Skipping." "Gray" }
        }
        Show-Summary "files" "Prompt-Reboot-Or-Return"
    }

    function Disable-SpecificDrivers {
        Reset-Counters
        Write-Header "DISABLING SPECIFIC SYSTEM DRIVERS"
        "Modifying driver registry settings... This is a critical operation.".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        $driversToDisable = @("Acpidev", "Acpipagr", "Acpitime", "Acpipmi", "wmiacpi", "cad")
        $regPathBase = "HKLM:\SYSTEM\CurrentControlSet\Services"
        foreach ($driver in $driversToDisable) {
            $regPath = Join-Path $regPathBase $driver
            Write-ColorText "       - Processing driver: $driver..." "Yellow"
            if (Test-Path $regPath) {
                try {
                    Set-ItemProperty -Path $regPath -Name "Start" -Value 4 -Type DWord -Force -ErrorAction Stop
                    Set-ItemProperty -Path $regPath -Name "ErrorControl" -Value 0 -Type DWord -Force -ErrorAction Stop
                    Write-ColorText "       - [✓] Driver '$driver' disabled." "Green"
                    $script:successfulOperations++
                } catch { 
                    Write-ColorText "       - [✗] ERROR disabling driver '$driver'." "DarkYellow"
                    $script:failedOperations += $driver
                }
            } else { Write-ColorText "       - [!] Driver service '$driver' not found. Skipping." "Gray" }
        }
        Show-Summary "drivers" "Prompt-Reboot-Or-Return"
    }

    function Revert-SpecificDrivers {
        Reset-Counters
        Write-Header "REVERTING SPECIFIC SYSTEM DRIVERS"
        "Restoring default driver registry settings...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        $driversToRevert = @("Acpidev", "Acpipagr", "Acpitime", "Acpipmi", "wmiacpi", "cad")
        $regPathBase = "HKLM:\SYSTEM\CurrentControlSet\Services"
        foreach ($driver in $driversToRevert) {
            $regPath = Join-Path $regPathBase $driver
            Write-ColorText "       - Reverting driver: $driver..." "Yellow"
            if (Test-Path $regPath) {
                try {
                    Set-ItemProperty -Path $regPath -Name "Start" -Value 3 -Type DWord -Force -ErrorAction Stop
                    Set-ItemProperty -Path $regPath -Name "ErrorControl" -Value 1 -Type DWord -Force -ErrorAction Stop
                    Write-ColorText "       - [✓] Driver '$driver' reverted to default." "Green"
                    $script:successfulOperations++
                } catch { 
                    Write-ColorText "       - [✗] ERROR reverting driver '$driver'." "DarkYellow"
                    $script:failedOperations += $driver
                }
            } else { Write-ColorText "       - [!] Driver service '$driver' not found. Skipping." "Gray" }
        }
        Show-Summary "drivers" "Prompt-Reboot-Or-Return"
    }

    function Perform-RebootFn {
        Write-Header "SYSTEM REBOOT"
        "Your system will now restart to apply changes...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        Start-Sleep -Seconds 1
        "Rebooting in 3...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        Start-Sleep -Seconds 1
        "Rebooting in 2...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        Start-Sleep -Seconds 1
        "Rebooting in 1...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        Start-Sleep -Seconds 1
        Restart-Computer -Force
    }

    # --- MAIN MENU ---

    function mainMenu {
        Clear-Host
        Write-Header "THE S.U.C.K. SERVICE PROTOCOL"
        "A FortKnight's Legacy by JACKPOT_ZB".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        "Founder of SUC(K) - Secret Unlocked Circle of FortKnight's".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        "Find us on Discord: https://discord.gg/xtgBxkpc2x".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
        
        Write-Header "Windows Service Control - Advanced Configuration"
        
        "Select an option:".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 1 }; Write-Host ""
        Write-Host ""
        Write-ColorText "[A] DISABLE ALL services for minimal setup." "Green"
        Write-ColorText "[B] REACTIVATE ALL services to default." "Yellow"
        Write-Host ""
        Write-ColorText "[C] DISABLE UNNECESSARY services." "Green"
        Write-ColorText "[D] REACTIVATE UNNECESSARY services." "Yellow"
        Write-Host ""
        Write-ColorText "[O] RENAME critical system files (DANGEROUS)." "Green"
        Write-ColorText "[P] REVERT critical system files." "Yellow"
        Write-Host ""
        Write-ColorText "[S] DISABLE specific system drivers (DANGEROUS)." "Green"
        Write-ColorText "[T] REVERT specific system drivers." "Yellow"
        Write-Host ""
        Write-ColorText "[R] REBOOT PC NOW (recommended)." "White"
        Write-ColorText "[Q] QUIT PROGRAM." "Yellow"
        Write-Host ""

        $choice = Read-Host "Your choice"
        Write-Host ""

        switch ($choice.ToUpper()) {
            "A" { Disable-AllServicesFn }
            "B" { Reactivate-AllServicesFn }
            "C" { Reset-Counters; Disable-UnnecessaryServicesFn; Show-Summary "services" "Prompt-And-Return" }
            "D" { Reset-Counters; Reactivate-UnnecessaryServicesFn; Show-Summary "services" "Prompt-And-Return" }
            "O" { Rename-CriticalFiles }
            "P" { Revert-CriticalFiles }
            "S" { Disable-SpecificDrivers }
            "T" { Revert-SpecificDrivers }
            "R" { Perform-RebootFn }
            "Q" { Graceful-Exit }
            default {
                Write-ColorText "Invalid selection. Please try again." "Red"
                Start-Sleep -Seconds 2
                mainMenu
            }
        }
    }

    # --- SCRIPT EXECUTION START ---
    Clear-Host
    "S.U.C.K. PROTOCOL successfully loaded...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
    "System integrity verified. Awaiting execution.".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 5 }; Write-Host ""
    Start-Sleep -Seconds 1
    Write-Host ""
    "Initializing interface in...".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Yellow; Start-Sleep -Milliseconds 1 }; Write-Host ""

    for ($i = 3; $i -ge 1; $i--) {
        Write-Host -NoNewline "`r$i..." -ForegroundColor "Yellow"
        Start-Sleep -Seconds 1
    }

    Write-Host "`r                         `r"
    "PROTOCOL ENGAGED!".ToCharArray() | ForEach-Object { Write-Host -NoNewline $_ -ForegroundColor Green; Start-Sleep -Milliseconds 1 }; Write-Host ""
    Start-Sleep -Seconds 1

    mainMenu

} catch {
    Clear-Host
    Write-Host "-------------------------------------------------------------------" -ForegroundColor Red
    Write-Host " A CRITICAL ERROR OCCURRED!" -ForegroundColor Red
    Write-Host "-------------------------------------------------------------------" -ForegroundColor Red
    Write-Host ""
    Write-Host "ERROR MESSAGE:" -ForegroundColor Yellow
    Write-Host $_.Exception.Message -ForegroundColor White
    Write-Host ""
    Write-Host "LINE NUMBER: $($_.InvocationInfo.ScriptLineNumber)" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "The script has been stopped. Press ENTER to close this window."
}