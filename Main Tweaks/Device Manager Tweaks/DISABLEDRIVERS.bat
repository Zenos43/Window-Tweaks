@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: Variables for file paths
SET "DRIVERS_DIR=%SystemRoot%\System32\drivers"
SET "ACPI_DRIVER1=Acpidev.sys"
SET "ACPI_DRIVER2=Acpipagr.sys"
SET "ACPI_DRIVER3=Acpitime.sys"
SET "ACPI_DRIVER4=Acpipmi.sys"
SET "MSPQM_DRIVER=mspqm.sys"
SET "MSPCLOCK_DRIVER=mspclock.sys"

:: Take ownership and rename specified drivers
FOR %%d IN (%ACPI_DRIVER1%, %ACPI_DRIVER2%, %ACPI_DRIVER3%, %ACPI_DRIVER4%, %WOF_DRIVER%, %MSPQM_DRIVER%, %MSPCLOCK_DRIVER%) DO (
    ECHO Taking ownership of %%d
    takeown /f "%DRIVERS_DIR%\%%d"
    icacls "%DRIVERS_DIR%\%%d" /grant "%username%":F

    ECHO Renaming %%d to %%~ndBACKUP%%~xd
    REN "%DRIVERS_DIR%\%%d" "%%~ndBACKUP%%~xd"
)

ECHO Selected drivers have been renamed. Please reboot your system to apply changes.
PAUSE