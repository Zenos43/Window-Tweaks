Clear-Host
Write-Host "----- Optimale MTU Berechnung (verlustfrei) -----`n"

function Find-BestMTU {
    $ping = New-Object System.Net.NetworkInformation.Ping
    $target = "8.8.8.8"
    $mtu = 1500

    while ($mtu -ge 1300) {
        $size = $mtu - 28
        $buffer = New-Object Byte[] ($size)
        $options = New-Object System.Net.NetworkInformation.PingOptions
        $options.DontFragment = $true

        try {
            $reply = $ping.Send($target, 1000, $buffer, $options)
            if ($reply.Status -eq 'Success') {
                return $mtu
            }
        } catch {}
        $mtu--
    }

    return 1500  # Fallback
}

# Schritt 1: Beste MTU finden
$foundMTU = Find-BestMTU
Write-Host "Gefundene MTU (verlustfrei): $foundMTU`n"

# Schritt 2: Logische MTU-Werte (max. = gefundene MTU)
$logical = @(1500,1492,1472,1460,1452,1440,1430,1420,1400,1380,1360,1340,1320,1300)
$mtuOptions = $logical | Where-Object { $_ -le $foundMTU }

# Einfügen des gefundenen Wertes falls er nicht in der Liste ist
if (-not ($mtuOptions -contains $foundMTU)) {
    $mtuOptions = @($foundMTU) + $mtuOptions
}

# Schritt 3: Anzeige
for ($i = 0; $i -lt $mtuOptions.Count; $i++) {
    $mss = $mtuOptions[$i] - 40
    Write-Host "[$($i+1)] MTU: $($mtuOptions[$i]) (MSS: $mss)"
}

# Schritt 4: Auswahl
$choice = 0
while ($choice -lt 1 -or $choice -gt $mtuOptions.Count) {
    $input = Read-Host "`nBitte wählen Sie eine Option (1-$($mtuOptions.Count))"
    if ($input -match '^\d+$') {
        $choice = [int]$input
    }
}

$selectedMTU = $mtuOptions[$choice - 1]
$selectedMSS = $selectedMTU - 40

Write-Host "`nAusgewählt: MTU $selectedMTU → MSS $selectedMSS`n"

# Schritt 5: Aktive Schnittstellen abrufen
$interfaces = Get-NetIPInterface | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.ConnectionState -eq "Connected" }

if ($interfaces.Count -eq 0) {
    Write-Host "❌ Keine aktive IPv4-Schnittstelle gefunden."
    exit
}

if ($interfaces.Count -eq 1) {
    $interface = $interfaces[0]
} else {
    Write-Host "Verfügbare aktive Schnittstellen:"
    for ($i = 0; $i -lt $interfaces.Count; $i++) {
        Write-Host "[$($i+1)] $($interfaces[$i].InterfaceAlias)"
    }

    $intChoice = 0
    while ($intChoice -lt 1 -or $intChoice -gt $interfaces.Count) {
        $input = Read-Host "`nSchnittstelle wählen (1-$($interfaces.Count))"
        if ($input -match '^\d+$') {
            $intChoice = [int]$input
        }
    }
    $interface = $interfaces[$intChoice - 1]
}

# Schritt 6: MTU setzen (netsh)
$alias = $interface.InterfaceAlias
Write-Host "`n⚙️  Setze MTU $selectedMTU auf Schnittstelle '$alias'..."
netsh interface ipv4 set subinterface "$alias" mtu=$selectedMTU store=persistent

# Schritt 7: Registry-GUID zur Schnittstelle ermitteln und MSS setzen
$alias = $interface.InterfaceAlias
$guidList = Get-ChildItem "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces"

$found = $false
foreach ($key in $guidList) {
    $props = Get-ItemProperty -Path $key.PSPath
    if ($props.NameServer -or $props.DhcpIPAddress -or $props.IPAddress) {
        # grobe Heuristik: aktive Interfaces haben oft IP oder DNS konfiguriert
        Set-ItemProperty -Path $key.PSPath -Name "MSS" -Value $selectedMSS
        Write-Host "✅ Registry-MSS gesetzt: $selectedMSS (`MSS` in $($key.PSChildName))"
        $found = $true
        break
    }
}

if (-not $found) {
    Write-Host "❌ Registry-Pfad für MSS konnte nicht zugeordnet werden."
}
