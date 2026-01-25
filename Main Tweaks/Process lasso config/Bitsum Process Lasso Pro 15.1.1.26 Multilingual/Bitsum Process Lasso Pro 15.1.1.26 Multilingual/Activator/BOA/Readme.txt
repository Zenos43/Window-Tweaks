================================================================================
                          Bitsum Optimizers Activator
================================================================================

1. RELEASE INFO
2. TARGET INFO
3. TARGET DESCRIPTION
4. HOW TO USE
5. ABOUT ANTIVIRUS AND COMPRESSED BINARIES
6. DISCLAIMER
7. FEEDBACK & CONTACT


================================================================================
1. RELEASE INFO
================================================================================

> Date......: 2017-04-20
> Version...: 1.0
> File......: Activator.exe
> MD5.......: 063e6d3b5c4c8a35d0a12bd6d25176f9
> SHA-1.....: 203df188a8922cb75ad6bbb5232c40b9dceb8bff


================================================================================
2. TARGET INFO
================================================================================

> Category..: System Tweak
> Protection: Custom
> OS........: WinALL
> Homepage..: https://bitsum.com


================================================================================
3. TARGET DESCRIPTION
================================================================================

                               [ CPUBalance Pro ]

CPUBalance contains ProBalance, Bitsum’s proven and real-world demonstrable
technology to retain system responsiveness during high loads, or even save you
from a hard reset during a worst-case scenario.

                              [ ParkControl Pro ]

ParkControl is a lightweight and portable application designed to help users
disable CPU parking without rebooting the system. Although it is very simple to
work with, the tool mainly caters to advanced computer users.

                      [ Process Lasso Pro/Server Edition ]

Process Lasso improves system performance, responsiveness, and stability during
high loads through dynamic adjustments to process priority classes. It can also
automatically terminate undesired processes, apply default priorities and CPU
affinities to processes, limit the number of instances a process can have, and
log all processes. It is not a task manager replacement, but does have task
manager like capabilities to compliment its primary functions. Process Lasso
runs on all editions of Windows 2000, XP, 2003, 2008, Vista, Windows 7 and
Windows 8 and Windows 10.


================================================================================
4. HOW TO USE
================================================================================

---------------------
NORMAL MODE (default)
---------------------

1. Close the target program (if you installed Process Lasso, don't forget to
   stop core engine before exit). Also, check for any application icon in the
   notification area.

2. Start this tool, select the target product from the list and enter any
   licensee name you want to use.
   
3. Choose an activation method:

   - PERMANENT ACTIVATION: click on "Activate".
   
   - KEY FILE: click on "Make Key File" and select the output folder where the
     key file will be created, normally this folder should be the installation
     folder of the program.

4. OPTIONAL: use "Patch Hosts File" to block any activation check using the
   hosts file (or you can block Internet access to the program with a firewall).


----------------------------------------
SILENT MODE (using command line options)
----------------------------------------

NOTE: only one activation method can be specified at a time.


OPTIONS:

-activate                   Performs a permanent activation.

-licenseename:"name"        Specifies the licensee name. If the name includes
                            white spaces, enclose it in double quotes ("").
                            If this option is not present or name is empty, the
                            current user's name will be used.

-makekeyfile                Creates a key file.

-output:"path"              Specifies the output folder (full path) where the
                            key file must be created. If the path includes
                            white spaces, enclose it in double quotes ("").
                            If this option is not present or path is empty, the
                            current folder (where the tool is located) will be
                            used.

-patchhostsfile[:0/1]       Patch the hosts file to block any activation check.
                            [:0/1] is optional, if its present and is 1, the
                            activation will be aborted when the hosts file
                            cannot be patched. By default, this option is off.
                            
-product:<index>            Specifies the target product, <index> must be a
                            value between 0 and 2, where:
                            
                            0 is for CPUBalance Pro.
                            1 is for ParkControl Pro.
                            2 is for Process Lasso Pro/Server Edition.
                            
-savename                   Writes licensee name to registry when creates a
                            key file. By default, this option is off.

-verifyactivation           Verifies for an existing (permanent) activation
                            before continue. If the target product is already
                            activated in the current PC, the process will be
                            aborted. By default, this option is off.


EXAMPLES:

- Permanent activation of ParkControl Pro, using licensee name "Test User",
  patch hosts file and abort if it fails:

  activator -activate -product:1 -licenseename:"Test User" -patchhostsfile:1

  
- Permanent activation of CPUBalance Pro, using current user's name as licensee
  name, patch hosts file and ignore if it fails, verify for an existing
  activation before continue:
  
  activator -activate -product:0 -patchhostsfile:0 -verifyactivation


- Create a key file for Process Lasso Pro, using licensee name "Test User",
  output folder is "C:\Temp":

  activator -makekeyfile -product:2 -licenseename:"Test User" -output:"C:\Temp"

  
- Create a key file for Process Lasso Pro, using current user's name as licensee
  name, output folder is the currnt folder, save licensee name in registry and
  verify for an existing activation before continue:
  
  activator -makekeyfile -product:2 -savename -verifyactivation


ERROR CODES RETURNED IN SILENT MODE:

0 - Success.
1 - Product index value is not valid.
2 - Licensee name is not valid (empty).
3 - Cannot patch hosts file.
4 - Product is already activated.
5 - Activation failed.
6 - Output folder doesn't exists.
7 - Cannot create key file.


================================================================================
5. ABOUT ANTIVIRUS AND COMPRESSED BINARIES
================================================================================

This release's binary is packed with an executable/dll compression tool to
reduce his size (for an easy and quick upload/download).

Unfortunatly, some of these compression programs have a bad reputation in the
security software industry, mainly because almost 99% of troyans/worms/etc.
is packed with similar tools (or variants of these), and this self-unpack
behavior is taken by some antivirus apps as an alarm signal.

Basically, this means that any trusted program packed with one of these tools
can be erroneously detected as a virus, something know as a "FAKE POSITIVE".

********************************************************************************
IMPORTANT: If you got this release from me, from the site indicated at the end
of this document or from any file server explicitly expressed by me; ignore any
warning from your antivirus software (most certainly it's a fake positive).

IF YOU GOT THIS FROM ELSEWHERE, THERE IS NO WARRANTY THAT YOUR COPY WILL BE FREE
OF ANY THREAT; IN THAT CASE, I WILL NOT BE RESPONSIBLE FOR ANY DAMAGED CAUSED
TO YOUR COMPUTER. YOU HAVE BEEN WARNED.
********************************************************************************

However, you can always do a simple integrity check: get the MD5 or SHA1 hash
value for this release's binary and compare it against the value written at the
top of this document. Any difference between the hash values means that the
executable file was somehow modified/tampered. It's very simple.

There are plenty of free tools around the net that you can use to verify file
hashes, like HashTab (http://implbits.com) or HashMyFiles
(http://www.nirsoft.net). This test isn't a foolproof concept, but can help.


================================================================================
6. DISCLAIMER
================================================================================

This program is provided "AS IS" without any warranty, either expressed or
implied, including, but not limited to, the implied warranties of
merchantability and fitness for a particular purpose. I take no responsibility
for any damage that may unintentionally be caused through its use.

You can use this program for evaluation purposes ONLY. You are not allowed to
get a monetary profit of any kind through its use.


================================================================================
7. FEEDBACK & CONTACT
================================================================================

For updates, latest releases or to contact me, use the links below. Any thought
or question (not requests) is always welcome.

> Find me at: http://www.nsaneforums.com
> My profile: http://www.nsaneforums.com/user/82845-radixx11

  
================================================================================
                               (c) 2017, RadiXX11
================================================================================