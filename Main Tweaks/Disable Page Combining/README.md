Page combining causes the memory manager to periodically combine pages in physical memory that have identical content. The tradeoff for page combining comes in the form of increased CPU usage and this may have a negative effect on the scalability and or performance.



Disable Page Combining



PowerShell:

Disable-MMAgent -PageCombining



OR



Registry:

\[HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Memory Management]

"DisablePageCombining"=dword:00000001

