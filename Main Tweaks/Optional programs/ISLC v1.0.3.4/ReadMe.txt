Intelligent standby list cleaner (ISLC) is a lightweight application designed to help you monitor and clear the memory standby list.

ISLC command lines:
-minimized                                 --> Start ISLC minimized and auto-start monitoring
-polling "your value without quote"        --> Set the Memory polling Rate(ms) for ISLC
-listsize "your value without quote"       --> Purge Standbylist when list size is at this value
-freememory "your value without quote"     --> Purge Standbylist when freememory is at this value
-runonce                                   --> Only poll once and then exit.
-purge                                     --> Will simply purge the standbylist and exit. (will work even if ISLC is already running)

"-listsize" and "-freememory" work in pair. if both are not specified, it will take the default value in the config file.
"-polling" is ignored when "-runonce" is specified.


Example:   -minimized -polling 500 -listsize 1024 -freememory 1024

Note: If ISLC detect that the Performance Counters are disabled in the Registry, it will automatically re-Enable them.

Usual fixes for ISLC when there are errors:

1. Run CMD with Admin Privilege.
2. Type: LODCTR /R
(You may have to do this twice. Hopefully, you will get a message saying "Info: Successfully rebuilt performance counter setting from system backup store")
3. Reboot your PC.

If this does not work, we will check if you have disabled performance counter and re-enable it.

1. Run CMD with Admin Privilege.
2. Type: lodctr /q | find "Disabled"
3. Type: lodctr /e:PerfOS
4. Reboot your PC
