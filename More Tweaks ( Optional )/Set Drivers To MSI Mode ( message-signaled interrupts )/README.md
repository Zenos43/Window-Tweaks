we have 2 ways for the interrupts of drivers we have legacy pin-triggered that became old and we have the new way message-signaled interrupts msi which is faster than legacy pin-triggered by a lot but be careful enabling msi mode for drivers that does not support will make your windows unbootable most common storage drives 

if that happened last hope F8 safe mode and go revert the change to change your drivers to msi mode download MSI Mode Tool ( https://drive.google.com/drive/u/0/folders/1qwWCiYb36JMkB4hN4ipGNupHHbkDbbv3 ) run it on admin Enable it to your gpu internet like realtek and audio controllers and all pcie ports and usb controllers change the gpu driver interrupt to high



( This include in "Device \& MMCSS Optimize" folder if u already run that before )



