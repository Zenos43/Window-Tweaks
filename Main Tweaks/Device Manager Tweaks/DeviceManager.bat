@echo off
:: Batch script to disable specific devices in Windows using DevManView
:: Run this script as Administrator

setlocal

:: Path to DevManView (update this path if necessary)
set devmanPath="C:\DevManView.exe"

:: Check if DevManView exists
if not exist %devmanPath% (
    echo DevManView not found. Please download it from NirSoft and place it in C:\.
    echo Download link: https://www.nirsoft.net/utils/device_manager_view.html
    pause
    exit /b
)

:: Disable devices
echo Disabling devices...
%devmanPath% /disable "Microsoft ISATAP Adapter"
%devmanPath% /disable "Microsoft iSCSI Initiator"
%devmanPath% /disable "Microsoft RRAS Root Enumerator"
%devmanPath% /disable "Microsoft GS Wavetable Synth"
%devmanPath% /disable "Microsoft Device Association Root Enumerator"
%devmanPath% /disable "Microsoft Virtual Drive Enumerator"
%devmanPath% /disable "Microsoft Radio Device Enumeration Bus"
%devmanPath% /disable "Composite Bus Enumerator"
%devmanPath% /disable "NDIS Virtual Network Adapter Enumerator"
%devmanPath% /disable "Remote Desktop Device Redirector Bus"
%devmanPath% /disable "SMBus"
%devmanPath% /disable "System speaker"
%devmanPath% /disable "System timer"
%devmanPath% /disable "Terminal Server Mouse/Keyboard drivers"
%devmanPath% /disable "UMBus"
%devmanPath% /disable "High precision event timer"
%devmanPath% /disable "PCI Encryption/Decryption Controller"
%devmanPath% /disable "PCI Memory Controller"
%devmanPath% /disable "PCI standard RAM Controller"
%devmanPath% /disable "WAN Miniport (IKEv2)"
%devmanPath% /disable "WAN Miniport (IP)"
%devmanPath% /disable "WAN Miniport (IPv6)"
%devmanPath% /disable "WAN Miniport (L2TP)"
%devmanPath% /disable "WAN Miniport (Network Monitor)"
%devmanPath% /disable "WAN Miniport (PPPOE)"
%devmanPath% /disable "WAN Miniport (PPTP)"
%devmanPath% /disable "WAN Miniport (SSTP)"
%devmanPath% /disable "Programmable Interrupt Controller"
%devmanPath% /disable "Numeric Data Processor"
%devmanPath% /disable "Communications Port (COM1)"
%devmanPath% /disable "AMD PSP"
%devmanPath% /disable "AMD Crash Defender"
%devmanPath% /disable "AMD High Definition Audio Device"
%devmanPath% /disable "AMD Streaming Audio Device"

echo Devices have been disabled.
pause