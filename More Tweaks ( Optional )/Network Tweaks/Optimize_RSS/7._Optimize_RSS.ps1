$CoresQty = (Get-WmiObject -Query "SELECT NumberOfCores FROM Win32_Processor").NumberOfCores
$LogicalProcessorsQty = (Get-WmiObject -Query "SELECT NumberOfLogicalProcessors FROM Win32_Processor").NumberOfLogicalProcessors
$env:CoresQty = $CoresQty
$env:LogicalProcessorsQty = $LogicalProcessorsQty
$RSSBaseNumber = 2

$AdapterPnpDeviceId = Get-NetAdapter | Where-Object { $_.PhysicalMediaType -eq 802.3 -and $_.Status -eq 'Up' } | Select-Object -ExpandProperty PnPDeviceID
$EthernetDevice = Get-CimInstance -ClassName Win32_PnPEntity | Where-Object { $_.PNPDeviceID -like $AdapterPnpDeviceId }
$EthernetDeviceClassGuidWithKey = $EthernetDevice | ForEach-Object {
    ($_ | Invoke-CimMethod -MethodName GetDeviceProperties).deviceProperties.where({ $_.KeyName -eq 'DEVPKEY_Device_Driver' }).data
}
$env:ETHERNET_DEVICE_CLASS_GUID_WITH_KEY = $EthernetDeviceClassGuidWithKey

$NoverseBaseRegistryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}"
$NoverseSearchEntries = @("DriverDesc", "BusType")
$NoverseSubKeys = Get-ChildItem -Path $NoverseBaseRegistryPath -ErrorAction SilentlyContinue
foreach ($NoverseSubKey in $NoverseSubKeys) {
    foreach ($NoverseEntry in $NoverseSearchEntries) {
        $NoverseExistingValue = Get-ItemProperty -Path $NoverseSubKey.PSPath -Name $NoverseEntry -ErrorAction SilentlyContinue
        if ($NoverseExistingValue -ne $null) {
            # Registry Werte setzen und Ausgabe erzeugen
            try {
                Set-ItemProperty -Path $NoverseSubKey.PSPath -Name "*NumRssQueues" -Value "4" -Force
                Write-Host "Erfolgreich *NumRssQueues auf 4 gesetzt."

                Set-ItemProperty -Path $NoverseSubKey.PSPath -Name "*RSS" -Value "1" -Force
                Write-Host "Erfolgreich *RSS auf 1 gesetzt."

                Set-ItemProperty -Path $NoverseSubKey.PSPath -Name "RSSProfile" -Value "3" -Force
                Write-Host "Erfolgreich RSSProfile auf 3 gesetzt."

                Set-ItemProperty -Path $NoverseSubKey.PSPath -Name "RSSV2" -Value "1" -Force
                Write-Host "Erfolgreich RSSV2 auf 1 gesetzt."

                Set-ItemProperty -Path $NoverseSubKey.PSPath -Name "FlowControl" -Value "0" -Force
                Write-Host "Erfolgreich FlowControl auf 0 gesetzt."

                Set-ItemProperty -Path $NoverseSubKey.PSPath -Name "*InterruptModeration" -Value "0" -Force
                Write-Host "Erfolgreich *InterruptModeration auf 0 gesetzt."

                Set-ItemProperty -Path $NoverseSubKey.PSPath -Name "EnableTss" -Value "1" -Force
                Write-Host "Erfolgreich EnableTss auf 1 gesetzt."

                # Weitere Einstellungen wie gewÃ¼nscht...

                $NoverseAdapter = $NoverseSubKey.PSChildName
                $NoverseRegistryPath = "HKLM:\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\$NoverseAdapter\Ndi\Params\*NumRssQueues\Enum"
                
                if (-not (Test-Path -Path $NoverseRegistryPath)) {
                    New-Item -Path $NoverseRegistryPath -Force
                    Write-Host "Neuer Registrierungspfad erstellt: $NoverseRegistryPath"
                }

                $NoverseMaxProcPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Class\$EthernetDeviceClassGuidWithKey"
                Set-ItemProperty -Path $NoverseMaxProcPath -Name "*RssMaxProcNumber" -Value "$LogicalProcessorsQty" -Force
                Write-Host "Erfolgreich *RssMaxProcNumber auf $LogicalProcessorsQty gesetzt."

                Set-ItemProperty -Path $NoverseMaxProcPath -Name "*RssBaseProcNumber" -Value "$RSSBaseNumber" -Force
                Write-Host "Erfolgreich *RssBaseProcNumber auf $RSSBaseNumber gesetzt."

                Set-ItemProperty -Path $NoverseMaxProcPath -Name "*MaxRssProcessors" -Value "$CoresQty" -Force
                Write-Host "Erfolgreich *MaxRssProcessors auf $CoresQty gesetzt."

                Set-ItemProperty -Path $NoverseMaxProcPath -Name "*NumaNodeId" -Value "0" -Force
                Write-Host "Erfolgreich *NumaNodeId auf 0 gesetzt."
            }
            catch {
                Write-Host "Ein Fehler ist aufgetreten: $_"
            }

            break
        }
    }
}

Write-Host "Alle Konfigurationen wurden erfolgreich angewendet."
Read-Host -Prompt "Drücken Sie die Eingabetaste, um das Skript zu beenden..."
