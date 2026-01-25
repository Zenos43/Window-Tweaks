@echo off
color 0f
cls
REM Blank/Color Character
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
REM Install DevManView (IF NOT FOUND)
IF Not Exist "%Temp%\DevManView\DevManView.exe" (
Curl -g -L -# -o %Temp%\devmanview-x64.zip https://www.nirsoft.net/utils/devmanview-x64.zip
Powershell -NoProfile Expand-Archive '%Temp%\devmanview-x64.zip' -DestinationPath '%Temp%\DevManView'
)

REM Set Local
Cd "%temp%\devmanview"
echo.
echo. ==== %COL%[36mSystem Devices%COL%[97m ====
echo.
DevManView.exe /Enable "Programmable Interrupt Controller"
echo  %COL%[92mEnable%COL%[97m ^| Programmable Interrupt Controller
DevManView.exe /Enable "PCI Encryption/Decryption Controller"
echo  %COL%[92mEnable%COL%[97m ^| PCI Encryption/Decryption Controller
DevManView.exe /Enable "AMD PSP"
echo  %COL%[92mEnable%COL%[97m ^| AMD PSP
DevManView.exe /Enable "Intel SMBus"
echo  %COL%[92mEnable%COL%[97m ^| Intel SMBus
DevManView.exe /Enable "System Timer"
echo  %COL%[92mEnable%COL%[97m ^| System Timer
DevManView.exe /Enable "Motherboard Resources"
echo  %COL%[92mEnable%COL%[97m ^| Motherboard Resources
DevManView.exe /Enable "High Precision Event Timer"
echo  %COL%[92mEnable%COL%[97m ^| High Precision Event Timer
DevManView.exe /Enable "Intel Management Engine"
echo  %COL%[92mEnable%COL%[97m ^| Intel Management Engine
DevManView.exe /Enable "PCI Standard RAM Controller"
echo  %COL%[92mEnable%COL%[97m ^| PCI Standard RAM Controller
DevManView.exe /Enable "Numeric Data Processor"
echo  %COL%[92mEnable%COL%[97m ^| Numeric Data Processor
DevManView.exe /Enable "Interrupt Controller"
echo  %COL%[92mEnable%COL%[97m ^| Interrupt Controller
DevManView.exe /Enable "Direct Memory Access Controller"
echo  %COL%[92mEnable%COL%[97m ^| Direct Memory Access Controller
DevManView.exe /Enable "Base System Device"
echo  %COL%[92mEnable%COL%[97m ^| Base System Device
DevManView.exe /Enable "PCI Data Acquisition and Signal Processing Controller"
echo  %COL%[92mEnable%COL%[97m ^| PCI Data Acquisition and Signal Processing Controller
DevManView.exe /Enable "PCI Memory Controller"
echo  %COL%[92mEnable%COL%[97m ^| PCI Memory Controller
DevManView.exe /Enable "PCI Simple Communications Controller"
echo  %COL%[92mEnable%COL%[97m ^| PCI Simple Communications Controller
DevManView.exe /Enable "SM Bus Controller"
echo  %COL%[92mEnable%COL%[97m ^| SM Bus Controller
DevManView.exe /Enable "Composite Bus Enumerator"
echo  %COL%[92mEnable%COL%[97m ^| Composite Bus Enumerator
DevManView.exe /Enable "UMBus Root Bus Enumerator"
echo  %COL%[92mEnable%COL%[97m ^| UMBus Root Bus Enumerator
DevManView.exe /Enable "PCI Standard ISA Bridge"
echo  %COL%[92mEnable%COL%[97m ^| PCI Standard ISA Bridge
echo.
echo. ==== Network ^& VPN Devices ====
echo.
DevManView.exe /Enable "NDIS Virtual Network Adapter Enumerator"
echo  %COL%[92mEnable%COL%[97m ^| NDIS Virtual Network Adapter Enumerator
DevManView.exe /Enable "Microsoft Kernel Debug Network Adapter"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft Kernel Debug Network Adapter
DevManView.exe /Enable "Microsoft RRAS Root Enumerator"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft RRAS Root Enumerator
echo.
echo ==== Device Management ====
echo.
DevManView.exe /Enable "Microsoft System Management BIOS Driver"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft System Management BIOS Driver
DevManView.exe /Enable "PCI Device"
echo  %COL%[92mEnable%COL%[97m ^| PCI Device
DevManView.exe /Enable "Microsoft IPv4 IPv6 Transition Adapter Bus"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft IPv4 IPv6 Transition Adapter Bus
DevManView.exe /Enable "PCI-To-PCI Bridge"
echo  %COL%[92mEnable%COL%[97m ^| PCI-To-PCI Bridge
DevManView.exe /Enable "Remote Desktop Device Redirector Bus"
echo  %COL%[92mEnable%COL%[97m ^| Remote Desktop Device Redirector Bus
DevManView.exe /Enable "Generic PnP Monitor"
echo  %COL%[92mEnable%COL%[97m ^| Generic PnP Monitor
DevManView.exe /Enable "Generic Bluetooth Adapter"
echo  %COL%[92mEnable%COL%[97m ^| Generic Bluetooth Adapter
DevManView.exe /Enable "Microsoft Hyper-V Virtualization Infrastructure Driver"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft Hyper-V Virtualization Infrastructure Driver
echo.
echo  ==== Other ^& Unknown Devices ====
echo.
DevManView.exe /Enable "Microsoft Device Association Root Enumerator"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft Device Association Root Enumerator
DevManView.exe /Enable "Microsoft Radio Device Enumeration Bus"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft Radio Device Enumeration Bus
DevManView.exe /Enable "Microsoft GS Wavetable Synth"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft GS Wavetable Synth
DevManView.exe /Enable "SAS Controller"
echo  %COL%[92mEnable%COL%[97m ^| SAS Controller
DevManView.exe /Enable "PCI Serial Port"
echo  %COL%[92mEnable%COL%[97m ^| PCI Serial Port
DevManView.exe /Enable "Video Controller"
echo  %COL%[92mEnable%COL%[97m ^| Video Controller
DevManView.exe /Enable "Unknown Device"
echo  %COL%[92mEnable%COL%[97m ^| Unknown Device
echo.
echo. ==== Security Devices ====
echo.
DevManView.exe /Enable "Trusted Platform Module 1.2"
echo  %COL%[92mEnable%COL%[97m ^| Trusted Platform Module 1.2
echo.
echo. ==== Print Drivers ====
echo.
DevManView.exe /Enable "Fax"
echo  %COL%[92mEnable%COL%[97m ^| Fax
DevManView.exe /Enable "Microsoft Print To PDF"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft Print To PDF
DevManView.exe /Enable "Microsoft XPS Document Writer"
echo  %COL%[92mEnable%COL%[97m ^| Microsoft XPS Document Writer
DevManView.exe /Enable "Root Print Queue"
echo  %COL%[92mEnable%COL%[97m ^| Root Print Queue
echo.
echo ==== USB Controllers ====
echo.
DevManView.exe /Enable "Intel(R) C600/X79 Series Chipset USB2 Enhanced Host Controller #1 - 1D26"
echo  %COL%[92mEnable%COL%[97m ^| Intel(R) C600/X79 Series Chipset USB2 Enhanced Host Controller #1 - 1D26
DevManView.exe /Enable "Intel(R) C600/X79 Series Chipset USB2 Enhanced Host Controller #2 - 1D2D"
echo  %COL%[92mEnable%COL%[97m ^| Intel(R) C600/X79 Series Chipset USB2 Enhanced Host Controller #2 - 1D2D
DevManView.exe /Enable "NVIDIA USB 3.10 eXtensible Host Controller - 1.10 (Microsoft)"
echo  %COL%[92mEnable%COL%[97m ^| NVIDIA USB 3.10 eXtensible Host Controller - 1.10 (Microsoft)
Pause