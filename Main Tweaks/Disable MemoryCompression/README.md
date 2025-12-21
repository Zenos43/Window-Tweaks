Memory compression in Windows reduces the size of data before writing it to RAM. This process allows your computer to store more files in physical memory than it normally would in paper this is good but the process of uncompression the data in ram will result in worse performance and latency to disable it open powershell as admin copy paste this command 



Disable-MMAgent -MemoryCompression

