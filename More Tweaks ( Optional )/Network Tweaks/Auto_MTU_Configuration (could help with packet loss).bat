@Echo Off
For /F "Tokens=4*" %%A In ('Netsh Interface Show Interface ^| Findstr /I "Connected"') Do Netsh Interface IP Set Subinterface "%%A" Mtu=1500 Store=Persistent >Nul 2>&1
Set /A Mtu = 1501
:Mtu
Set /A Mtu -= 1
Ping 1.1.1.1 -f -n 1 -4 -l %Mtu% | FindStr /I "Fragmented" >Nul 2>&1 && Goto :Mtu
Ping 1.1.1.1 -f -n 2 -4 -l %Mtu% | FindStr /I "Fragmented" >Nul 2>&1 && Goto :Mtu
If %Mtu% Geq 1472 Set /A Mtu = 1500
For /f "Tokens=4*" %%A In ('Netsh Interface Show Interface ^| Findstr /I "Connected"') Do Netsh Interface IP Set Subinterface "%%A" Mtu=%Mtu% Store=Persistent >Nul 2>&1
Echo Set Mtu To %Mtu%
Pause