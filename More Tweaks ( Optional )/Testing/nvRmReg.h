/*
 * nvRmReg.h
 *
 * Registry keys and functions for the NVIDIA Resman driver
 * This file is intended to hold PRIVATE, UNPUBLISHED registry keys
 * Public, published registry keys should instead be added to nvrm_registry.h
 *
 * Copyright 1997-2022, NVIDIA Corporation.  All rights reserved.
 *
 * THE INFORMATION CONTAINED HEREIN IS PROPRIETARY AND CONFIDENTIAL TO
 * NVIDIA, CORPORATION.  USE, REPRODUCTION OR DISCLOSURE TO ANY THIRD PARTY
 * IS SUBJECT TO WRITTEN PRE-APPROVAL BY NVIDIA, CORPORATION.
 */

#ifndef NV_RM_REG_H
#define NV_RM_REG_H

#include "nvtypes.h"

#include "nvrm_registry.h"

// This key is used by the RM in non-ACPI(Win9x) operation, and the display driver in ACPI (Win2K, XP).
#define NV_HOTKEY_PRIM_DEV_SCHEME       "HotkeyPrimaryDevScheme"
#define NV_HOTKEY_PRIM_DEV_SCHEME_PRESERVE  0   //Maintain the primary device present before the switch, if possible (default)
#define NV_HOTKEY_PRIM_DEV_SCHEME_FIXED     1   //Use a fixed preference order (used by Toshiba)
#define NV_HOTKEY_PRIM_DEV_SCHEME_HISTORY   2   //Keep a history of the user's last choice for this device combination (not implemented)

// Used to enable and disable Twin Peak support. Default is disabled.
#define NV_REG_RM_TWIN_PEAKS_SUPPORT             "RMTwinPeaksSupport"
#define NV_REG_RM_TWIN_PEAKS_SUPPORT_DISABLE     0
#define NV_REG_RM_TWIN_PEAKS_SUPPORT_ENABLE      1

// Registry string globals.

#define NV_REG_STR_MMU_MEMORY_MAP                       "RMMmuMemoryMap"
// Type Dword
// Encoding
//      0 Use GPU specific default
//      1 Classic grows up from 0 addressing used on tesla and fermi
//      2 Kepler memory map special handling of the space < 4GB
#define NV_REG_STR_MMU_MEMORY_MAP_DEFAULT               0
#define NV_REG_STR_MMU_MEMORY_MAP_TESLA                 1
#define NV_REG_STR_MMU_MEMORY_MAP_KEPLER                2

#define NV_REG_STR_RESERVE_PTE_SYSMEM_MB                "RmReservePteSysmemMB"
// Type DWORD:
// Encoding -- Value = 0 -> Do not reserve sysmem for PTEs (default)
//             Value > 0 -> Reserve ValueMB for PTEs when we run out of video and system memory
//

#define NV_REG_STR_COMPBIT_BACKING_SIZE                 "RMCompbitBackingSize"
#define NV_REG_STR_COMPBIT_BACKING_SIZE_DISABLE         0
#define NV_REG_STR_COMPBIT_BACKING_SIZE_MASK            0x0FFFFFFF
// Type DWORD
// Encoding -- Numeric value
//
// Numeric value to set the compression backing store size in bytes.
// Maximum allowed size is 256 MB, as indicated by the mask value.
// RM will round(or clip) this to a size acceptable to the chip.
//
// If unset, RM will determine the backing store size.
//
// If set to zero then compression will be disabled.
// This will also replace the legacy "RMDisableCompression" regkey.
//

#define NV_REG_STR_RM_COMPTAGLINE_MULTIPLIER            "RMCompTagLineMultiplier"
// Type DWORD
// Encoding -- Numeric value
// Numeric value to set the comptagline multiplier (multiplication factor),
// so that comptaglines increment by the multiplier value.  (Normally,
// comptaglines increment by 1.)  0 is invalid.  This option takes effect
// in NV_VERIF_FEATURES builds only.

#define NV_REG_STR_RM_FORCE_MAX_COMPTAGLINE            "RMForceMaxComptagline"
// Type DWORD
// Numeric value to force allocation of Max comptagline field in PTE. To force,
// RM allocates maximum possible comptaglines possible for a chip, even though it's
// not needed. This option takes effect in NV_VERIF_FEATURES builds only. Pascal+ only.
// value is enforced.
// Encoding -- 0 -- Disable testing max comptagline field
//          -- 1 -- Enable testing max comptagline field

#define NV_REG_STR_RM_USE_1TO1_COMPTAGLINE_ALLOCATION   "RMUse1to1ComptaglineAllocation"
// Type DWORD
// Numeric value to force allocation of Max comptagline field in PTE. To force,
// RM allocates maximum possible comptaglines possible for a chip, even though it's
// not needed. This option takes effect in NV_VERIF_FEATURES builds only. Pascal+ only.
// value is enforced.
// Encoding -- 0 -- Disable testing max comptagline field
//          -- 1 -- Enable testing max comptagline field

#define NV_REG_STR_RM_USE_1TO4_COMPTAGLINE_ALLOCATION   "RMUse1to4ComptaglineAllocation"
// Type DWORD
// Numeric value to enable 1:4 allocation of comptaglines to Compressible page size.
// Ampere+ only.
// value is enforced.
// Encoding -- 0x1 - Enabled testing of 1:4 allocation policy
//          -- 0x1 - Disable testing of 1:4 allocation policy

#define NV_REG_STR_RM_DISABLE_1TO4_COMPTAGLINE_ALLOCATION   "RMDisable1to4ComptaglineAllocation"
// Type DWORD
// Numeric value to disable 1:4 allocation of comptaglines to Compressible page size.
// Ampere+ only.
// value is enforced.
// Encoding -- 0x0(default) - Enabled 1:4 allocation policy
//          -- 0x1 - Disable testing of 1:4 allocation policy

#define NV_REG_STR_RM_ENABLE_FLA            "RMEnableFla"
// Type DWORD
// Numeric value to enable FLA for the RM.This option takes effect in
// NV_VERIF_FEATURES builds only. Ampere+ only.
// value is enforced.
// Encoding -- 0 -- Disable Fla
//          -- 1 -- Enable Fla

//
// Controls whether RM allows or disallows compr tags that straddle multiple cache lines
//
#define NV_REG_STR_STRADDLING_CTAG_SUPPORT             "RMStraddlingCtagSupport"
#define NV_REG_STR_STRADDLING_CTAG_SUPPORT_ENABLE      1
#define NV_REG_STR_STRADDLING_CTAG_SUPPORT_DISABLE     0

#define NV_REG_STR_FERMI_BIG_PAGE_SIZE                  "RMFermiBigPageSize"
#define NV_REG_STR_FERMI_BIG_PAGE_SIZE_64KB             (64 * 1024)
#define NV_REG_STR_FERMI_BIG_PAGE_SIZE_128KB            (128 * 1024)

// Type DWORD
// Contains the sysmem page size.
#define NV_REG_STR_RM_SYSMEM_PAGE_SIZE                  "RMSysmemPageSize"

// Type DWORD
// Encoding -- Numeric value
// Override the default large page size on fermi chips.  Normally this is determined
// by the configuration of the chip

#define NV_REG_STR_FERMI_CB_SIZE                      "RMFermiCBSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 32 byte chunks

#define NV_REG_STR_GFXP_CB_SIZE                       "RMGfxpCBSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 32 byte chunks

#define NV_REG_STR_FERMI_ALPHA_CB_SIZE                "RMFermiAlphaCBSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 32 byte chunks

#define NV_REG_STR_SETUP_BETA_AS_TPC_PER_PPC_MAX      "RMSetupBetaAsTpcPerPpcMax"
// Type DWORD
// Encoding -- 0 -- Disable
//          -- 1 -- Enable

#define NV_REG_STR_SCALE_BETA_CB_TO_LTS               "RMScaleBetaCBToLTS"
// Type DWORD
// Encoding -- 0 -- Disable
//          -- 1 -- Enable

#define NV_REG_STR_FERMI_BUNDLE_CB_SIZE               "RMFermiBundleCBSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 256 byte chunks

#define NV_REG_STR_FERMI_PAGEPOOL_SIZE                "RMFermiPagepoolSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 256 byte chunks

#define NV_REG_STR_GFXP_SPILL_SIZE                    "RMGfxpSpillSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 256 byte chunks

#define NV_REG_STR_GFXP_CBE_RESERVE_SLOTS             "RMGfxpCbeReserveSlots"
// Type DWORD
// Encoding -- Numeric Value representing # of 256 byte chunks

#define NV_REG_STR_RTV_CB_SIZE                        "RMRtvCBSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 32 byte chunks

#define NV_REG_STR_RTV_CB_GFXP_ADD_SIZE               "RMRtvCBGfxpAddSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 32 byte chunks

#define NV_REG_STR_RTV_CB_DEEPBIN_ADD_SIZE            "RMRtvCBDeepBinAddSize"
// Type DWORD
// Encoding -- Numeric Value representing # of 32 byte chunks

#define NV_REG_STR_CB_ALLOC_VPR                       "RMCBAllocVPR"
// Type DWORD
// Encoding -- 0 -- Disable
//          -- 1 -- Enable

#define NV_REG_STR_CB_ALLOC_PER_CHANNEL               "RMCBAllocPerChannel"
// Type DWORD
// Encoding -- 0 -- Disable
//          -- 1 -- Enable

#define NV_REG_STR_FERMI_MIN_GPM_FIFO_DEPTH           "RMFermiMinGpmFifoDepth"
// Type DWORD
// Encoding -- Actual Numeric Value

#define NV_REG_STR_FERMI_BUNDLE_CB_TOKEN_LIMIT        "RMFermiBundleCBTokenLimit"
// Type DWORD
// Encoding -- Actual Numeric Value

#define NV_REG_STR_FERMI_SCREEN_TILE_ROW_OFFSET       "RMFermiScreenTileRowOffset"
// Type DWORD
// Encoding -- Numeric Value representing the row offset to force when setting up
//             the screen tile mappings (override RM computed value)

#define NV_REG_STR_FERMI_ROP_PREFETCH_DISABLE         "RM625316"
// Type DWORD
// Encoding boolean
// zero (default) -- Keep the prefetch enabled
// nonzero        -- Disable the prefetch from CROP/ZROP to SYS/PEER/VIDMEM.

#define NV_REG_STR_USE_UNCACHED_PCI_MAPPINGS            "UseUncachedPCIMappings"
// Type DWORD
// Encode -- Numeric Value
// Check to see if we are converting PCI mappings

#define NV_REG_STR_LID_BEHAVIOR                         "LidBehavior"
// Type DWORD
// Encoding -- Bit Mask
// Bit 1 If set, lid closed causes us to consider LCD not present
// Bit 2 If set, lid closed with LCD enabled causes spoofed hotkey (standard and clone mode)
// Bit 4 If set, lid closed with LCD enabled causes spoofed hotkey (spanning mode)
// Bit 5 If set, lid closed causes us to turn off displays listed in LidCloseDisplayMask
//

#define NV_REG_STR_MOBILE                                       "Mobile"
// Type DWORD
// Encoding -- Customer Number
// Used to determine if Mobile or Desktop and which Mobile Customer

#define NV_REG_STR_OVERRIDE_SBIOS_DEVS                          "OverrideSBIOSDevs"
#define NV_REG_STR_OVERRIDE_SBIOS_DEVS_NONE                     0
#define NV_REG_STR_OVERRIDE_SBIOS_DEVS_TOSHIBA_STYLE            1
#define NV_REG_STR_OVERRIDE_SBIOS_DEVS_TOSHIBA_OLD_STYLE        2
// Type DwORD
// Encoding -- 0 or NV_REG_STR_OVERRIDE_SBIOS_DEVS_NONE (Default):
//                   Normal windows default boot behavior
//             1 or NV_REG_STR_OVERRIDE_SBIOS_DEVS_TOSHIBA_STYLE:
//                   This means that the windows boot devices at boot time follow the
//                   Toshiba policy as well as some other ideas that have been attached
//                   to this variable at this time.  I will clean this up into functional
//                   pieces later rather than using it for a catch all right now. See bug 79396
//             2 or NV_REG_STR_OVERRIDE_SBIOS_DEVS_TOSHIBA_OLD_STYLE:
//                   This is identical to 1, or NV_REG_STR_OVERRIDE_SBIOS_DEVS_TOSHIBA_STYLE,
//                   with the exception that if on LCD+TV extended when entering S4
//                   or rebooting, then the device selection is LCD+CRT (extended)
//                   when resuming.

#define NV_REG_STR_FORCE_EXT_ON_S3_RESUME                       "ForceExtOnS3Resume"
// Type DWORD
// On Toshiba mobile systems, display will switch to external connected devices if
// display was on LVDS only before entering S3 and more than one devices are connected
// upon resume, regardless of the lid state.
// 0 or the absence of the key means this special feature is turned off
// 1 means this special feature is turned on.


#define NV_REG_STR_TEST_ANALOG_LOAD                              "TestAnalogLoadAlways"
// Type DWORD
// Encoding: !0 or N/A -- Default - When an EDIDs is found when detecting CRT or FP devices,
//                 always run an analog load test to make sure that the device is or isn't
//                 an analog device. This registry key will affect all EDID reads. It
//                 attempts to fix bug 62052, 60478 on a grand scale.  But if set, it will
//                 unfix bug 55014, which will cause flashing on a flat panel when running
//                 analog load detects for a CRT. NOTE: Now the default since we no longer
//                 support prior to NV4x and we've encountered issues with the below option.
//           0 -- When finding an EDID that says it's digital when looking for an analog
//                device, we'll not do any analog load test. NOTE: This is no longer the
//                default! Various monitors/KVMs encounter trouble with this, but it's
//                also necessary for other monitors/KVMs. This is a no-win option.
//

#define NV_REG_STR_OVERRIDE_EDID_FLAGS                          "OverrideEdidFlags\0\0"
// Type BINARY
// Encoding:
// These bytes allow specific, special handling for bad EDIDs.
// That is, if a particular EDID matches the manufacturer ID, the Product ID,
// and the EDID date falls between the Years (inclusive) and between the weeks if the years
// match (inclusive), then we'll override specific ideas stored in the EDID based on the
// Flags bits.  This registry key should only be used as a backup to add support
// for a released driver via the INF. Otherwise, this data should be hardcoded in the RM's
// function, initDacRegistryOverrides().
// Since more than one of these can be defined, I've added \0\0 at the end so
// that we can use strings like "OverrideEdidFlags0", "OverrideEdidFlags1", ....
//
//    Binary Structure:         Description                                  Byte combines
//      NvU16 ManufacturerID; // EDID Manufacturer ID -> offset 0x8 in EDID.  Byte[0] | (Byte[1]<<8)
//      NvU16 ProductID;      // EDID Product ID -> offset 0xA in EDID        Byte[2] | (Byte[3]<<8)
//      NvU16 MinYearWeek;    // Internal min/max yearweek test (inclusive)   Byte[4] | (Byte[5]<<8)
//      NvU16 MaxYearWeek     // Year in EDID found at offset 0x11            Byte[6] | (Byte[7]<<8)
//                            // Week in EDID found at offset 0x10
//      NvU32 Flags;          // Flags that describe override properties      Byte[8] | (Byte[9]<<8) | (Byte[10]<<16) | (Byte[11]<<24)
//      NvU32 OverrideStart;  // First byte of EDID to override with EDIDdata Byte[12]
//      NvU32 OverrideSize;   // Number of bytes to override with EDIDdata    Byte[13]
//      NvU8 EDIDdata[256];   // 1-256 bytes of data to overwrite part of EDIDByte[14] - Byte[14+255]
//                            // (checksum is updated automatically)
//
// Flags definitions:
// #define DAC_EDID_NVFLAG_ANALOG_LOAD_TEST  0x00000001
// If this bit is set, we should always test the analog load, regardless of whether or
// not the EDID reports a digital or analog device to determine if the edid is valid
// (digital vs. analog found in the edid at offset 0x14, bit 7)
// #define DAC_EDID_NVFLAG_ALLOW_CVT_RB_TIMINGS  NVBIT(1)
// If this bit is set anywhere in the EDID override flags, then if we match the EDID
// then we'll allow CVT timings to be used.  If we don't match the EDID we'll disallow
// CVT Timigns to be used.  If the flag is absent, then we allow CVT timings for all
// EDIDs.
// #define DAC_EDID_NVFLAG_OVERWRITE_EDID_BLOCK  NVBIT(2)
// If this bit is set, later data indicates the start and size of a section of the EDID
// to override, and the data to override with.
//
//
// If ManufacturerID is 0, then the code assumes that it's not there.  The RM will read
// OverrideEdidFlags0 first.  If it's not found, it will stop looking for keys. If it
// is found, then it will continue with OverrideEdidFlags1, etc..
//

#define NV_REG_STR_SBIOS_EDID_OVERRIDE_DISABLE           "RmSbiosEdidOverrideDisable"
#define NV_REG_STR_SBIOS_EDID_OVERRIDE_DISABLE_YES       1
#define NV_REG_STR_SBIOS_EDID_OVERRIDE_DISABLE_NO        0
#define NV_REG_STR_SBIOS_EDID_OVERRIDE_DISABLE_DEFAULT   0
//
// Type Dword
// Encoding :
// 1 = Disable the SBIOS _DDC EDID override
// 0 = Enable the SBIOS _DDC EDID override
//

#define NV_REG_STR_VRR_FRAME_SMOOTHING_MAX_FRAME_DELTA_OVERRIDE "RmVrrMaxFrameDeltaOverride"
//
// Type Dword
// Encoding :
// Bit 31:0 = override value for VRR_FRAME_SMOOTHING_MAX_FRAME_DELTA
//

#define NV_REG_STR_RM_BURST_MODE_NLT                    "RMBurstModeNLT"
#define NV_REG_STR_RM_BURST_MODE_NLT_ENABLE             (0x00000001)
#define NV_REG_STR_RM_BURST_MODE_NLT_DISABLE            (0x00000000)
#define NV_REG_STR_RM_BURST_MODE_NLT_DEFAULT            (0x00000001)
//
// Type DWORD
// Encoding boolean.
// Enable Burst Mode No Link Training
// 0 - Disable Burst Mode No Link Training.
// 1 - Enable Burst Mode No Link Training.
//

#define NV_REG_STR_RM_DISPLAY_REMAP_SUPPORT                "RMDisplayRemapSupport"
#define NV_REG_STR_RM_DISPLAY_REMAP_SUPPORT_ENABLE         0
#define NV_REG_STR_RM_DISPLAY_REMAP_SUPPORT_DISABLE        1
#define NV_REG_STR_RM_DISPLAY_REMAP_SUPPORT_ARCH_TEST      2
#define NV_REG_STR_RM_DISPLAY_REMAP_SUPPORT_DEFAULT        0
//
// Type Dword
// Encoding :
// 1 = Disable the display remapper support
// 0 = Enable the display remapper support
// 2 = Select ReMap index for Testing
//

#define NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK                     "DevSwitchSuppressMask"
#define NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_SPAN                NVBIT(0)
#define NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_VIDEO               NVBIT(1)
#define NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_3D_FULLSCREEN       NVBIT(2)
#define NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_DOS_FULLSCREEN      NVBIT(3)
#define NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_BIOS_ONLY           NVBIT(31)
// Type DWORD
// Encoding Bitmask
//
// Many applications do not handle device switches (esp. ones that change the color depth) well.
// So some OEMs set this regkey to inhibit device switches while certain apps (or activities) are
// going on.
//
// Driver Default for this mask is 0 (all OSes)
// Also note: the vbios can override this regkey
//
// Bits indicate which activities would inhibit a device switch
// These controls work on all OSes
//
// NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_SPAN              -- 'span' here is h/v span + dualview (but not clone)
// NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_VIDEO             -- during video playbackDisplay Change inhibits video
// NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_3D_FULLSCREENBit  -- while a full screen 3D app is open (DX or OGL)
// NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_DOS_FULLSCREENBit -- while in full screen DOS box
// NV_REG_STR_DEV_SWITCH_SUPPRESS_MASK_BIOS_ONLY         -- report inhibits to BIOS, not RM clients

#define NV_REG_STR_SBIOS_HANDLES_HOTKEY_INHIBIT                 "SBIOSHandlesHotkeyInhibit"
// Type DWORD
// Encoding Bitmask
// Bit 1 -- SBIOS can be trusted to inhibit hotkeys correctly

#define NV_REG_STR_RM_MAINTAIN_DEVS                             "RMMaintainDevs"
// Type DWORD
// Encoding Numeric Value
// Bits 0 - 3
#define RM_MAINTAIN_DEVS_USE_BIOS                                 0  // Use what SBIOS/BIOS tells us
#define RM_MAINTAIN_DEVS_INTERNAL                                 1  // RM maintains Device Settings
#define RM_MAINTAIN_DEVS_USE_BIOS_BOOT_ONLY                       2  // Only use what SBIOS/BIOS tell us on Power up
#define RM_MAINTAIN_DEVS_USE_SONY_MOBILE_POLICY                   3  // Use the select rules below, on 1st boot only
                                                                     // After 1st boot,select rules follow RM_MAINTAIN_DEVS_INTERNAL
//  Device Combination               Boot display device
//  -----------------------------------------------------
//    No LCD                              CRT
//    LCD+CRT                             LCD+CRT
//    LCD+DFP                             LCD+DFP
//    LCD+TV                              LCD+TV
//    LCD+CRT+TV                          LCD+CRT
//    LCD+CRT+DFP                         LCD+DFP
//    LCD+DFP+TV                          LCD+DFP
//    LCD+CRT+DFP+TV                      LCD+DFP


#define NV_REG_STR_ROM_OVERRIDE                               "romOverride\0\0\0"
#define MAX_REG_ROM_OVERRIDES                                 256
// Type Binary
// Reasoning: This regkey is solely to be used when changing the BIOS or driver binary
//            is not allowed.  If BIOS is allowed to change, the real fix should go there.
//            If BIOS must remain the same, but the driver is allowed to change, then
//            we should move the regkey into the driver and remove it from the INF.
// Name Mangling: Note, the first ROM Override will be listed as romOverride00. The 10th
//                ROM Override will be listed as romOverride0A.  The 16th ROM Override will
//                be listed as romOverride10.  Max ROM Override will be romOverrideFF (256).
// Encoding:
//  Bytes 0-3: BIOS Number: Example: 4.17.00.22.13 would be listed as
//             0x04 0x17 0x00 0x22
//  Byte  4:   BIOS OEM Number: For production BIOSes, these numbers will
//             be used to single out one BIOS sku. Example: 4.17.00.22.13 would be
//             listed as 0x13.  If this value in the registry is 0x00, then all bioses
//             that match the main BIOS number will be overridden.
//  Bytes 5-8: 32 bit offset (Byte 5 - Least significant byte) that defines the starting
//             byte in the image to override.
//  Byte  9:   Number of bytes in this override.  Max: 246 bytes for each override.  This
//             lists the number of bytes starting with byte 10 to the end of the regkey.
//  Bytes 10+  Individual bytes that will be overridden in the bios.


#define NV_REG_STR_OVERRIDE_PANEL_STRAP_INDEX                   "OverridePanelStrapAndIndex"
// Type DWORD
// Encoding: Bits  0-3: Panel Strap override
//           Bits 8-11: Panel Table Index override
//           All other bits - undefined, set as 0 by default
// This will allow a regkey override for the panel strap for PCVBIOS based machines


#define NV_REG_STR_DEVICE_SPECIFIC_DPMS                         "DeviceSpecificDPMS"
// Type Dword
// Encoding: If > 0, use device specific DPMS
//           else don't.
// Tells whether we need to turn on/off one or all devices during a DPMS on/off --
// Toshiba specific right now (May 31, 2002).

#define NV_REG_STR_MASK_SECONDARY_DEVICES                       "MaskSecondaryDevice"
// Type Dword
// Encoding: Bitmask of display devices.  Requires RMMaintainDevs to be enabled.
// If a device is not connected at startup that was used during the last shutdown
// Then this registry key states which devices shouldn't be enabled as secondary by default
// If not present, all TV devices will be removed from the secondary device by default.

#define NV_REG_STR_STATIC_EDID                                  "Static EDID 0x????????"
// Type Binary
// This regkey will override the EDID for a particular displayID.  Just replace the
// "????????" with the DWORD displayID needed to override.  This key is read at boot.
// The binary value must be exactly 128 or 256 bytes and will be used for the EDID for
// the displayID.  If this key is set, no DDC will be used to read the EDID for
// the displayID.  Instead the code will skip DDC reads and use the bytes provided
// in the regkey for the EDID.


#define NV_REG_STR_STRAP_PANEL_FIELD_OVERRIDE                    "Panel00"
// Type Binary
// The 00 will be replaced with the panel strap value "00"->"0F"
// The fields are all packed into one comma-separated string, with
// most commonly overridden elements first.  In order to skip a
// field in the string without overriding it, follow the preceding
// comma immediately with another comma.
// Field order: Manufacturer descriptor string,
//              manufacturer ID (3 chars),
//              Feature Support,
//              product code (2 bytes)


#define NV_REG_STR_USE_GENERIC_EDID_MANUFACTURER                "UseGenericEDIDManufacturer"

// The next registry keys are Toshiba-scecific, and are used to determine overdrive support on
// their LVDS panels.

#define NV_REG_STR_OVER_DRIVE_DATA                              "OverDriveData0"
// Type Binary
// 0 will be replaced with the HEX value (0-F) of the current panel strap when reading this regkey.
// The binary format is known to the video group.  For details on the issue, see bug 135902.
// This regkey is also used for defining overdrive data for EDID product code (OverdrivePanelProductCode0)

#define NV_REG_ENABLE_OVERDRIVE_DATA_FROM_EDID_INFO             "EnableOverdriveDataFromEdidInfo"
// Type DWORD
// Enable Overdrive feature

#define NV_REG_OVERDRIVE_PANEL_PRODUCT_CODE                     "OverdrivePanelProductCode0"
#define NV_REG_OVERDRIVE_PANEL_SERIAL_NO                        "OverdrivePanelSerialNo0"
// Type DWORD
// OverdrivePanelProductCodeX: define product code for overdrive data index X (serial = 0)
// OverdrivePanelSerialNoXY define serial number for overdriver serial data index X

#define NV_REG_STR_OVER_DRIVE_SERIALNO_DATA                     "OverDriveDataSerialNo0"
// Type Binary
// 0 will be replaced with the HEX value (0-F) of the index defined by OverdrivePanelSerialNo0 when
// reading this regkey.
// The binary format is known to the video group.  For details on the issue, see bug 135902.

#define NV_REG_STR_FMIN_VCO                                     "FminVCO"
// Type DWORD
// Encoding Numeric Value in Mhz
// Registry override for Min VCo Value in Mhz

#define NV_REG_STR_FMAX_VCO                                     "FmaxVCO"
// Type DWORD
// Encoding Numeric Value in Mhz
// Registry override for Max VCo Value in Mhz

#define NV_REG_STR_IMAGE_ENABLE_VBLANK_MISS_LIMIT               "ImageEnableVblankMissLimit"
// Type DWORD Encoding Numeric Value Number of consecutive
// headImageEnableCallbackSequencer_NV17 callbacks that can miss actual vblanks.
// Once this limit is reached, the screen will be immediately unblanked (SR1[5]
// = 0) instead of rescheduling the callback for the next vblank.

#define NV_REG_STR_PLL_SETTLE_TIME                              "PllSettleTime"
// Type DWORD
// Encoding Numeric Value
// Number of nanoseconds to allow PLL to settle.  Used to debug PLL problems only.
// Doesn't apply to VPLLs on NV5x and up.
// Default is 0 to use values set in HAL.

#define NV_REG_STR_SLIDE_MCLK                                   "SlideMCLK"
// Type DWORD
// Encoding 1 = Enable, 0 = Disable
// When enabled, this gradually slides MCLK top its new value.  This works around
// PLL settle time and DLL reset issues.  Only works with two-stage PLLs.
// Default is enabled.

#define NV_REG_STR_TWIN_VIEW_DISABLED                           "TwinViewDisabled"
// Type DWORD
// Encoding Numeric Value
// Force Single Head ?

#define NV_REG_STR_BACKLIGHT_CONTROL                            "backlight-control"
// Type DWORD
// Encoding Boolean Value
// Used to control BackLight

#define NV_REG_STR_DEVICES_CONNECTED                            "DevicesConnected"
// Type DWORD
// Encoding -- Bitmap
//  Bit 0-7 -- Detect CRT0-7
//  Bit 8-F -- Detect TV0-7
//  Bit 10-17 -- Detect LCD0-7
// Force Detect of Bitmapped Device Above
//

#define NV_REG_STR_OVERRIDE_FB_SIZE                                 "OverrideFbSize"
// Type Dword
// Encoding Numeric Value
// Size in MB
// Used to reduce FB for testing memory management
//
#define NV_REG_STR_OVERRIDE_FB_SIZE_DEFAULT                         0

#define NV_REG_STR_OVERRIDE_FB_START_KB                             "OverrideFbStartKB"
// Type Dword
// Encoding Numeric Value
// Reserved block of FB starting at address 0.
// Value is passed in as KB. Force aligned to 64KB.
// Used to reserve some FB for testing memory management
//
#define NV_REG_STR_OVERRIDE_FB_START_KB_DEFAULT                     0

#define NV_REG_STR_PM_ENABLE  "PowerMizerEnable"
// Type Dword
// Encoding Numeric Value
// 0 - Disable, 1 - Enable

#define NV_REG_STR_PM_LEVEL   "PowerMizerLevel"
// Type Dword
// Encoding Numeric Value
// 0 - 4,  1 - Max performance, 2 - Balanced, 3- Max battery, 0,4 - reserved

#define NV_REG_STR_PM_LEVEL_AC   "PowerMizerLevelAC"
// Type Dword
// Encoding Numeric Value
// 0 - 4,  1 - Max performance, 2 - Balanced, 3- Max battery, 0,4 - reserved

#define NV_REG_STR_PM_HARD_LEVEL   "PowerMizerHardLevel"
// Type Dword
// Encoding Numeric Value
// 0 - 4,  1 - Max performance, 2 - Balanced, 3- Max battery, 0,4 - reserved

#define NV_REG_STR_PM_HARD_LEVEL_AC   "PowerMizerHardLevelAC"
// Type Dword
// Encoding Numeric Value
// 0 - 4,  1 - Max performance, 2 - Balanced, 3- Max battery, 0,4 - reserved

#define NV_REG_STR_PM_DEFAULT "PowerMizerDefault"
// Type Dword
// Encoding Numeric Value
// 0 - 4,  1 - Max performance, 2 - Balanced, 3- Max battery, 0,4 - reserved

#define NV_REG_STR_PM_DEFAULT_AC "PowerMizerDefaultAC"
// Type Dword
// Encoding Numeric Value
// 0 - 4,  1 - Max performance, 2 - Balanced, 3- Max battery, 0,4 - reserved

#define NV_REG_STR_DC_PERF_LIMIT_SLI "DCPerfLimitSLI"
// Type Dword
// Definition: Maximum PerfTable allowed when on battery and using SLI
// Range: 0 - max perftable, NV_REG_STR_DC_PERF_LIMIT_UNSPECIFIED (0xffffffff) if undefined
#define NV_REG_STR_DC_PERF_LIMIT_UNSPECIFIED (0xFFFFFFFF)

#define NV_REG_STR_DC_PERF_LIMIT_NON_SLI "DCPerfLimitNonSLI"
// Type Dword
// Definition: Maximum PerfTable allowed when on battery and not using SLI
// Range: 0 - max perftable, NV_REG_STR_DC_PERF_LIMIT_UNSPECIFIED (0xffffffff) if undefined

#define NV_REG_STR_ALLOW_MAX_PERF                                   "AllowMaxPerf"
// Type Dword
// Encoding Numeric Value
// Allows you to disable Dynamic Clocking (Mojo) Mode
//  0x0000 - Disabled
//  0x0001 - Enabled - perfmon used for 3D only (default for NV3X and later).
//  0x0002 - Enabled - perfmon used for 2D and 3D
//
//  0x0000 - Allow MCLK changes for single LVDS panel only (default)
//  0x0100 - Allow MCLK changes for any single head.
//  0x0200 - Always allow MCLK changes.

#define NV_REG_STR_DISABLE_DYNAMIC_PSTATE                           "DisableDynamicPstate"
// Type Dword
// 1 = Disable dynamic P-State/adaptive clocking
// 0 = Do not disable dynamic P-State/adaptive clocking (default)

#define NV_REG_STR_MAX_PERF_WITH_PERFMON                            "MaxPerfWithPerfMon"
// Type Dword
// Encoding Numeric Value
// Enables SilentRunning performance levels using PerfMon to determine GPU utilization
// Set to 0 to disable, non-zero to enable.
//
// Override thresholds for maximize performance strategy:
//    Bits  7:0  Percent NV   util - threshold to increase NVCLK
//         15:8  Percent VP   util - threshold to increase VPCLK
//        23:16  Percent FB   util - threshold to increase MCLK
//        32:24  Percent PCIE util - threshold to increase PCIECLK

#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING                          "RmPmuPerfmonSampling"
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_DEFAULT                  0x00000002
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_ENABLE                    1:0
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_ENABLE_DIS               0x00000000
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_ENABLE_EN                0x00000001
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_ENABLE_DEFAULT           0x00000002
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_VBLANK_COUNT             15:8
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_VBLANK_COUNT_DEFAULT     0x00000000
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_TODECREASE_COUNT         23:16
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_TODECREASE_COUNT_DEFAULT 0x00000000
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_INERTIA_COUNT            31:24
#define NV_REG_STR_RM_PMU_PERFMON_SAMPLING_INERTIA_COUNT_DEFAULT    0x00000000
// Type Dword
// Encoding Numeric Value
// Overrides PMU perfmon sampling settings

#define NV_REG_STR_RM_OPTP                                          "RmOptp"
#define NV_REG_STR_RM_OPTP_ENABLE                                   0:0
#define NV_REG_STR_RM_OPTP_ENABLE_DIS                               (0x0)
#define NV_REG_STR_RM_OPTP_ENABLE_EN                                (0x1)
#define NV_REG_STR_RM_OPTP_LOWER_MCLK                               1:1
#define NV_REG_STR_RM_OPTP_LOWER_MCLK_DIS                           (0x0)
#define NV_REG_STR_RM_OPTP_LOWER_MCLK_EN                            (0x1)
#define NV_REG_STR_RM_OPTP_DELAY_4MS                                15:8
#define NV_REG_STR_RM_OPTP_DELAY_4MS_MIN                            (9)
#define NV_REG_STR_RM_OPTP_DELAY_4MS_DEFAULT                        (50)
#define NV_REG_STR_RM_OPTP_TARGET_PERCENT_HIGH                      23:16
#define NV_REG_STR_RM_OPTP_TARGET_PERCENT_HIGH_MIN                  (10)
#define NV_REG_STR_RM_OPTP_TARGET_PERCENT_HIGH_DEFAULT              (100)
#define NV_REG_STR_RM_OPTP_TARGET_PERCENT_LOW                       31:24
#define NV_REG_STR_RM_OPTP_TARGET_PERCENT_LOW_DEFAULT               (95)
// Type Dword
// Encoding Numeric Value
// Overrides OPTP settings

#define NV_REG_STR_RM_OPTP2_LOWER_MCLK                                    "RmOptp2LowerMclk"
#define NV_REG_STR_RM_OPTP2_LOWER_MCLK_DENOM                              7:0
#define NV_REG_STR_RM_OPTP2_LOWER_MCLK_DENOM_DIS                          (0)
#define NV_REG_STR_RM_OPTP2_LOWER_MCLK_NUM                                15:8
#define NV_REG_STR_RM_OPTP2_LOWER_MCLK_AC                                 16:16
#define NV_REG_STR_RM_OPTP2_LOWER_MCLK_AC_DISABLE                         (0)
#define NV_REG_STR_RM_OPTP2_LOWER_MCLK_AC_ENABLE                          (1)
// Type Dword
// Encoding Numeric Value
// Overrides OPTP2 settings for lowering MCLK
// DENOM:     Denominator for stalled-on-FB %, set to zero to disable
// NUM:       Numerator for stalled-on-FB %
// AC_ENABLE: Apply behavior when system is on AC too
//

#define NV_REG_STR_RM_PSTATE20                                      "RmPstate20"
#define NV_REG_STR_RM_PSTATE20_DECOUPLED_DOMAINS                    1:1
#define NV_REG_STR_RM_PSTATE20_DECOUPLED_DOMAINS_DEFAULT            0x00000000
#define NV_REG_STR_RM_PSTATE20_DECOUPLED_DOMAINS_DISABLE            0x00000001
// Type Dword
// Encoding Numeric Value
// Overrides P-State 2.0 settings

#define NV_REG_STR_PSTATES_SLI                                      "PStatesSLI"
#define NV_REG_STR_PSTATES_SLI_ENABLE                               1
#define NV_REG_STR_PSTATES_SLI_DISABLE                              0
#define NV_REG_STR_PSTATES_SLI_DEFAULT                              NV_REG_STR_PSTATES_SLI_ENABLE
// Type Dword
// Encoding Numeric Value
// 1 - (default) Enable dynamic P-States in SLI mode
// 0 - Disable dynamic P-States in SLI mode

#define NV_REG_STR_PSTATE_FORCED                                     "RMForcePstate"
// Type Dword
// Encoding Numeric Value
// # - The pstate to allow.  EX: to force running only at P12
//      set to 12.   To allow P8, set 8, ...
// Bug 532465: Set perf Level to PState, for IMP testing and other diag needs.
// Not intended for production use.

#define NV_REG_STR_RM_BUG_1785342_WAR                               "RMBug1785342War"
// Type Dword
// Encoding Numeric Value.
// Enables WAR for bug 1785342 to lock at Rated TDP MIN on boot.
// If value not equal to 0 Enable this WAR.
// 0 - disable WAR.

#define NV_REG_STR_PSTATE_TIME                                      "PStateTime"
#define NV_REG_STR_PSTATE_TIME_INTERVAL_MS                          15:0
#define NV_REG_STR_PSTATE_TIME_INTERVAL_MS_DEFAULT                  1000
#define NV_REG_STR_PSTATE_TIME_LOWERING                             23:16
#define NV_REG_STR_PSTATE_TIME_LOWERING_DEFAULT                     15
#define NV_REG_STR_PSTATE_TIME_BOOST                                31:24
#define NV_REG_STR_PSTATE_TIME_BOOST_DEFAULT                        30
// Type Dword
// Bits 15:0  - The utilization sampling interval in milliseconds.
//              A value of 0 will use the default value of 1000ms.
// Bits 23:16 - The minimum number of samples before lowering the P-state.
//              A value of 0 will use the default value of 15.
// Bits 31:24 - The number of seconds to spend in the boost level.
//              A value of 0 will use the default value of 30.

#define NV_REG_STR_PERF_LEVEL_SRC                                   "PerfLevelSrc"

// Type Dword
// Bug 2442261: Regkey to enable/disable legacy PMA mode
#define NV_REG_STR_PERF_PMA_CONTROL_REG                             "PerfPmaControlReg"
#define NV_REG_STR_PERF_PMA_CONTROL_REG_LEGACY_ENABLE                0x0
#define NV_REG_STR_PERF_PMA_CONTROL_REG_LEGACY_DISABLE               0x1

#define NV_REG_STR_DISABLE_ASYNC_PSTATES                            "DisableAsyncPstates"
#define NV_REG_STR_ASYNC_PSTATES_DISABLE                            1
#define NV_REG_STR_ASYNC_PSTATES_ENABLE                             0
#define NV_REG_STR_ASYNC_PSTATES_DEFAULT                            NV_REG_STR_ASYNC_PSTATES_ENABLE
// Type Dword
// Encoding Numeric Value
// Determines whether or not asynchronous p-states should be disabled
// 1 - Disables asynchronous p-state changes
// 0 - (default) Leaves asynchronous p-state changes enabled

#define NV_REG_STR_BUG_1469534_WAR                            "RMBug1469534War"
#define NV_REG_STR_BUG_1469534_WAR_ENABLE                     1
#define NV_REG_STR_BUG_1469534_WAR_DISABLE                    0
#define NV_REG_STR_BUG_1469534_WAR_DEFAULT                    NV_REG_STR_BUG_1469534_WAR_ENABLE
// Type Dword
// Encoding Numeric Value
// Determines whether to enable WAR for bug 1469534
// 0 - Disables WAR for bug 1469534
// 1 - (default) Enables WAR for bug 1469534

#define NV_REG_STR_CL_ASLM_CFG                                      "AslmCfg"
#define NV_REG_STR_CL_ASLM_CFG_NV_LINK_UPGRADE                      1:0
#define NV_REG_STR_CL_ASLM_CFG_NV_LINK_UPGRADE_NO                   0x00000000
#define NV_REG_STR_CL_ASLM_CFG_NV_LINK_UPGRADE_YES                  0x00000001
#define NV_REG_STR_CL_ASLM_CFG_NV_LINK_UPGRADE_DEFAULT              0x00000002
#define NV_REG_STR_CL_ASLM_CFG_HOT_RESET                            5:4
#define NV_REG_STR_CL_ASLM_CFG_HOT_RESET_NO                         0x00000000
#define NV_REG_STR_CL_ASLM_CFG_HOT_RESET_YES                        0x00000001
#define NV_REG_STR_CL_ASLM_CFG_HOT_RESET_DEFAULT                    0x00000002
#define NV_REG_STR_CL_ASLM_CFG_FAST_UPGRADE                         9:8
#define NV_REG_STR_CL_ASLM_CFG_FAST_UPGRADE_NO                      0x00000000
#define NV_REG_STR_CL_ASLM_CFG_FAST_UPGRADE_YES                     0x00000001
#define NV_REG_STR_CL_ASLM_CFG_FAST_UPGRADE_DEFAULT                 0x00000002
#define NV_REG_STR_CL_ASLM_CFG_GEN2_LINK_UPGRADE                    11:10
#define NV_REG_STR_CL_ASLM_CFG_GEN2_LINK_UPGRADE_NO                 0x00000000
#define NV_REG_STR_CL_ASLM_CFG_GEN2_LINK_UPGRADE_YES                0x00000001
#define NV_REG_STR_CL_ASLM_CFG_GEN2_LINK_UPGRADE_DEFAULT            0x00000002
// Type Dword
// Encoding Numeric Value
// Overrides chipset-based ASLM configurations.
//
// NV link upgrade:
//  0 - Do not use NV link upgrade for ASLM
//  1 - Use NV link upgrade for ASLM
//  2 - Do not override chipset-selected config (default)
// Hot reset:
//  0 - Do not use hot reset for ASLM
//  1 - Use hot reset for ASLM
//  2 - Do not override chipset-selected config (default)
// Fast link upgrade:
//  0 - Do not use fast link upgrade for ASLM
//  1 - Use fast link upgrade for ASLM
//  2 - Do not override chipset-selected config (default)
// Gen2 link width upgrade:
//  0 - Do not use Gen2 link upgrade for ASLM
//  1 - Use Gen2 link upgrade for ASLM
//  2 - Do not override chipset-selected config (default)

#define NV_REG_STR_CL_FORCE_P2P                                     "ForceP2P"
#define NV_REG_STR_CL_FORCE_P2P_READ                                1:0
#define NV_REG_STR_CL_FORCE_P2P_READ_DISABLE                        0x00000000
#define NV_REG_STR_CL_FORCE_P2P_READ_ENABLE                         0x00000001
#define NV_REG_STR_CL_FORCE_P2P_READ_DEFAULT                        0x00000002
#define NV_REG_STR_CL_FORCE_P2P_WRITE                               5:4
#define NV_REG_STR_CL_FORCE_P2P_WRITE_DISABLE                       0x00000000
#define NV_REG_STR_CL_FORCE_P2P_WRITE_ENABLE                        0x00000001
#define NV_REG_STR_CL_FORCE_P2P_WRITE_DEFAULT                       0x00000002
// Type Dword
// Encoding Numeric Value
// Overrides chipset-based P2P configurations.
// Only be used to test on internal issues
//
// P2P reads:
//  0 - Do not allow P2P reads
//  1 - Allow P2P reads
//  2 - Do not override chipset-selected config (default)
// P2P writes:
//  0 - Do not allow P2P writes
//  1 - Allow P2P writes
//  2 - Do not override chipset-selected config (default)


#define NV_REG_STR_P2P_MAILBOX_CLIENT_ALLOCATED                     "P2PMailboxClientAllocated"
#define NV_REG_STR_P2P_MAILBOX_CLIENT_ALLOCATED_FALSE               0
#define NV_REG_STR_P2P_MAILBOX_CLIENT_ALLOCATED_TRUE                1
// Type Dword
// Overrides the P2P Mailbox allocation policy
// For testing only
// 0 - P2P Mailbox area is allocated by RM
// 1 - P2P Mailbox area is not allocated by RM, but by the client.

#define NV_REG_STR_PEERMAPPING_OVERRIDE                             "PeerMappingOverride"
// Type: DWORD
// Enables/Disables the WAR for bug 1630288 where we disable 3rd-party peer mappings
// Disabled by default
//
#define NV_REG_STR_PEERMAPPING_OVERRIDE_DEFAULT                     0

#define NV_REG_STR_VAR_BUS_LINK_WIDTH                               "VarBusLinkWidth"
#define NV_REG_STR_VAR_BUS_LINK_WIDTH_DISABLE                       0
#define NV_REG_STR_VAR_BUS_LINK_WIDTH_ENABLE_BOTH                   1
#define NV_REG_STR_VAR_BUS_LINK_WIDTH_ENABLE_UPONLY                 2
#define NV_REG_STR_VAR_BUS_LINK_WIDTH_DEFAULT                       NV_REG_STR_VAR_BUS_LINK_WIDTH_DISABLE
// TEST ONLY FOR NOW
// 0 - Do not vary PCI-E bus link width (default)
// 1 - Vary PCI-E bus link width with performance
// 2 - Vary PCI-E bug link width with performance but only allow increases in
//     the lane width (ie. never decrease the lane width).  See bug 320709
//     for more information.

#define NV_REG_STR_MIN_PSTATE_FOR_HD_VIDEO                          "MinPstateForHDVideo"
#define NV_REG_STR_MIN_PSTATE_FOR_SD_VIDEO                          "MinPstateForSDVideo"
#define NV_REG_STR_MIN_PSTATE_FOR_VIDEO_P0                          0
#define NV_REG_STR_MIN_PSTATE_FOR_VIDEO_P8                          8
#define NV_REG_STR_MIN_PSTATE_FOR_VIDEO_P10                         10
#define NV_REG_STR_MIN_PSTATE_FOR_VIDEO_P12                         12
#define NV_REG_STR_MIN_PSTATE_FOR_VIDEO_NONE                        15
#define NV_REG_STR_MIN_PSTATE_FOR_HD_VIDEO_DEFAULT                  NV_REG_STR_MIN_PSTATE_FOR_VIDEO_P8
#define NV_REG_STR_MIN_PSTATE_FOR_SD_VIDEO_DEFAULT                  NV_REG_STR_MIN_PSTATE_FOR_VIDEO_P10
// Type Dword
// Encoding Possible values 0, 8, 10, 12, 15(none/default)

// Nv17 Power Overrides
#define NV_REG_STR_DISABLE_GR_AUTO                                  "DisableGrAuto"
// Type Dword
// Encoding Numeric Value
// 0 - Enable (default), 1 - Disable

#define NV_REG_STR_ENABLE_CORE_VOLTAGE                              "EnableCoreVoltage"
// Type Dword
// Encoding Numeric Value
// 0 - Disable (default), 1 - Enable

#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_SETTINGS                  "RmOverrideIdleSlowdownSettings"
// Type     : dword
// Encoding : all factors use extended-linear-fractional format from thermal manual
//            (factor = 2 * slowdown - 2; example: 3.5x slowdown results in f = 5)
// Bits     : defined below
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_GPC_FACTOR                     5:0
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_GPC_FACTOR_DISABLED     0x00000000
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_GPC_ACTIVE                     7:7
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_GPC_ACTIVE_NO           0x00000000
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_GPC_ACTIVE_YES          0x00000001
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_SYS_FACTOR                    13:8
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_SYS_FACTOR_DISABLED     0x00000000
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_SYS_ACTIVE                   15:15
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_SYS_ACTIVE_NO           0x00000000
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_SYS_ACTIVE_YES          0x00000001
#define NV_REG_STR_OVERRIDE_IDLE_SLOWDOWN_DEPRECATED                   31:16

#define NV_REG_STR_ENABLE_MCLK_SLOWDOWN                             "EnableMClkSlowdown"
// Type Dword
// Encoding Numeric Value
// 0 - Disable, 1 - Enable

#define NV_REG_STR_GR_CTXSW_MODE                                    "GrCtxSwMode"
// Type Dword
// Encoding Numeric Value
// Value can be used to set context switching mode on supported chips:
//    0 -> use RM default
//    1 -> hybrid
//    2 -> hw
//    3 -> sw (not guaranteed to be supported)

#define NV_REG_STR_DISABLE_OVERLAY                                  "DisableOverlay"
// Type Dword
// Encoding: 1 --> Disable Overlay
//           ! = 1 --> Enable Overlay
//

#define NV_REG_STR_FORCE_GEFORCE                        "feeb3241"
#define NV_REG_STR_FORCE_GEFORCE_ENABLE                 0x01ab23cd
#define NV_REG_STR_FORCE_GEFORCE_DISABLE                0x00000000
#define NV_REG_STR_FORCE_GEFORCE_DEFAULT                NV_REG_STR_FORCE_GEFORCE_DISABLE
// Type DWORD
// Encode --
// Set _ENABLE value to force GeForce caps when on a Quadro

#define NV_REG_STR_RM_ROBUST_CHANNELS                       "RmRobustChannels"
#define NV_REG_STR_RM_ROBUST_CHANNELS_ENABLE                 0x00000001
#define NV_REG_STR_RM_ROBUST_CHANNELS_DISABLE                0x00000000
#define NV_REG_STR_RM_ROBUST_CHANNELS_DEFAULT                NV_REG_STR_RM_ROBUST_CHANNELS_DISABLE

#define NV_REG_STR_RM_FORCE_FULL_RC_RECOVERY                 "RmForceFullRcRecovery"
#define NV_REG_STR_RM_FORCE_FULL_RC_RECOVERY_ENABLE          0x00000001
#define NV_REG_STR_RM_FORCE_FULL_RC_RECOVERY_DISABLE         0x00000000
#define NV_REG_STR_RM_FORCE_FULL_RC_RECOVERY_DEFAULT         NV_REG_STR_RM_FORCE_FULL_RC_RECOVERY_DISABLE

#define NV_REG_STR_RM_RC_WATCHDOG                           "RmRcWatchdog"
#define NV_REG_STR_RM_RC_WATCHDOG_ENABLE                    0x00000001
#define NV_REG_STR_RM_RC_WATCHDOG_DISABLE                   0x00000000
#define NV_REG_STR_RM_RC_WATCHDOG_DEFAULT                   NV_REG_STR_RM_RC_WATCHDOG_ENABLE

#define NV_REG_STR_RM_WATCHDOG_TIMEOUT                      "RmWatchDogTimeOut"
#define NV_REG_STR_RM_WATCHDOG_TIMEOUT_LOW                   0x00000007
#define NV_REG_STR_RM_WATCHDOG_TIMEOUT_HI                    0x0000000C
#define NV_REG_STR_RM_WATCHDOG_TIMEOUT_DEFAULT               NV_REG_STR_RM_WATCHDOG_TIMEOUT_LOW

#define NV_REG_STR_RM_WATCHDOG_INTERVAL                      "RmWatchDogInterval"
#define NV_REG_STR_RM_WATCHDOG_INTERVAL_LOW                   0x00000007
#define NV_REG_STR_RM_WATCHDOG_INTERVAL_HI                    0x0000000C
#define NV_REG_STR_RM_WATCHDOG_INTERVAL_DEFAULT               NV_REG_STR_RM_WATCHDOG_INTERVAL_LOW

#define NV_REG_STR_RM_DO_LOG_RC_EVENTS                      "RmLogonRC"
// Type Dword
// Encoding : 0 --> Skip Logging
//            1 --> Do log
// Enable/Disable Event Logging on RC errors
// Default is Disabled
#define NV_REG_STR_RM_DO_LOG_RC_ENABLE                 0x00000001
#define NV_REG_STR_RM_DO_LOG_RC_DISABLE                0x00000000
#define NV_REG_STR_RM_DO_LOG_RC_DEFAULT                NV_REG_STR_RM_DO_LOG_RC_DISABLE

// Type Dword
// Encoding : 0       --> Skip Breakpoint
//            nonzero --> Do Breakpoint
// Enable/Disable breakpoint on DEBUG resource manager on RC errors

#define NV_REG_STR_RM_BREAK_ON_RC                      "RmBreakonRC"
#define NV_REG_STR_RM_BREAK_ON_RC_DISABLE              0x00000000
#define NV_REG_STR_RM_BREAK_ON_RC_ENABLE               0x00000001

// Type Dword
// Bitmap Encoding : 0       -->  Disable Functionality
//                   1       -->  Enable Functionality
// Bitmap Enable/Disable breakpoint/Debug code in release resource manager

#define NV_REG_STR_RM_BREAK                            "RmBreak"
#define NV_REG_STR_RM_BREAK_DISABLE                    0x00000000
#define NV_REG_STR_RM_BREAK_RC_ENABLE                  NVBIT(0)
#define NV_REG_STR_RM_BREAK_ASSERT_ENABLE              NVBIT(1)
#define NV_REG_STR_RM_BREAK_DBGBREAK_ENABLE            NVBIT(2)
#define NV_REG_STR_RM_BREAK_GPU_TIMEOUT_ENABLE         NVBIT(3)
#define NV_REG_STR_RM_BREAK_POOL_TAGS_ENABLE           NVBIT(4)
#define NV_REG_STR_RM_BREAK_POWER_ON_ENABLE            NVBIT(5)
#define NV_REG_STR_RM_BREAK__DEPRECATED                NVBIT(6)
#define NV_REG_STR_RM_BREAK_CRASH                      NVBIT(7)
#define NV_REG_STR_RM_BREAK_CRASH_ON_RC                NVBIT(8)

// Explicitly disable RmBreakOnRC for Retail <enable via registry> and
// RMCFG_IS_PLATFORM(GSP) builds
#if ((defined(DEBUG) || defined(QA_BUILD)) &&  \
     (!defined(RMCFG_FEATURE_PLATFORM_GSP) ||  \
      (defined(RMCFG_FEATURE_PLATFORM_GSP) && !RMCFG_FEATURE_PLATFORM_GSP)))
#define NV_REG_STR_RM_BREAK_ON_RC_DEFAULT              NV_REG_STR_RM_BREAK_ON_RC_ENABLE
#else
#define NV_REG_STR_RM_BREAK_ON_RC_DEFAULT              NV_REG_STR_RM_BREAK_ON_RC_DISABLE
#endif

// Type Dword
// Encoding : 0       --> Skip Breakpoint
//            nonzero --> Do Breakpoint
// For Vista, Break on override Rm Disable and do RC error?

#define NV_REG_STR_RM_BREAK_ON_RC_DISABLE_OVERRIDE     "RmBreakonRCDisableOverride"
#define NV_REG_STR_RM_BREAK_ON_RC_DISABLE_OVERRIDE_DISABLE 0x00000000
#define NV_REG_STR_RM_BREAK_ON_RC_DISABLE_OVERRIDE_ENABLE  0x00000001
#define NV_REG_STR_RM_BREAK_ON_RC_DISABLE_OVERRIDE_DEFAULT NV_REG_STR_RM_BREAK_ON_RC_DISABLE_OVERRIDE_DISABLE

// Type Dword
// Encoding : Count of number of errors before we override the RC disable

#define NV_REG_STR_RM_RC_DISABLE_OVERRIDE_COUNT     "RmRCDisableOverrideCount"
#define NV_REG_STR_RM_RC_DISABLE_OVERRIDE_COUNT_DEFAULT 0x00000028

// Type Dword
// Encoding : 0       --> Disable Address space level RC Recovery
//            nonzero --> Enable Address space level RC Recovery
// Enable/Disable address space RC recovery in resource manager on RC errors
#define NV_REG_STR_RM_ENABLE_ADDRESS_SPACE_RC                      "RmEnableAddressSpaceRC"
#define NV_REG_STR_RM_ENABLE_ADDRESS_SPACE_RC_DISABLE              0x00000000
#define NV_REG_STR_RM_ENABLE_ADDRESS_SPACE_RC_ENABLE               0x00000001
#define NV_REG_STR_RM_ENABLE_ADDRESS_SPACE_RC_DEFAULT              NV_REG_STR_RM_ENABLE_ADDRESS_SPACE_RC_DISABLE

// Type Dword
// Encoding: memory backtrace stack depth.
// Reasonable sizes are 1-20, Default 1. example 4 = caller depth is 4. Actual byte size allocated: depth * pointer size (8 for x64)
// Helps with !verifier 3 nvlddmkm.sys trace of kdumps.
#define NV_REG_STR_RM_RC_MEM_BACKTRACE_STACK_DEPTH "RmMemBacktraceStackDepth"


// Volatile registry entries for previous driver version.
// Used to record driver unload/reload for debugging purposes.
#define NV_REG_STR_RM_RC_PREV_DRIVER_VERSION        "RmRCPrevDriverVersion"
#define NV_REG_STR_RM_RC_PREV_DRIVER_BRANCH         "RmRCPrevDriverBranch"
#define NV_REG_STR_RM_RC_PREV_DRIVER_CHANGELIST     "RmRCPrevDriverChangelist"
#define NV_REG_STR_RM_RC_PREV_DRIVER_LOAD_COUNT     "RmRCPrevDriverLoadCount"

//objfifo.c
#define NV_REG_STR_RM_NUM_FIFOS                        "RmNumFifos"
// Type Dword
// Override number of fifos (channels) on NV4X
#define NV_REG_STR_RM_NUM_FIFOS_COMPAT                 0x00000020
#define NV_REG_STR_RM_NUM_FIFOS_EXTENDED               0x00000200

//
// Temperature limits
//
#define NV_REG_STR_LOCAL_TEMP_HIGH_LIMIT                "LocalTempHighLimit"
// Type Dword
// Encoding Numeric Value

#define NV_REG_STR_EXT_TEMP_HIGH_LIMIT                  "ExtTempHighLimit"
// Type Dword
// Encoding Numeric Value

#define NV_REG_STR_THERMAL_SB_H1                        "ThermalSBH1"
// Type Dword
// Encoding Numeric Value
// Hysteresis value for SBIOS controlled Thermals for the T1 limit.

#define NV_REG_STR_THERMAL_SB_H2                        "ThermalSBH2"
// Type Dword
// Encoding Numeric Value
// Hysteresis value for SBIOS controlled Thermals for the T2 limit.

#define NV_REG_STR_THERMAL_THRESH00_TARGET000         "ThermalThresh00Target000"
// Type Dword
// Encoding Numeric Value
// Set of values, where 00 is replaced by the threshold (so far, T1 = 01,
// T2 = 02) and 000 is replaced by the index into the Dell specific sensor
// array in SBMAX6649 (which is BIOS and device dependent). The numerical
// values are in decimal.

//
// Thermal chip type override
// Type Dword
// Encoding Numeric Value
// Value can be used to disable or override thermal chip type in DCB
// Refer to dacdcb.h for supported values.
//    0               -> thermal chip disabled (NV_MISCDCB_THERMALDIODE_SUPPORT_NA)
//    * != 0xFFFFFFFF -> other thermal chip type (e.g. NV_MISCDCB_THERMALDIODE_SUPPORT_LM99)
//    xFFFFFFFF       -> Default case. Normal DCB described operation
//
#define NV_REG_STR_THERMAL_CHIP_TYPE                    "ThermalChipType"

#define NV_REG_STR_THERMAL_POLICY_SW1                   "ThermalPolicySW1"
// Type Dword
// Encoding bitmask
//   Bit     0: If == 0, disable thermal SW1 support
//   Bits 31-1: Reserved
#define NV_REG_STR_THERMAL_POLICY_DISABLED               0x00
#define NV_REG_STR_THERMAL_POLICY_ENABLED                0x01

#define NV_REG_STR_RM_THERMAL_CONVERSION_RATE      "RMThermalConversionRate"

/*!
 * Override Power Policy functionality.
 *
 * DISABLE - Override to disable all power policies on the GPU.  This cannot be
 * used to enable power policies when not specified in the VBIOS for the GPU,
 * only disable when specified.
 *     _DEFAULT - Keep default settings from VBIOS.
 *     _DISABLED - Explicitly disable, overriding VBIOS settings.
 *
 * LIMITS - Override to selectively unlimit all policy limits.
 *     _DEFAULT - Keep all default limits from VBIOS.
 *     _UNLIMITED - Override VBIOS maximum and minimum limits.
 *
 * RATED_LIMIT - Override to set the rated limit to the maximum allowed,
 *               either by the VBIOS or the LIMITS field.
 *     _DEFAULT - Use the VBIOS default for the rated limit.
 *     _MAXIMUM - Set the rated limit to the maximum allowed.
 *
 * INTEGRAL_CONTROL - Override to disable Integral Average Control feature.
 *     _DEFAULT - Keep default settings from VBIOS.
 *     _DISABLE - Explicitly disable, overriding VBIOS settings.
 *
 * MIN_CLIENT_SAMPLE_PERIOD - Override Minimum Client Sampling Period coming from VBIOS.
 *     16-bit field gives the value of minimum client sampling period in ms.
 */
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE                                  "RmPmgrPwrPolicyOverride"

#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_DISABLE                          0:0
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_DISABLE_DEFAULT                  0x00000000
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_DISABLE_DISABLED                 0x00000001
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_LIMITS                           1:1
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_LIMITS_DEFAULT                   0x00000000
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_LIMITS_UNLIMITED                 0x00000001
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_RATED_LIMIT                      2:2
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_RATED_LIMIT_DEFAULT              0x00000000
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_RATED_LIMIT_MAXIMUM              0x00000001
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_INTEGRAL_CONTROL                 3:3
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_INTEGRAL_CONTROL_DEFAULT         0x00000000
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_INTEGRAL_CONTROL_DISABLE         0x00000001
#define NV_REG_STR_RM_PMGR_PWR_POLICY_OVERRIDE_MIN_CLIENT_SAMPLE_PERIOD         19:4

/*!
 * Override Power Device BA v0.0 parameters.
 *
 * _HIGH_POWER_FIT_ONLY - Controls whether device is overridden to only use the
 * high power fit.
 *     _DISABLE - Use the fit functionality defined in the VBIOS.
 *     _ENABLE - Will use only the high power fit for all BA v0.0 power devices.
 */
#define NV_REG_STR_RM_PMGR_PWR_DEVICE_BA00_OVERRIDE                              "RmPmgrPwrDeviceBa00Override"
#define NV_REG_STR_RM_PMGR_PWR_DEVICE_BA00_OVERRIDE_HIGH_POWER_FIT_ONLY          0:0
#define NV_REG_STR_RM_PMGR_PWR_DEVICE_BA00_OVERRIDE_HIGH_POWER_FIT_ONLY_DISABLE  0x00000000
#define NV_REG_STR_RM_PMGR_PWR_DEVICE_BA00_OVERRIDE_HIGH_POWER_FIT_ONLY_ENABLE   0x00000001

/*!
 * Override registry key for PMGR PMU functionality (PWR_DEVICE, PWR_MONITOR,
 * PWR_CAP).
 *
 * Type: DWORD
 *
 * DISABLE - Override to disable any active PMGR PMU functionality.  This
 *     cannot be used to enable power capping when disabled, only disable when
 *     enabled.  When set, this will prevent the RM from sending PMGR commands
 *     to the PMU.
 *   _DEFAULT - Keeps default settings/functionality - a no-op.
 *   _DISABLED - Disables PMGR PMU functionality.
 */
#define NV_REG_STR_RM_PMGR_PMU_OVERRIDE                             "RmPmgrPmuOverride"
#define NV_REG_STR_RM_PMGR_PMU_OVERRIDE_DISABLE                     0:0
#define NV_REG_STR_RM_PMGR_PMU_OVERRIDE_DISABLE_DEFAULT             0x00000000
#define NV_REG_STR_RM_PMGR_PMU_OVERRIDE_DISABLE_DISABLED            0x00000001

/*!
 * Override the HW fuse IDDQ value for volt rail 0.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.).  Value is in units of mA.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_IDDQ_OVVERRIDE                           "RmPmgrIddqOverride"
#define NV_REG_STR_RM_PMGR_IDDQ_OVVERRIDE_DEFAULT                   0x0

/*!
 * Override the HW fuse IDDQ value for volt rail 1.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.).  Value is in units of mA.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_IDDQ_1_OVVERRIDE                         "RmPmgrIddq1Override"
#define NV_REG_STR_RM_PMGR_IDDQ_1_OVVERRIDE_DEFAULT                 0x0

/*!
 * Override the HW fuse IDDQ value for volt rail NVVDD.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.).  Value is in units of mA.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_IDDQ_NVVDD_OVVERRIDE                     "RmPmgrIddqNvvddOverride"
#define NV_REG_STR_RM_PMGR_IDDQ_NVVDD_OVVERRIDE_DEFAULT             0x0

/*!
 * Override the HW fuse IDDQ value for volt rail 1.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.).  Value is in units of mA.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_IDDQ_MSVDD_OVVERRIDE                     "RmPmgrIddqMsvddOverride"
#define NV_REG_STR_RM_PMGR_IDDQ_MSVDD_OVVERRIDE_DEFAULT             0x0

/*!
 * Ignore checking the HW IDDQ version fuse against the expected value in the
 * VBIOS.  This can be used to test early silicon which has not been fused
 * correctly at ATE.
 *
 * Type: DWORD
 *
 * Boolean variable:
 *     0 - Do not ignore the IDDQ version check (DEFAULT behavior)
 *    !0 - Ignore the IDDQ version check
 */
#define NV_REG_STR_RM_PMGR_IDDQ_CHECK_IGNORE                        "RmPmgrIddqCheckIgnore"
#define NV_REG_STR_RM_PMGR_IDDQ_CHECK_IGNORE_NO                       0x00000000

/*!
 * Ignore checking the SRAM_VMIN version fuse against the expected value in the
 * VBIOS.  This can be used to test early silicon which has not been fused
 * correctly at ATE.
 *
 * Type: DWORD
 *
 * Boolean variable:
 *     0 - Do not ignore the SRAM_VMIN version check (DEFAULT behavior)
 *    !0 - Ignore the SRAM_VMIN version check
 */
#define NV_REG_STR_RM_SRAM_VMIN_CHECK_IGNORE                        "RmSramVminCheckIgnore"
#define NV_REG_STR_RM_SRAM_VMIN_CHECK_IGNORE_NO                       0x00000000

/*!
 * Ignore checking the ISENSE calibration version fuse against the expected
 * value in the VBIOS. This can be used to test early silicon which has not been
 * fused correctly at ATE.
 *
 * Type: DWORD
 *
 * Boolean variable:
 *     0 - Do not ignore the ISENSE calibration version check (DEFAULT behavior)
 *    !0 - Ignore the ISENSE calibration version check
 */
#define NV_REG_STR_RM_PMGR_ISENSE_CHECK_IGNORE         "RmPmgrIsenseCheckIgnore"
#define NV_REG_STR_RM_PMGR_ISENSE_CHECK_IGNORE_NO                     0x00000000

/*!
 * Override the HW fuse VCM_OFFSET value.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.). This is a 7-bit value.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_ISENSE_VCM_OFFSET_OVERRIDE                "RmPmgrIsenseVcmOffsetOverride"
#define NV_REG_STR_RM_PMGR_ISENSE_VCM_OFFSET_OVERRIDE_VALUE                                      6:0
#define NV_REG_STR_RM_PMGR_ISENSE_VCM_OFFSET_OVERRIDE_VALUE_DEFAULT                              0x0
#define NV_REG_STR_RM_PMGR_ISENSE_VCM_OFFSET_OVERRIDE_RSVD                                      31:8

/*!
 * Override the HW fuse DIFF_GAIN value.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.). This is a 5-bit value.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_ISENSE_DIFF_GAIN_OVERRIDE                 "RmPmgrIsenseDiffGainOverride"
#define NV_REG_STR_RM_PMGR_ISENSE_DIFF_GAIN_OVERRIDE_VALUE                                      4:0
#define NV_REG_STR_RM_PMGR_ISENSE_DIFF_GAIN_OVERRIDE_VALUE_DEFAULT                              0x0
#define NV_REG_STR_RM_PMGR_ISENSE_DIFF_GAIN_OVERRIDE_RSVD                                      31:5

/*!
 * Override the HW fuse DIFF_OFFSET value.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.). This is a 9-bit value.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_ISENSE_DIFF_OFFSET_OVERRIDE               "RmPmgrIsenseDiffOffsetOverride"
#define NV_REG_STR_RM_PMGR_ISENSE_DIFF_OFFSET_OVERRIDE_VALUE                                      8:0
#define NV_REG_STR_RM_PMGR_ISENSE_DIFF_OFFSET_OVERRIDE_VALUE_DEFAULT                              0x0
#define NV_REG_STR_RM_PMGR_ISENSE_DIFF_OFFSET_OVERRIDE_RSVD                                      31:9

/*!
 * Override the HW fuse VCM_COARSE_OFFSET value.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.). This is a 4-bit value.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_ISENSE_VCM_COARSE_OFFSET_OVERRIDE               "RmPmgrIsenseVcmCoarseOffsetOverride"
#define NV_REG_STR_RM_PMGR_ISENSE_VCM_COARSE_OFFSET_OVERRIDE_VALUE                                           3:0
#define NV_REG_STR_RM_PMGR_ISENSE_VCM_COARSE_OFFSET_OVERRIDE_VALUE_DEFAULT                                   0x0
#define NV_REG_STR_RM_PMGR_ISENSE_VCM_COARSE_OFFSET_OVERRIDE_RSVD                                           31:4

/*!
 * Override the HW fuse DIFFERENTIAL_COARSE_GAIN value.  This is useful for testing chips
 * which have not had been fused (early in bringup, etc.). This is a 2-bit value.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 *     values.
 */
#define NV_REG_STR_RM_PMGR_ISENSE_DIFFERENTIAL_COARSE_GAIN_OVERRIDE               "RmPmgrIsenseDiffCoarseGainOverride"
#define NV_REG_STR_RM_PMGR_ISENSE_DIFFERENTIAL_COARSE_GAIN_OVERRIDE_VALUE                                          1:0
#define NV_REG_STR_RM_PMGR_ISENSE_DIFFERENTIAL_COARSE_GAIN_OVERRIDE_VALUE_DEFAULT                                  0x0
#define NV_REG_STR_RM_PMGR_ISENSE_DIFFERENTIAL_COARSE_GAIN_OVERRIDE_RSVD                                          31:3

/*!
 * Always limits clocks to max RATED_TDP vPState, even when TDP controllers (power
 * capping, temperature controller) are active.
 *
 * Type: DWORD
 *
 * Boolean variable:
 *     0 - Do not artificially limit to max RATED_TDP vPstate when TDP
 *         controllers are active.
 *    !0 - Always limit to max RATED_TDP vPstate, even when TDP
 *         controllers are active.
 */
#define NV_REG_STR_RM_PERF_RATED_TDP_LIMIT                          "RmPerfRatedTdpLimit"

/*!
 * Overrides RM Perf behavior
 *
 * Type: DWROD
 * DWORD bit-field with the following fields defined:
 *
 * _SKIP_RESTORE_BOOT_STATE_ON_UNLOAD
 *     _ENABLE  - Does not restore boot clocks after state unload
 *     _DISABLE - Restores boot clocks after state unload - default behavior
 *
 * This will be used by MODS client ONLY
 * If override is enabled, PERF will skip restoring clocks to boot clocks on state unload
 * NOTE: Client MUST reboot driver after unload, to prevent driver load failures
 */
#define NV_REG_STR_RM_PERF_OVERRIDE                                   "RmPerfOverride"
#define NV_REG_STR_RM_PERF_OVERRIDE_SKIP_RESTORE_BOOT_STATE_ON_UNLOAD                   0:0
#define NV_REG_STR_RM_PERF_OVERRIDE_SKIP_RESTORE_BOOT_STATE_ON_UNLOAD_DISABLE    0x00000000
#define NV_REG_STR_RM_PERF_OVERRIDE_SKIP_RESTORE_BOOT_STATE_ON_UNLOAD_ENABLE     0x00000001
#define NV_REG_STR_RM_PERF_OVERRIDE_RSVD                                          31:1

/*!
 * Overrides RM Perf Cf behavior
 *
 * Type: DWROD
 * DWORD bit-field with the following fields defined:
 *
 * _LOAD
 *     _DEFAULT - Loads all Perf Cf data in PMU - default behavior unless overridden
 *     _DISABLE - Skips loading all Perf Cf data in PMU
 * _TRRD_WAR
 *     _DEFAULT - Default POR behavior of TRRD WAR
 *     _ENABLE  - Enable tRRD WAR
 *
 * This will be used by clients like MODS to skip loading Perf Cf data.
 * Data includes Sensors, Topologys, Controllers, Policys and Pwr Models.
 */
#define NV_REG_STR_RM_PERF_CF_OVERRIDE                      "RmPerfCfOverride"
#define NV_REG_STR_RM_PERF_CF_OVERRIDE_LOAD                 0:0
#define NV_REG_STR_RM_PERF_CF_OVERRIDE_LOAD_DEFAULT         0x00000000
#define NV_REG_STR_RM_PERF_CF_OVERRIDE_LOAD_DISABLE         0x00000001
#define NV_REG_STR_RM_PERF_CF_OVERRIDE_TRRD_WAR             2:1
#define NV_REG_STR_RM_PERF_CF_OVERRIDE_TRRD_WAR_DEFAULT     0x00000000
#define NV_REG_STR_RM_PERF_CF_OVERRIDE_TRRD_WAR_ENABLE      0x00000001
#define NV_REG_STR_RM_PERF_CF_OVERRIDE_TRRD_WAR_DISABLE     0x00000002
#define NV_REG_STR_RM_PERF_CF_OVERRIDE_RSVD                 31:3


/*!
 * Type DWORD
 *
 * Overrides RM Perf Cf Policy default behaviors
 *
 * _DLPPC_1X
 *      _DEFAULT: Load the DLPPC_1X Perf Cf Policy without modification
 *      _DISABLE: set bActivate to False to not let DLPPC_1X influence the
 *                clocks while running
 *
 * _GSP_UTIL
 *      _DEFAULT: Use the unmodified driver default.
 *      _DISABLE: So not increase clocks based on GSP utilization.
 *      _ENABLE:  Increase clocks based on GSP utilization.
 */
#define NV_REG_STR_RM_PERF_CF_POLICY_OVERRIDES                   "RmPerfCfPolicyOverrides"
#define NV_REG_STR_RM_PERF_CF_POLICY_OVERRIDES_DLPPC_1X             0:0
#define NV_REG_STR_RM_PERF_CF_POLICY_OVERRIDES_DLPPC_1X_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_PERF_CF_POLICY_OVERRIDES_DLPPC_1X_DISABLE     (0x00000001)
#define NV_REG_STR_RM_PERF_CF_POLICY_OVERRIDES_GSP_UTIL             2:1
#define NV_REG_STR_RM_PERF_CF_POLICY_OVERRIDES_GSP_UTIL_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_PERF_CF_POLICY_OVERRIDES_GSP_UTIL_DISABLE     (0x00000001)
#define NV_REG_STR_RM_PERF_CF_POLICY_OVERRIDES_GSP_UTIL_ENABLE      (0x00000002)

/*!
 * Overrides RM Perf Clk controllers behavior
 *
 * Type: DWROD
 * DWORD bit-field with the following fields defined:
 *
 * _LOAD
 *     _DEFAULT - Loads all clk controllers
 *     _CLFC_DEFAULT - Loads all CLFC clk controllers data in PMU
 *     _CLFC_DISABLE - Skips loading all CLFC clk controllers data in PMU
 *     _CLVC_DEFAULT - Loads all CLVC clk controllers data in PMU
 *     _CLVC_DISABLE - Skips loading all CLVC clk controllers data in PMU
 *
 * This will be used by clients like MODS to skip loading Perf CLK controllers data.
 */
#define NV_REG_STR_RM_CLK_CONTROLLERS_OVERRIDE                 "RmClkControllersOverride"
#define NV_REG_STR_RM_CLK_CONTROLLERS_OVERRIDE_CLFC            0:0
#define NV_REG_STR_RM_CLK_CONTROLLERS_OVERRIDE_CLFC_DEFAULT    0x00000000
#define NV_REG_STR_RM_CLK_CONTROLLERS_OVERRIDE_CLFC_DISABLE    0x00000001
#define NV_REG_STR_RM_CLK_CONTROLLERS_OVERRIDE_CLVC            1:1
#define NV_REG_STR_RM_CLK_CONTROLLERS_OVERRIDE_CLVC_DEFAULT    0x00000000
#define NV_REG_STR_RM_CLK_CONTROLLERS_OVERRIDE_CLVC_DISABLE    0x00000001
#define NV_REG_STR_RM_CLK_CONTROLLERS_OVERRIDE_RSVD            31:2

/*!
 * Overrides RM Perf Change Sequence behavior.
 *
 * Type: DWORD
 *
 * DWORD bitfield with the following fields defined:
 *
 * _LOCKED
 *     _DEFAULT     - Keeps default behavior from RM.
 *     _SET         - Forces lock Perf Change Sequence
 *  This will be used by clients such as MODS to lock the change seq at system boot
 *  to ensure that the first VF switch includes all client (MODS) initial setting to
 *  update the VF curve. Client will unlock the change sequence using its SET_CONTROL.
 *
 * _SKIP_VOLT_RANGE_TRIM
 *     _DEFAULT     - Keeps default behavior from RM.
 *     _SET         - Forces skip voltage range trim,
 *  This flag allows external RM clients like MODS to request voltage
 *  outside of the Vmin - Vmax bounds.
 */
#define NV_REG_STR_RM_PERF_CHANGE_SEQ_OVERRIDE                               "RmPerfChangeSeqOverride"
#define NV_REG_STR_RM_PERF_CHANGE_SEQ_OVERRIDE_LOCK                                                0:0
#define NV_REG_STR_RM_PERF_CHANGE_SEQ_OVERRIDE_LOCK_DEFAULT                                 0x00000000
#define NV_REG_STR_RM_PERF_CHANGE_SEQ_OVERRIDE_LOCK_SET                                     0x00000001
#define NV_REG_STR_RM_PERF_CHANGE_SEQ_OVERRIDE_SKIP_VOLT_RANGE_TRIM                                1:1
#define NV_REG_STR_RM_PERF_CHANGE_SEQ_OVERRIDE_SKIP_VOLT_RANGE_TRIM_DEFAULT                 0x00000000
#define NV_REG_STR_RM_PERF_CHANGE_SEQ_OVERRIDE_SKIP_VOLT_RANGE_TRIM_SET                     0x00000001
#define NV_REG_STR_RM_PERF_CHANGE_SEQ_OVERRIDE_RSVD                                               31:2

/*!
 * Overrides RM PERF_LIMITs behavior.
 *
 * Type: DWORD
 *
 * DWORD bitfield with the following fields defined:
 *
 * _LOCK
 *     Locks the arbiter from running @ref perfLimitsArbitrateAndApply_IMPL.
 * _CACHING_ENABLE
 *     Overrides the ARBITER caching behavior for processing PERF_LIMITs:
 *     _DEFAULT - Keeps default behavior from RM.
 *     _DISABLED - Forces disabling of PERF_LIMITs caching.
 *     _ENABLED - Forces enabling of PERF_LIMITs caching.
 * _ARBITRATE_AND_APPLY_WORKITEM
 *     Overrides the ARBITRATE_AND_APPLY behavior for processing all ASYNC
 *     calls to @ref perfLimitsArbitrateAndApply_IMPL() to WORKITEM:
 *     _DEFAULT - Keeps default behavior from RM.
 *     _DISABLED - Forces disabling ARBITRATE_AND_APPLY behavior.
 *     _ENABLED - Forces enabling ARBITRATE_AND_APPLY behavior.
 */
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE                                        "RmPerfLimitsOverride"
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_LOCK                                                      1:0
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_LOCK_DEFAULT                                       0x00000000
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_LOCK_FALSE                                         0x00000001
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_LOCK_TRUE                                          0x00000002
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_CACHING_ENABLE                                            3:2
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_CACHING_ENABLE_DEFAULT                             0x00000000
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_CACHING_ENABLE_DISABLED                            0x00000001
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_CACHING_ENABLE_ENABLED                             0x00000002
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_ARBITRATE_AND_APPLY_WORKITEM                              5:4
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_ARBITRATE_AND_APPLY_WORKITEM_DEFAULT               0x00000000
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_ARBITRATE_AND_APPLY_WORKITEM_DISABLED              0x00000001
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_ARBITRATE_AND_APPLY_WORKITEM_ENABLED               0x00000002
#define NV_REG_STR_RM_PERF_LIMITS_OVERRIDE_RSVD                                                     31:6

//
// RM registry keys
//

#define NV_REG_STR_PCI_LATENCY_TIMER_CONTROL            "PciLatencyTimerControl"
// Type Dword
// Encoding Numeric Value
// Override to control setting/not setting of pci timer latency value.
// Not present suggests default value. A value 0xFFFFFFFF will leave the value unmodified (ie bios value).
// All other values must be multiples of 8

#define NV_REG_STR_RM_MB_CHECK_REV                      "MB_CheckREV"
// Type DWORD
// Encoding: 1 --> Make sure GPU revisions match when setting up MB (default)
//           0 --> Do not check.

#define NV_REG_STR_RM_MB_DISABLE_VIDEO_LINK             "MB_DisableVideoLink"
// Type DWORD
// Encoding: 1 --> Disable Video Link if found.
//          else --> Do nothing

#define NV_REG_STR_RM_DISABLE_BR03_FLOW_CONTROL         "MB_DisableBr03FlowControl"
// Type DWORD
// Encoding 1 -> Do not program BR03 flow control registers
//          0 -> Setup BR03 flow control registers
// Determine whether we need to program BR03 flow control registers, in objcl.c

#define NV_REG_STR_I2C_SPEED                             "RMI2cSpeed"
// Type: Dword
// Encoding:
//   USE_DEFAULTS     0 --> No effect or use default value for the branch.
//   100_KHZ        100 --> Set I2C speed to 100 KHz.
//   400_KHZ        400 --> Set I2C speed to 400 KHz.
#define NV_REG_STR_I2C_SPEED_USE_DEFAULTS                0
#define NV_REG_STR_I2C_SPEED_100_KHZ                   100
#define NV_REG_STR_I2C_SPEED_400_KHZ                   400


#define NV_REG_STR_USE_SW_I2C                           "RMUseSwI2c"
// Type: Dword
// Encoding:
//   USE_DEFAULTS   0   --> No effect.
//   ENABLE         1   --> Always use SW I2C.
// Do not set enabled at the same time as any other RMUse*I2c.
#define NV_REG_STR_USE_SW_I2C_USE_DEFAULTS                0
#define NV_REG_STR_USE_SW_I2C_ENABLE                      1
#define NV_REG_STR_USE_SW_I2C_DEFAULT       NV_REG_STR_USE_SW_I2C_USE_DEFAULTS


#define NV_REG_STR_USE_PMU_I2C                          "RMUsePmuI2c"
// Type: Dword
// Encoding:
//   USE_DEFAULTS   0   --> No effect.
//   ENABLE         1   --> Use PMU I2C if supported and when possible.
// Do not set enabled at the same time as any other RMUse*I2c.
#define NV_REG_STR_USE_PMU_I2C_USE_DEFAULTS               0
#define NV_REG_STR_USE_PMU_I2C_ENABLE                     1
#define NV_REG_STR_USE_PMU_I2C_DEFAULT      NV_REG_STR_USE_PMU_I2C_USE_DEFAULTS

#define NV_REG_STR_USE_PMU_SW_I2C                       "RMUsePmuSwI2c"
// Type: Dword
// Encoding:
//   USE_DEFAULTS   0   --> No effect.
//   ENABLE         1   --> Use PMU SW I2C if supported and when possible.
// Do not set enabled at the same time as any other RMUse*I2c.
#define NV_REG_STR_USE_PMU_SW_I2C_USE_DEFAULTS            0
#define NV_REG_STR_USE_PMU_SW_I2C_ENABLE                  1
#define NV_REG_STR_USE_PMU_SW_I2C_DEFAULT NV_REG_STR_USE_PMU_SW_I2C_USE_DEFAULTS

#define NV_REG_STR_USE_PMU_HW_I2C                       "RMUsePmuHwI2c"
// Type: Dword
// Encoding:
//   USE_DEFAULTS   0   --> No effect.
//   ENABLE         1   --> Use PMU HW I2C if supported and when possible.
// Do not set enabled at the same time as any other RMUse*I2c.
#define NV_REG_STR_USE_PMU_HW_I2C_USE_DEFAULTS            0
#define NV_REG_STR_USE_PMU_HW_I2C_ENABLE                  1
#define NV_REG_STR_USE_PMU_HW_I2C_DEFAULT NV_REG_STR_USE_PMU_HW_I2C_USE_DEFAULTS

#define NV_REG_STR_HOTPLUG_I2C_DISPLAYS                 "RMHotPlugI2cDisplays"
// Type: Dword
// Set of device map for which HW I2C will monitor and report

#define NV_REG_STR_I2C_PMU_MUTEX_TIMEOUT_US            "RMI2cPmuMutexTimeoutus"
// Type: Dword
// Specify the timeout (in us) RM will use when acquiring the I2C PMU mutex.
// This overrides the default RM value.

#define NV_REG_STR_USE_PMU_SPI                          "RMUsePmuSpi"
// Type: Dword
// Encoding:
//   USE_DEFAULTS   0   --> No effect.
//   ENABLE         1   --> Use PMU SPI if supported and when possible.
#define NV_REG_STR_USE_PMU_SPI_USE_DEFAULTS             0
#define NV_REG_STR_USE_PMU_SPI_ENABLE                   1

#define NV_REG_STR_HOTPLUG_SUPPORT_DISABLE               "RMHotPlugSupportDisable"
// Type: Dword
// Set of device maps. Disables hotplug support on the devices included.

#define NV_REG_STR_RM_HDCP_REAUTHENICATE "RMHDCPReAuthenicate"
#define NV_RM_HDCP_REAUTHENICATE_MIN (0)
#define NV_RM_HDCP_REAUTHENICATE_MAX (5)
#define NV_RM_HDCP_REAUTHENICATE_DEFAULT (1)

#define NV_REG_STR_RM_HDCP_MAX_ERROR "RMHDCPMAXERROR"
#define NV_RM_HDCP_MAX_ERROR_MIN (0)
#define NV_RM_HDCP_MAX_ERROR_MAX (5)
#define NV_RM_HDCP_MAX_ERROR_DEFAULT (0)

#define NV_REG_STR_RM_HDMI_FORCE_CHN_STATUS_FREQ "RMHDMIForceChnStatusFreq"
// Type: Dword
// Forces a specific value into the channel status frequency value
// in an HDMI stream.
// NOTE: These defines DO NOT follow values defined in CEA 861B/D :<.
// Encoding: Numeric value
//           0 = Default (Pass-through)
//           1 = 32KHz
//           2 = 44.1KHz
//           3 = 88.2KHz
//           4 = 176.4KHz
//           5 = 48KHz
//           6 = 96KHz
//           7 = 192KHz

#define NV_REG_STR_RM_FORCE_ZCULL_RAM_FORMAT              "RMForceZCullRamFormat"
// Type: Dword
// Encoding: chip specific zcull ram format setting

#define NV_REG_STR_RM_FORCE_ZCULL_RAM_SIZE                "RMForceZCullRamSize"
// Type: Dword
// Encoding: numeric value
//           0 = default behavior
//           n - clamped by arch specific init code to legal values

#define NV_REG_STR_GLITCH_FREE_MCLK                      "GlitchFreeMClk"
// Type DWORD
// Control whether we should increase the vblank duration for a frame to eliminate the glitch
// while changing memory clock on an LVDS panel.
// Not present/1 = Increase hTotal to increase the vblank duration on LVDS panels.
// 0 = Do not increase hTotal

#define NV_REG_STR_RM_MAX_MCLK_FBSTOP_TIME               "RMMaxMclkFbstopTime"
// Type DWORD
// This registry key is used to override the maximum FBSTOP time which defined by different
// memory type (SDDR3 and others), and it's used for GF10x only.

#define NV_REG_STR_REPORT_MCLK_SWITCH_FB_STOP_TIME       "RMReportMclkSwitchFbStopTime"
#define NV_REG_STR_REPORT_MCLK_SWITCH_FB_STOP_TIME_YES                         1
#define NV_REG_STR_REPORT_MCLK_SWITCH_FB_STOP_TIME_NO                          0
#define NV_REG_STR_REPORT_MCLK_SWITCH_FB_STOP_TIME_DEFAULT NV_REG_STR_REPORT_MCLK_SWITCH_FB_STOP_TIME_NO
// Type DWORD
// This registry key is used to report FBSTOP time
// NV_REG_STR_FB_STOPTIME_REPORT_YES : FbstopTime will be reported back to RM from PMU
// NV_REG_STR_FB_STOPTIME_REPORT_NO  : FbstopTime will not be reported back to RM from PMU

#define NV_REG_STR_CLK_SWITCH_WITHIN_MARGIN              "RMClkSwitchWithinMargin"
#define NV_REG_STR_CLK_SWITCH_WITHIN_MARGIN_MCLK                    4:4
#define NV_REG_STR_CLK_SWITCH_WITHIN_MARGIN_MCLK_SKIP       (0x00000000)
#define NV_REG_STR_CLK_SWITCH_WITHIN_MARGIN_MCLK_FORCE      (0x00000001)
#define NV_REG_STR_CLK_SWITCH_WITHIN_MARGIN_MCLK_DEFAULT    (0x00000000)
// Type DWORD
// This registry key determines whether what to do with a request to program a
// clock domain if it is already running at or near the target frequency.
// Depending on the build, this registry key may apply to only certain chips
// families and/or clock domains listed here; otherwise settings are silently
// ignored.  The bit index matches NV2080_CTRL_CLK_DOMAIN.
// _SKIP  :  [default] RM does not program the clock domain if it is already at or near the target frequency.
// _FORCE :  RM programs the clock domain regardless of the target frequency.

#define NV_REG_STR_ENABLE_BRIGHTNESS_CONTROL             "EnableBrightnessControl"
// TYPE DWORD
// Not present/0 - Do not export brightness control API to control panel
// Now a flag word.
// Bit 0  = 1 - Export brightness control API to control panel and INT 10h interface.
#define NV_BRIGHTNESS_CONTROL_ENABLE                     0x01
// Bit 1  = 2 - Disable query VBIOS brightness scratch register on boot or resume.
// Ex: EnableBrightnessControl = 3 -> Enable Brightness Control, but do not query Scratch Reg.
#define NV_BRIGHTNESS_CONTROL_DIS_Q_VBIOS                0x02

#define NV_REG_STR_PANEL_PWM_FREQUENCY                  "PanelPWMFrequency"
// [Active only brightness control API activated]
// Type REG_DWORD
// Specifies PWM frequency to be used for all panels, in Hz.
// If not present or 0,
// => default PWM frequency defined by DAC_PWM_FREQUENCY is used.

#define NV_REG_STR_PANEL_PWM_DUTY_RANGE                 "PanelPWMDutyRange"
// Type REG_DWORD
// Specifies range of PWM duty cycle for all panels, in 0.1 percent.
// Bits [15:0] specifies minimum PWM duty cycle in 0.1 percent.
// Bits [31:16] specifies maximum PWM duty cycle in 0.1 percent.
// For example, 0x03e8012c means 30.0% to 100.0%.
// If not present or 0,
// => default PWM range is from 0.0% to 100.0%.

#define NV_REG_STR_PANEL_BRIGHTNESS_LIMITS              "PanelBrightnessLimits"
// [Active only brightness control API activated]
// Type REG_DWORD
// Specifies minimum and maximum brightness levels for all panels,
//   within range 0 (absolute minimum) to 255 (absolute maximum).
// Byte 0 specifies minimum brightness level;
// Byte 1 specifies maximum brightness level;
// Byte 2 is ignored;
// Byte 3 is ignored.
// If not present,
// or if either level is out of range,
// or if min. level > max. level,
// => default values DAC_MAX_BRIGHTNESS and DAC_MIN_BRIGHTNESS used.

#define NV_REG_STR_PANEL_SMOOTH_BRIGHTNESS_DEFAULT_ENABLE "SmoothBrightnessDefaultEnable"
// Type REG_DWORD
// Specifies the default state of the smooth brightness
// feature

#define NV_REG_STR_PANEL_SMOOTH_BRIGHTNESS_TRANSITION_TIME_UP_MS "SmoothBrightnessTransitionTimeUpMs"
// Type REG_DWORD
// Specifies the number of milliseconds that a smooth brightness
// transition that increases the brightness will take

#define NV_REG_STR_PANEL_SMOOTH_BRIGHTNESS_TRANSITION_TIME_DOWN_MS "SmoothBrightnessTransitionTimeDownMs"
// Type REG_DWORD
// Specifies the number of milliseconds that a smooth brightness
// transition that decreases the brightness will take


#define NV_REG_STR_PANEL_SMOOTH_BRIGHTNESS_STEP_INTERVAL_MS "SmoothBrightnessStepIntervalMs"
// Type REG_DWORD
// Specifies the number of milliseconds between smooth brightness
// updates



#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS                     "RMBrightnessControlFlags"
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_UNUSED              7:0
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_VBIOSRW             9:8
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_VBIOSRW_DEFAULT     (0x00000000)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_VBIOSRW_ENABLE      (0x00000001)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_VBIOSRW_DISABLE     (0x00000002)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_DXGKIFACE           11:10
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_DXGKIFACE_DEFAULT   (0x00000000)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_DXGKIFACE_ENABLE    (0x00000001)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_DXGKIFACE_DISABLE   (0x00000002)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_LEVELS              13:12
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_LEVELS_DEFAULT      (0x00000000)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_LEVELS_NVIF         (0x00000001)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_LEVELS_BCL          (0x00000002)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_PBI                 15:14
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_PBI_DEFAULT         (0x00000000)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_PBI_ENABLE          (0x00000001)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_PBI_DISABLE         (0x00000002)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_FORCE               17:16
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_FORCE_DEFAULT       (0x00000000)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_FORCE_RM            (0x00000001)
#define NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_FORCE_PMU           (0x00000002)

// TYPE DWORD
// NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_UNUSED:
// These bits were used on older branches, but not here. Use this define to
// keep the bits below in the same position as they were on older branches.
//
// NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_VBIOSRW:
// Enables or disables the reading/writing of VBIOS scratch registers. Note
// that this does NOT prevent clients from actually using the VBIOS to set
// brightness.
//
// NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_DXGKIFACE:
// Enables or disables DDI based brightness control on Vista and Win7.
// Note that even when enabled, conditions have to be met in order for DDI to
// be supported.
//
// SPECIAL NOTE:
// _DXGKIFACE and _PBI become mutually exclusive if one of the fields
// is set to the _ENABLE value (e.g. if _DXGKIFACE_ENABLE is set, then the
// _PBI field is completely ignored). If multiple _ENABLE values are set,
// the the priority goes from lowest to highest bit (_DXGKIFACE first, _PBI
// last).
//
// NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_LEVELS:
// Force the use of NVIF or _BCL for brightness levels.
//
// NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_PBI:
// Enables or disables PBI registers for set/get PWM duty cycle.  This is
// disabled by default for current GPUs, but may be enabled by default
// for future GPUs.
//
// NV_REG_STR_BRIGHTNESS_CONTROL_FLAGS_FORCE_RM:
// Force RM to set the PWM duty cycle.  Default PMU will play this role on
// chips >= Kepler, RM do that otherwise.


#define NV_REG_STR_RM_NON_COHERENT_USE_TC0_ONLY          "RMUseTc0NonCoherent"
// Type DWORD
// Encoding 0 --> allow non-coherent traffic to use TC other than TC0
//          1 --> only allow non-coherent traffic to use TC0
// Workarounds the incorrect TC/VC mapping for some systems with
// GPU connected to BR03
// default is 1 with BR03 on non-NVIDIA chipsets

#define NV_REG_STR_ENABLE_CTXT_SW_WAR "RMEnableHybridP"
// Type: DWORD
//       0=default (context sw WAR for NV46/4E disabled)
//       1=enable NV46/4E context sw WAR for ramchain problem by enabling hybrid patch (and force on hybrid)

#define NV_REG_STR_OVERRIDE_GPU_INIT      "OverrideGpuInit"
// Type: Binary
// Table of gpu init override entries.
// Three 32bit values per entry (12 bytes total): {index, and_mask, or_mask}

#ifdef NV_VERIF_FEATURES
#define NV_REG_STR_OVERRIDE_GPU_DEVINIT      "OverrideGpuDevinit"
// Type: Binary
// Table of gpu init override entries.
// Three 32bit values per entry (12 bytes total): {index, and_mask, or_mask}
#endif

// Type DWORD
// The DIV_BY value that RM should use when programming VPLL. This is primarily
// for emulation where they generated a fixed pll clk (effectively the two
// stages of VPLL are generating a fixed clk) and just divide by the DIV_BY
// value to generate the pclk. Note that the pdiv that's programmed into
// the VPLL regs is setup as 2^pdiv = DIV_BY value. So, the legal values for
// the reg key are 2^n where n is an integer s.t. n >= 0. If a non-power of 2
// is specified via this reg key, RM will round it to next highest power of 2.
#define NV_REG_STR_RM_HEAD_DCLK_MODE_PREFIX               "Head"
#define NV_REG_STR_RM_HEAD_DCLK_MODE_POSTFIX              "DClkMode"
#define NV_REG_STR_RM_HEAD_DCLK_MODE(head)                 NV_REG_STR_RM_HEAD_DCLK_MODE_PREFIX #head NV_REG_STR_RM_HEAD_DCLK_MODE_POSTFIX
#define NV_REG_STR_RM_HEAD0_DCLK_MODE                      NV_REG_STR_RM_HEAD_DCLK_MODE(0) // "Head0DClkMode"
#define NV_REG_STR_RM_HEAD1_DCLK_MODE                      NV_REG_STR_RM_HEAD_DCLK_MODE(1) // "Head1DClkMode"
#define NV_REG_STR_RM_HEAD2_DCLK_MODE                      NV_REG_STR_RM_HEAD_DCLK_MODE(2) // "Head2DClkMode"
#define NV_REG_STR_RM_HEAD3_DCLK_MODE                      NV_REG_STR_RM_HEAD_DCLK_MODE(3) // "Head3DClkMode"

#define NV_REG_STR_RM_HEAD_DCLK_MODE_BASE                 0:0
#define NV_REG_STR_RM_HEAD_DCLK_MODE_BASE_AUTO            0x00000000
#define NV_REG_STR_RM_HEAD_DCLK_MODE_BASE_ENABLE          0x00000001
#define NV_REG_STR_RM_HEAD_DCLK_MODE_OVLY                 1:1
#define NV_REG_STR_RM_HEAD_DCLK_MODE_OVLY_AUTO            0x00000000
#define NV_REG_STR_RM_HEAD_DCLK_MODE_OVLY_ENABLE          0x00000001
#define NV_REG_STR_RM_HEAD_DCLK_MODE_CURS                 2:2
#define NV_REG_STR_RM_HEAD_DCLK_MODE_CURS_AUTO            0x00000000
#define NV_REG_STR_RM_HEAD_DCLK_MODE_CURS_ENABLE          0x00000001
#define NV_REG_STR_RM_HEAD_DCLK_MODE_PIPE                 3:3
#define NV_REG_STR_RM_HEAD_DCLK_MODE_PIPE_AUTO            0x00000000
#define NV_REG_STR_RM_HEAD_DCLK_MODE_PIPE_ENABLE          0x00000001
#define NV_REG_STR_RM_HEAD_DCLK_MODE_RG                   4:4
#define NV_REG_STR_RM_HEAD_DCLK_MODE_RG_AUTO              0x00000000
#define NV_REG_STR_RM_HEAD_DCLK_MODE_RG_ENABLE            0x00000001
// Type DWORD
// Whether a particular block in dispclk domain needs to be run in AUTO
// or always ON mode.
// Note that although definitions of reg key match the ref manual
// (nv50/dev_disp.ref), it's merely a debugging convenience. RM will always
// do the necessary translations.


#define NV_REG_STR_RM_PCLK_MODE                           "PClkMode"
#define NV_REG_STR_RM_PCLK_MODE_RG(i)                     (0+i):(0+i)
#define NV_REG_STR_RM_PCLK_MODE_RG_AUTO                   0x00000000
#define NV_REG_STR_RM_PCLK_MODE_RG_ENABLE                 0x00000001
#define NV_REG_STR_RM_PCLK_MODE_SF(i)                     (8+i):(8+i)
#define NV_REG_STR_RM_PCLK_MODE_SF_AUTO                   0x00000000
#define NV_REG_STR_RM_PCLK_MODE_SF_ENABLE                 0x00000001
#define NV_REG_STR_RM_PCLK_MODE_DAC(i)                    (16+i):(16+i)
#define NV_REG_STR_RM_PCLK_MODE_DAC_AUTO                  0x00000000
#define NV_REG_STR_RM_PCLK_MODE_DAC_ENABLE                0x00000001
#define NV_REG_STR_RM_PCLK_MODE_SOR(i)                    (20+i):(20+i)
#define NV_REG_STR_RM_PCLK_MODE_SOR_AUTO                  0x00000000
#define NV_REG_STR_RM_PCLK_MODE_SOR_ENABLE                0x00000001
#define NV_REG_STR_RM_PCLK_MODE_PIOR(i)                   (24+i):(24+i)
#define NV_REG_STR_RM_PCLK_MODE_PIOR_AUTO                 0x00000000
#define NV_REG_STR_RM_PCLK_MODE_PIOR_ENABLE               0x00000001
// Type DWORD
// Whether a particular block in PCLK domain needs to be run in AUTO
// or always ON mode.
// Note that although definitions of reg key match the ref manual
// (nv50/dev_disp.ref), it's merely a debugging convenience. RM will always
// do the necessary translations.

#define NV_REG_STR_RM_ENABLE_FRAC_DIVIDE                 "RmEnableFracDivide"
// Type DWORD
// Bitmask of PLLs to enable fractional divide (divide by 2) functionality
// for those PLLs that support it (and is not the default).

#define NV_REG_STR_RM_DISABLE_FRAC_DIVIDE                "RmDisableFracDivide"
// Type DWORD
// Bitmask of PLLs to disable fractional divide (divide by 2) functionality
// for those PLLs that support it (and is not the default).

#define NV_REG_STR_RM_FRAC_DIVIDE_VPLL                    0x00000010

#define NV_REG_STR_RM_ENABLE_LINEAR_DIVIDE                "RmEnableLinearDivide"
// Type DWORD
// Bitmask of PLLs to enable linear divide functionality
// for those PLLs that support it (and is not the default).

#define NV_REG_STR_RM_DISABLE_LINEAR_DIVIDE               "RmDisableLinearDivide"
// Type DWORD
// Bitmask of PLLs to disable linear divide functionality
// for those PLLs that support it (and is not the default).

#define NV_REG_STR_RM_LINEAR_DIVIDE_HPLL                  0x00000001
#define NV_REG_STR_RM_LINEAR_DIVIDE_MPLL                  0x00000002
#define NV_REG_STR_RM_LINEAR_DIVIDE_NVPLL                 0x00000004
#define NV_REG_STR_RM_LINEAR_DIVIDE_SPPLL                 0x00000008
#define NV_REG_STR_RM_LINEAR_DIVIDE_VPLL                  0x00000010
#define NV_REG_STR_RM_LINEAR_DIVIDE_VPSPLL                0x00000020

#define NV_REG_STR_RM_DISP_INTR_DURING_SHTDWN             "IntrDuringShtDwn"
// Type DWORD
// When set to a non-zero value tells RM to not tell hw to disable supervisor
// intrs during shutdown and also handle those intrs during core channel dealloc
// if the intrs are found pending at that time.

#define NV_REG_STR_RM_SKIP_SW_STATE_ERR_CHECKS            "SkipSwStateErrChecks"
// Type DWORD
// When set to a non-zero value tells RM to skip the state err checks supplied
// by arch team. Default is 0 which means state err checks won't be skipped.

#define NV_REG_STR_RM_PD_PIORS_FOR_MODESET                "PDPiorsForModeset"
// Type DWORD
// When set to a non-zero value, tells RM to PD PIORs during modeset if
// required.
// The default behaviour is:
// 1. Real system: PDPiorsForModeset = 1 (effectively)
// 2. Verif      : PDPiorsForModeset = 0

#define NV_REG_STR_RM_SYNC_RG_DIVS                       "syncRgDivs"
// Type DWORD
// A non-zero value will make RM try to use the same RG div on both heads
// when determining the VPLL values and accompanying dividers to program
// Does not apply to Pascal and up

#define NV_REG_STR_RM_ALLOW_ANY_SCAN_LOCK_PIN_FOR_FLIP_LOCK "AllowAnyScanLockPinForFlipLock"
// Type DWORD
// A non-zero value will make RM allow any scan lock pin to be used when flip
// locking is enabled.

#define NV_REG_STR_RM_LEAVE_DBG_MODE_ON_AT_UNFR_UPD "LeaveDbgModeOnAtUnfrUpd"
// Type DWORD
// A non-zero value will make RM leave debug mode on when exiting from vbios
// release intr if the vbios did an unfriendly operation.

#define NV_REG_OVERRIDE_VBIOS                           "vbios"
// Type: Binary
// Used to override the system memory copy of the VBIOS
// Put the entire 64K VBIOS in this registry key in binary format.

#define NV_REG_VBIOS_SOURCE                             "vbiosSource"
// Type: Binary
// Used as voltile registry entry only.  Saves the original VBIOS source.

#define NV_REG_OVERRIDE_VBIOS_GROUP_INIT                "vbios000"
#define NV_REG_OVERRIDE_VBIOS_GROUP_INDEX               7
#define NV_REG_OVERRIDE_VBIOS_GROUP_COUNT               9
// Type: Binary
// When VBIOS size is over 65531 bytes, it just can't be correctly loaded by
// one registry key by SetupApi SetupGetBinaryField() in INF. In the case,
// separating vbios into registry keys, each size must be less than 65331 bytes
// VBIOS binary = vbios + [vbios000 + vbios001 + ...]
// Bug 912315
// _INDEX:  Offset of index character
// _COUNT:  Count of vbios00x

#define NV_REG_STR_RM_VBIOS_FROM_ROM                    "VbiosFromROM"
// Type: DWORD
// A non-zero value will cause the RM to ignore the vbios image from
// instmem and read it directly from ROM
// Temp WAR for bug 169275

// OnDemand VBlank control
#define NV_REG_STR_RM_ONDEMAND_VBLANK                       "RMOnDemandVBlank"
// Type DWORD
// Encoding:
#define NV_REG_STR_RM_ONDEMAND_VBLANK_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_ONDEMAND_VBLANK_ENABLED               (0x00000001)
#define NV_REG_STR_RM_ONDEMAND_VBLANK_DISABLED              (0xffffffff)

// External Perf Control
#define NV_REG_STR_RM_EXTPERFCONTROL                        "RMExtPerfControl"
// Type DWORD
// Encoding:
#define NV_REG_STR_RM_EXTPERFCONTROL_DISABLED               (0x00000000)    // Disabled
#define NV_REG_STR_RM_EXTPERFCONTROL_DEFAULT                (0xFFFFFFFF)    // Use the current system values
#define NV_REG_STR_RM_EXTPERFCONTROL_LEVEL                           5:0    // Value not filtered is a target perf_level+1
#define NV_REG_STR_RM_EXTPERFCONTROL_CAP                             7:6    // Controls if p-state change waits for VBLANK
#define NV_REG_STR_RM_EXTPERFCONTROL_CAP_DEFAULT            (0x00000000)    // - default GPU specific behavior
#define NV_REG_STR_RM_EXTPERFCONTROL_CAP_FORCE_SMOOTH       (0x00000001)    // - ext. perf control p-state change always waits for VBLANK
#define NV_REG_STR_RM_EXTPERFCONTROL_CAP_FORCE_MAY_GLITCH   (0x00000002)    // - ext. perf control p-state change doesn't wait for VBLANK
#define NV_REG_STR_RM_EXTPERFCONTROL_CAP_DEF_2              (0x00000003)    // - default GPU specific behavior (use _DEFAULT instead)
#define NV_REG_STR_RM_EXTPERFCONTROL_POWER                          15:8    // Value not filtered is an MXM input power value
                                                                            // Note that we choose the lower of the above
#define NV_REG_STR_RM_EXTPERFCONTROL_DEBOUNCE_PERIOD_MS            23:16    // Min Period in milliseconds for stable GPIO value
#define NV_REG_STR_RM_EXTPERFCONTROL_SLI_LEVEL                     31:24    // Value not filtered is a target perf_level+1

// Power Supply Capacity Control
#define NV_REG_STR_RM_PWRSPLYCAP                            "RMPowerSupplyCapacity"
// Type DWORD
// Encoding:
#define NV_REG_STR_RM_PWRSPLYCAP_DISABLED                   (0x00000000)    // Disabled
#define NV_REG_STR_RM_PWRSPLYCAP_DEFAULT                    (0xFFFFFFFF)    // Use the current system values
#define NV_REG_STR_RM_PWRSPLYCAP_LEVEL_MASK                 (0x000000FF)    // Value not filtered is a target perf level. 1's based
#define NV_REG_STR_RM_PWRSPLYCAP_POWER_MASK                 (0x0000FF00)    // Value not filtered is an MXM input power value
                                                                            // Note that we choose the lower of the above
#define NV_REG_STR_RM_PWRSPLYCAP_DEBOUNCE_PERIOD_MASK       (0x00FF0000)    // Min Period in seconds for stable gpio value

// Power Supply Capacity Enable
#define NV_REG_STR_RM_PWRSPLYCAPEN                          "RMEnablePowerSupplyCapacity"
// Type DWORD
// Encoding:
#define NV_REG_STR_RM_PWRSPLYCAPEN_DEFAULT                  (0x00000001)    // Enabled for G80+
#define NV_REG_STR_RM_PWRSPLYCAPEN_FALSE                    (0x00000000)    // Disabled
#define NV_REG_STR_RM_PWRSPLYCAPEN_TRUE                     (0x00000001)    // Enabled

// ACPI Battery Event disable
#define NV_REG_STR_RM_SKIP_ACPI_BATT_PERF_CAP               "RMSkipACPIBattCap"
// Type DWORD
// Encoding:
#define NV_REG_STR_RM_SKIP_ACPI_BATT_PERF_CAP_YES           (0x00000001)    // Skip perf cap
#define NV_REG_STR_RM_SKIP_ACPI_BATT_PERF_CAP_NO            (0x00000000)    // Default

#ifdef NV_VERIF_FEATURES

// skip BAR2 test, need this for VPR testing
#define NV_REG_STR_RM_SKIP_BAR2_TEST                        "RMSkipBar2Test"
// Type DWORD
// Encoding: a non-zero value will tell us to skip running the BAR2 test

// Allows BAR2 to use the GPU's mmu for sysmem surfaces instead of directly accessing sysmem using
// cpu pointers. Available only on verif environments
#define NV_REG_STR_RM_BAR2_SYSMEM                           "RMBar2SysmemEnable"
// Type DWORD
// Encoding: see below
//          SYSMEM_ENABLE_FALSE: (Default) BAR2 sysmem surfaces will use direct cpu mapping of sysmem
//          SYSMEM_ENABLE_TRUE : BAR2 sysmem surfaces will use bar2 page tables
#define NV_REG_STR_RM_BAR2_SYSMEM_ENABLE                    1:0
#define NV_REG_STR_RM_BAR2_SYSMEM_ENABLE_FALSE              (0x00000000)
#define NV_REG_STR_RM_BAR2_SYSMEM_ENABLE_TRUE               (0x00000001)
#endif // NV_VERIF_FEATURES

//
// Allow instance memory overrides.  Some fields are chip specific
// and may not apply to all chips.  Since there are many fields,
// this is spread across several DWORD registry keys.
//
// The registry keys are defined in nvrm_registry.
// Specific overrrides are defined here.
//
// Type DWORD
// Encoding:
//    DEFAULT   RM determines
//    COH       Coherent system memory
//    NCOH      Non-coherent system memory
//    VID       Local video memory
//
#define NV_REG_STR_RM_INST_LOC_ALL_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_INST_LOC_ALL_COH                      (0x55555555)
#define NV_REG_STR_RM_INST_LOC_ALL_NCOH                     (0xAAAAAAAA)
#define NV_REG_STR_RM_INST_LOC_ALL_VID                      (0xFFFFFFFF)

#define NV_REG_STR_RM_INST_LOC_PTE                          1:0             // Context PTE
#define NV_REG_STR_RM_INST_LOC_PTE_DEFAULT                  NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_PTE_COH                      NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_PTE_NCOH                     NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_PTE_VID                      NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_BAR_PTE                      3:2             // BAR PTE
#define NV_REG_STR_RM_INST_LOC_BAR_PTE_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_BAR_PTE_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_BAR_PTE_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_BAR_PTE_VID                  NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_INSTBLK                      5:4             // Instance block
#define NV_REG_STR_RM_INST_LOC_INSTBLK_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_INSTBLK_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_INSTBLK_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_INSTBLK_VID                  NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_RAMFC                        7:6             // RAMFC save area
#define NV_REG_STR_RM_INST_LOC_RAMFC_DEFAULT                NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_RAMFC_COH                    NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_RAMFC_NCOH                   NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_RAMFC_VID                    NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_CACHE1                       9:8             // CACHE1 save area
#define NV_REG_STR_RM_INST_LOC_CACHE1_DEFAULT               NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_CACHE1_COH                   NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_CACHE1_NCOH                  NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_CACHE1_VID                   NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_GRCTX                        11:10           // Graphics contxt
#define NV_REG_STR_RM_INST_LOC_GRCTX_DEFAULT                NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_GRCTX_COH                    NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_GRCTX_NCOH                   NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_GRCTX_VID                    NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_RUNLIST                      13:12           // Runlist
#define NV_REG_STR_RM_INST_LOC_RUNLIST_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_RUNLIST_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_RUNLIST_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_RUNLIST_VID                  NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_DISPLAY                      15:14           // Display
#define NV_REG_STR_RM_INST_LOC_DISPLAY_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_DISPLAY_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_DISPLAY_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_DISPLAY_VID                  NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_USERD                        17:16           // USERD
#define NV_REG_STR_RM_INST_LOC_USERD_DEFAULT                NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_USERD_COH                    NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_USERD_NCOH                   NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_USERD_VID                    NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_EVENTBUFFER                  19:18           // EVENTBUFFER
#define NV_REG_STR_RM_INST_LOC_EVENTBUFFER_DEFAULT          NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_EVENTBUFFER_COH              NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_EVENTBUFFER_NCOH             NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_EVENTBUFFER_VID              NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_UNUSED                       21:20           // UNUSED
#define NV_REG_STR_RM_INST_LOC_UNUSED_DEFAULT               NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_CIPHER_XCHG                  23:22           // Cipher exchange memory resources
#define NV_REG_STR_RM_INST_LOC_CIPHER_XCHG_DEFAULT          NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_CIPHER_XCHG_COH              NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_CIPHER_XCHG_NCOH             NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_CIPHER_XCHG_VID              NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_PDE                          25:24           // Context PDE
#define NV_REG_STR_RM_INST_LOC_PDE_DEFAULT                  NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_PDE_COH                      NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_PDE_NCOH                     NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_PDE_VID                      NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_BAR_PDE                      27:26           // BAR PDE
#define NV_REG_STR_RM_INST_LOC_BAR_PDE_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_BAR_PDE_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_BAR_PDE_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_BAR_PDE_VID                  NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_PMUINST                      29:28           // PMUINST
#define NV_REG_STR_RM_INST_LOC_PMUINST_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_PMUINST_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_PMUINST_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_PMUINST_VID                  NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_PMUUCODE                     31:30           // PMU UCODE
#define NV_REG_STR_RM_INST_LOC_PMUUCODE_DEFAULT             NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_PMUUCODE_COH                 NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_PMUUCODE_NCOH                NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_PMUUCODE_VID                 NV_REG_STR_RM_INST_LOC_VID

#define NV_REG_STR_RM_INST_LOC_2_COMPTAG_STORE                   1:0           // Compbit backing store
#define NV_REG_STR_RM_INST_LOC_2_COMPTAG_STORE_DEFAULT           NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_COMPTAG_STORE_COH               NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_COMPTAG_STORE_NCOH              NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_COMPTAG_STORE_VID               NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_ATTR_CB                         3:2           // Attribute Circular Buffer
#define NV_REG_STR_RM_INST_LOC_2_ATTR_CB_DEFAULT                 NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_ATTR_CB_COH                     NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_ATTR_CB_NCOH                    NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_ATTR_CB_VID                     NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_BUNDLE_CB                       5:4           // Bundle Circular Buffer
#define NV_REG_STR_RM_INST_LOC_2_BUNDLE_CB_DEFAULT               NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_BUNDLE_CB_COH                   NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_BUNDLE_CB_NCOH                  NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_BUNDLE_CB_VID                   NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_PAGEPOOL                        7:6           // Pagepool Buffer
#define NV_REG_STR_RM_INST_LOC_2_PAGEPOOL_DEFAULT                NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_PAGEPOOL_COH                    NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_PAGEPOOL_NCOH                   NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_PAGEPOOL_VID                    NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_GOLD_CTX                        9:8           // Golden Context Image
#define NV_REG_STR_RM_INST_LOC_2_GOLD_CTX_DEFAULT                NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_GOLD_CTX_COH                    NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_GOLD_CTX_NCOH                   NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_GOLD_CTX_VID                    NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_BAR_CTX                         11:10         // Bar context aperture
#define NV_REG_STR_RM_INST_LOC_2_BAR_CTX_DEFAULT                 NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_BAR_CTX_COH                     NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_BAR_CTX_NCOH                    NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_BAR_CTX_VID                     NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_PMU_PWR_RAIL_VIDEO_PRED_BUFFER_SURFACE            13:12 // Power Rail Video Prediction
#define NV_REG_STR_RM_INST_LOC_2_PMU_PWR_RAIL_VIDEO_PRED_BUFFER_SURFACE_DEFAULT    NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_PMU_PWR_RAIL_VIDEO_PRED_BUFFER_SURFACE_COH        NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_PMU_PWR_RAIL_VIDEO_PRED_BUFFER_SURFACE_NCOH       NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_PMU_PWR_RAIL_VIDEO_PRED_BUFFER_SURFACE_VID        NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_CTX_PATCH                       15:14         // context patch
#define NV_REG_STR_RM_INST_LOC_2_CTX_PATCH_DEFAULT               NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_CTX_PATCH_COH                   NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_CTX_PATCH_NCOH                  NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_CTX_PATCH_VID                   NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_MMU_READ                        17:16         // MMU Read
#define NV_REG_STR_RM_INST_LOC_2_MMU_READ_DEFAULT                NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_MMU_READ_COH                    NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_MMU_READ_NCOH                   NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_MMU_READ_VID                    NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_MMU_WRITE                       19:18         // MMU Write
#define NV_REG_STR_RM_INST_LOC_2_MMU_WRITE_DEFAULT               NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_MMU_WRITE_COH                   NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_MMU_WRITE_NCOH                  NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_MMU_WRITE_VID                   NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_UNUSED                          21:20         // Unused
#define NV_REG_STR_RM_INST_LOC_2_ZCULLCTX                        23:22         // zcull context buffer
#define NV_REG_STR_RM_INST_LOC_2_ZCULLCTX_DEFAULT                NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_ZCULLCTX_COH                    NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_ZCULLCTX_NCOH                   NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_ZCULLCTX_VID                    NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_PMCTX                           25:24         // PM context buffer
#define NV_REG_STR_RM_INST_LOC_2_PMCTX_DEFAULT                   NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_PMCTX_COH                       NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_PMCTX_NCOH                      NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_PMCTX_VID                       NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_DPUDBG                          27:26         // DPU Debug/Falctrace Buffer
#define NV_REG_STR_RM_INST_LOC_2_DPUDBG_DEFAULT                  NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_DPUDBG_COH                      NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_DPUDBG_NCOH                     NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_DPUDBG_VID                      NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_PMUPG                           29:28         // PMU PG buffer
#define NV_REG_STR_RM_INST_LOC_2_PMUPG_DEFAULT                   NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_PMUPG_COH                       NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_PMUPG_NCOH                      NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_PMUPG_VID                       NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_2_PMU_LOGGER                      31:30
#define NV_REG_STR_RM_INST_LOC_2_PMU_LOGGER_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_2_PMU_LOGGER_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_2_PMU_LOGGER_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_2_PMU_LOGGER_VID                  NV_REG_STR_RM_INST_LOC_VID

#define NV_REG_STR_RM_INST_LOC_3_PG_LOG_SURFACE               1:0             // PG log surface
#define NV_REG_STR_RM_INST_LOC_3_PG_LOG_SURFACE_DEFAULT       NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_PG_LOG_SURFACE_COH           NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_PG_LOG_SURFACE_NCOH          NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_PG_LOG_SURFACE_VID           NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_PREEMPT_BUFFER               3:2             // Preemption buffer
#define NV_REG_STR_RM_INST_LOC_3_PREEMPT_BUFFER_DEFAULT       NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_PREEMPT_BUFFER_COH           NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_PREEMPT_BUFFER_NCOH          NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_PREEMPT_BUFFER_VID           NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_GFXP_BETACB_BUFFER           5:4             // GFXP BetaCB buffer
#define NV_REG_STR_RM_INST_LOC_3_GFXP_BETACB_BUFFER_DEFAULT   NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_GFXP_BETACB_BUFFER_COH       NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_GFXP_BETACB_BUFFER_NCOH      NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_GFXP_BETACB_BUFFER_VID       NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_GFXP_PAGEPOOL_BUFFER         7:6             // GFXP Pagepool buffer
#define NV_REG_STR_RM_INST_LOC_3_GFXP_PAGEPOOL_BUFFER_DEFAULT NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_GFXP_PAGEPOOL_BUFFER_COH     NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_GFXP_PAGEPOOL_BUFFER_NCOH    NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_GFXP_PAGEPOOL_BUFFER_VID     NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_BSI_IMAGE                    9:8             // BSI RAM image
#define NV_REG_STR_RM_INST_LOC_3_BSI_IMAGE_DEFAULT            NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_BSI_IMAGE_COH                NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_BSI_IMAGE_NCOH               NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_BSI_IMAGE_VID                NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_PRIV_ACCESS_MAP              11:10           // Priv whitelist buffer
#define NV_REG_STR_RM_INST_LOC_3_PRIV_ACCESS_MAP_DEFAULT      NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_PRIV_ACCESS_MAP_COH          NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_PRIV_ACCESS_MAP_NCOH         NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_PRIV_ACCESS_MAP_VID          NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_SEC2DBG                      13:12           // SEC2 Debug/Falctrace Buffer
#define NV_REG_STR_RM_INST_LOC_3_SEC2DBG_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_SEC2DBG_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_SEC2DBG_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_SEC2DBG_VID                  NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_FECS_UCODE                   15:14           // FECS UCODE
#define NV_REG_STR_RM_INST_LOC_3_FECS_UCODE_DEFAULT           NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_FECS_UCODE_COH               NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_FECS_UCODE_NCOH              NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_FECS_UCODE_VID               NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_GFXP_SPILL_BUFFER            17:16           // GFXP Pagepool buffer
#define NV_REG_STR_RM_INST_LOC_3_GFXP_SPILL_BUFFER_DEFAULT    NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_GFXP_SPILL_BUFFER_COH        NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_GFXP_SPILL_BUFFER_NCOH       NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_GFXP_SPILL_BUFFER_VID        NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_UVM_FAULT_BUFFER_NONREPLAYABLE            19:18           // UVM Non-Replayable fault buffer
#define NV_REG_STR_RM_INST_LOC_3_UVM_FAULT_BUFFER_NONREPLAYABLE_DEFAULT    NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_UVM_FAULT_BUFFER_NONREPLAYABLE_COH        NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_UVM_FAULT_BUFFER_NONREPLAYABLE_NCOH       NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_UVM_FAULT_BUFFER_NONREPLAYABLE_VID        NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_BAR_SCRATCH_PAGE             21:20           // BAR scratch pages
#define NV_REG_STR_RM_INST_LOC_3_BAR_SCRATCH_PAGE_DEFAULT     NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_BAR_SCRATCH_PAGE_COH         NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_BAR_SCRATCH_PAGE_NCOH        NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_BAR_SCRATCH_PAGE_VID         NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_FLCNINST                     23:22           // FLCNINST
#define NV_REG_STR_RM_INST_LOC_3_FLCNINST_DEFAULT             NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_FLCNINST_COH                 NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_FLCNINST_NCOH                NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_FLCNINST_VID                 NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_RTVCB_BUFFER                 25:24           // RTVCB buffer
#define NV_REG_STR_RM_INST_LOC_3_RTVCB_BUFFER_DEFAULT         NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_RTVCB_BUFFER_COH             NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_RTVCB_BUFFER_NCOH            NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_RTVCB_BUFFER_VID             NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_GFXP_RTVCB_BUFFER            27:26           // GFXP RTVCB buffer
#define NV_REG_STR_RM_INST_LOC_3_GFXP_RTVCB_BUFFER_DEFAULT    NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_GFXP_RTVCB_BUFFER_COH        NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_GFXP_RTVCB_BUFFER_NCOH       NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_GFXP_RTVCB_BUFFER_VID        NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_FAULT_METHOD_BUFFER          29:28           // Fault method buffer
#define NV_REG_STR_RM_INST_LOC_3_FAULT_METHOD_BUFFER_DEFAULT  NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_FAULT_METHOD_BUFFER_COH      NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_FAULT_METHOD_BUFFER_NCOH     NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_FAULT_METHOD_BUFFER_VID      NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_3_PMU_DPU_DMA                  31:30           // PMU/DPU DMA transfers
#define NV_REG_STR_RM_INST_LOC_3_PMU_DPU_DMA_DEFAULT          NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_3_PMU_DPU_DMA_COH              NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_3_PMU_DPU_DMA_NCOH             NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_3_PMU_DPU_DMA_VID              NV_REG_STR_RM_INST_LOC_VID

#define NV_REG_STR_RM_INST_LOC_4_DISP_SC                      1:0             // Display state cache buffer
#define NV_REG_STR_RM_INST_LOC_4_DISP_SC_DEFAULT              NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_DISP_SC_COH                  NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_DISP_SC_NCOH                 NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_DISP_SC_VID                  NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_4_CHANNEL_PUSHBUFFER           3:2             // FIFO channel push buffer
#define NV_REG_STR_RM_INST_LOC_4_CHANNEL_PUSHBUFFER_DEFAULT   NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_CHANNEL_PUSHBUFFER_COH       NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_CHANNEL_PUSHBUFFER_NCOH      NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_CHANNEL_PUSHBUFFER_VID       NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_4_FW_SEC_LIC_COMMAND           5:4             // Firmware security license command
#define NV_REG_STR_RM_INST_LOC_4_FW_SEC_LIC_COMMAND_DEFAULT   NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_FW_SEC_LIC_COMMAND_COH       NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_FW_SEC_LIC_COMMAND_NCOH      NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_FW_SEC_LIC_COMMAND_VID       NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_4_VRDS                         7:6             // VBIOS runtime data security
#define NV_REG_STR_RM_INST_LOC_4_VRDS_DEFAULT                 NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_VRDS_COH                     NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_VRDS_NCOH                    NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_VRDS_VID                     NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_4_FLCN_UCODE_BUFFERS           9:8             // Falcon uCode buffers
#define NV_REG_STR_RM_INST_LOC_4_FLCN_UCODE_BUFFERS_DEFAULT   NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_FLCN_UCODE_BUFFERS_COH       NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_FLCN_UCODE_BUFFERS_NCOH      NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_FLCN_UCODE_BUFFERS_VID       NV_REG_STR_RM_INST_LOC_VID
#define NV_REG_STR_RM_INST_LOC_4_UVM_FAULT_BUFFER_REPLAYABLE            11:10           // UVM Replayable fault buffer
#define NV_REG_STR_RM_INST_LOC_4_UVM_FAULT_BUFFER_REPLAYABLE_DEFAULT    NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_UVM_FAULT_BUFFER_REPLAYABLE_COH        NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_UVM_FAULT_BUFFER_REPLAYABLE_NCOH       NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_UVM_FAULT_BUFFER_REPLAYABLE_VID        NV_REG_STR_RM_INST_LOC_VID

//
// Separately define instance block location of BARs. Default Setting
// reverts to NV_REG_STR_RM_INST_LOC_INSTBLK
//
#define NV_REG_STR_RM_INST_LOC_4_BAR                          13:12             // BAR Bind location
#define NV_REG_STR_RM_INST_LOC_4_BAR_DEFAULT                  NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_BAR_COH                      NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_BAR_NCOH                     NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_BAR_VID                      NV_REG_STR_RM_INST_LOC_VID

//
// Separately define instance block location of async CEs. Default Setting
// reverts to NV_REG_STR_RM_INST_LOC_INSTBLK
//
#define NV_REG_STR_RM_INST_LOC_4_CE                           15:14             // Async CE Bind location
#define NV_REG_STR_RM_INST_LOC_4_CE_DEFAULT                   NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_CE_COH                       NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_CE_NCOH                      NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_CE_VID                       NV_REG_STR_RM_INST_LOC_VID

//
// Separately define instance block location of GR/GRCE. Default Setting
// reverts to NV_REG_STR_RM_INST_LOC_INSTBLK
//
#define NV_REG_STR_RM_INST_LOC_4_GR                           17:16             // GR/GRCE Bind location
#define NV_REG_STR_RM_INST_LOC_4_GR_DEFAULT                   NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_GR_COH                       NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_GR_NCOH                      NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_GR_VID                       NV_REG_STR_RM_INST_LOC_VID

//
// Separately define instance block location of VEs. Default Setting
// reverts to NV_REG_STR_RM_INST_LOC_INSTBLK
//
#define NV_REG_STR_RM_INST_LOC_4_FALCON                       19:18             // FALCON Bind location
#define NV_REG_STR_RM_INST_LOC_4_FALCON_DEFAULT               NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_FALCON_COH                   NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_FALCON_NCOH                  NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_FALCON_VID                   NV_REG_STR_RM_INST_LOC_VID

//
// Separately define instance block location of HWPM PMA. Default Setting
// reverts to NV_REG_STR_RM_INST_LOC_INSTBLK
//
#define NV_REG_STR_RM_INST_LOC_4_HWPM_PMA                     21:20             // HWPM PMA Bind location
#define NV_REG_STR_RM_INST_LOC_4_HWPM_PMA_DEFAULT             NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_HWPM_PMA_COH                 NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_HWPM_PMA_NCOH                NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_HWPM_PMA_VID                 NV_REG_STR_RM_INST_LOC_VID

//
// Separately define instance block location of HWPM PMA. Default Setting
// reverts to NV_REG_STR_RM_INST_LOC_INSTBLK
//
#define NV_REG_STR_RM_INST_LOC_4_FECS_EVENT_BUF               23:22             // FECS EVENT buffer location
#define NV_REG_STR_RM_INST_LOC_4_FECS_EVENT_BUF_DEFAULT       NV_REG_STR_RM_INST_LOC_DEFAULT
#define NV_REG_STR_RM_INST_LOC_4_FECS_EVENT_BUF_COH           NV_REG_STR_RM_INST_LOC_COH
#define NV_REG_STR_RM_INST_LOC_4_FECS_EVENT_BUF_NCOH          NV_REG_STR_RM_INST_LOC_NCOH
#define NV_REG_STR_RM_INST_LOC_4_FECS_EVENT_BUF_VID           NV_REG_STR_RM_INST_LOC_VID

#define NV_REG_STR_RM_INST_VPR                              "RMInstVPR"
// Type DWORD
// Encoding: takes effect for allocations in VIDEO memory
//    TRUE       Make allocation in protected region
//    FALSE      Make allocation in non-protected region (default)
//
#define NV_REG_STR_RM_INST_VPR_INSTBLK                      0:0             // Instance block
#define NV_REG_STR_RM_INST_VPR_INSTBLK_FALSE                (0x00000000)
#define NV_REG_STR_RM_INST_VPR_INSTBLK_TRUE                 (0x00000001)
#define NV_REG_STR_RM_INST_VPR_RAMFC                        1:1             // RAMFC save area
#define NV_REG_STR_RM_INST_VPR_RAMFC_FALSE                  (0x00000000)
#define NV_REG_STR_RM_INST_VPR_RAMFC_TRUE                   (0x00000001)
#define NV_REG_STR_RM_INST_VPR_RUNLIST                      2:2             // Runlist
#define NV_REG_STR_RM_INST_VPR_RUNLIST_FALSE                (0x00000000)
#define NV_REG_STR_RM_INST_VPR_RUNLIST_TRUE                 (0x00000001)
#define NV_REG_STR_RM_INST_VPR_MMU_READ                     3:3             // MMU Debug Read
#define NV_REG_STR_RM_INST_VPR_MMU_READ_FALSE               (0x00000000)
#define NV_REG_STR_RM_INST_VPR_MMU_READ_TRUE                (0x00000001)
#define NV_REG_STR_RM_INST_VPR_MMU_WRITE                    4:4             // MMU Debug Read
#define NV_REG_STR_RM_INST_VPR_MMU_WRITE_FALSE              (0x00000000)
#define NV_REG_STR_RM_INST_VPR_MMU_WRITE_TRUE               (0x00000001)

// Flag forced VM allocation to go from top-down except for bar1, bar2 mappings
#define NV_REG_STR_RM_VAS_REVERSE                           "RMVASReverse"
// Type DWORD
// Encoding:
#define NV_REG_STR_RM_VAS_REVERSE_DEFAULT                   (0x000000000)
#define NV_REG_STR_RM_VAS_REVERSE_ON                        (0x000000001)

//
// Restrict the VA range to be <= @ref VASPACE_SIZE_FERMI.
// Used in cases where some engines support 49 bit VA and some don't.
// Ignored if NVOS32_ALLOC_FLAGS_USE_BEGIN_END (DDMA_ALLOC_VASPACE_USE_RANGE)  or
// NVOS32_ALLOC_FLAGS_FIXED_ADDRESS_ALLOCATE (DMA_ALLOC_VASPACE_VA_FIXED) is set.
// Default: OFF (0x0)
// Type:    DWORD
//
#define NV_REG_STR_RM_RESTRICT_VA_RANGE                     "RMRestrictVARange"
#define NV_REG_STR_RM_RESTRICT_VA_RANGE_DEFAULT             (0x0)
#define NV_REG_STR_RM_RESTRICT_VA_RANGE_ON                  (0x1)

// Add a   regkey to skip RC on exceptions
#define NV_REG_STR_RM_SKIP_RC_ON_EXCEPTIONS                 "RMSkipRCOnExceptions"
#define NV_REG_STR_RM_SKIP_RC_ON_EXCEPTIONS_DEFAULT          (0x00000000)    // off
#define NV_REG_STR_RM_SKIP_RC_ON_EXCEPTIONS_ON               (0x00000001)    // on

//
// RM feature disablement override
// This control allows one to disable feature disablement, a mechanism
// implemented by the RM to control features not yet fully tested or
// working in early chip development.
// Typical users are emulation and silicon bringup teams.
//
#define NV_REG_STR_RM_DISABLE_FEATURE_DISABLEMENT                "RMDisableFeatureDisablement"
// Type DWORD
// Encoding: a non-zero value will disable feature disablement

#define NV_REG_STR_RM_BANDWIDTH_FEATURES                         "RMBandwidthFeature"

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DEPRECATED_0                 1:0

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_ISO_CRIT_ALWAYS              3:2
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_ISO_CRIT_ALWAYS_DEFAULT      (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_ISO_CRIT_ALWAYS_DISABLE      (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_ISO_CRIT_ALWAYS_ENABLE       (3)

//
// Scaler amortization reduces hubclk and dispclk requirements by allowing the
// fetch of the scaler's input line to be spread across an entire raster line
// time.  The feature is not supported (and should not be enabled) on chips
// prior to Orin.
//
// Note that if the reg key is used to disable scaler amortization, it will
// prevent RM from forcing the scaler to be enabled for non-scaled configs, and
// it will cause IMP to use legacy calculations for hubclk and dispclk, but it
// will not actually disable HW amortization on 2-TAP scaled configs.
//
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_SCALER_AMORTIZATION          5:4
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_SCALER_AMORTIZATION_DEFAULT  (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_SCALER_AMORTIZATION_DISABLE  (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_SCALER_AMORTIZATION_ENABLE   (3)

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DEPRECATED_2                 7:6

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DEPRECATED_3                 9:8

//
// Note: If precharge powerdown is enabled instead of ASR (which is expected on
// GM20X and later; see PDB_PROP_FB_USE_PRECHARGE_POWERDOWN_INSTEAD_OF_ASR_DEF),
// then the ASR feature control will control precharge powerdown.
//
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_ASR                          11:10
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_ASR_DEFAULT                  (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_ASR_DISABLE                  (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_ASR_ENABLE                   (3)

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DEPRECATED_4                 13:12

// FORCE_MIN_MEMPOOL must be disabled if DYNAMIC_MEMPOOL is disabled.
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DYNAMIC_MEMPOOL              15:14
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DYNAMIC_MEMPOOL_DEFAULT      (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DYNAMIC_MEMPOOL_DISABLE      (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DYNAMIC_MEMPOOL_ENABLE       (3)

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DEPRECATED_5                 17:16

// When enabling experimental IMP support during early chip bringup, you may
// also need to enable various related bandwidth feature flags such as STUTTER,
// DYNAMIC_MEMPOOL, LINE_BUFFERING, and MEMPOOL_COMPRESSION and disable others,
// such as FORCE_MIN_MEMPOOL.  When in doubt, ask an RM engineer.
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_IMP                          19:18
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_IMP_DEFAULT                  (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_IMP_DISABLE                  (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_IMP_ENABLE                   (3)

// Reserved in case we want to extend _FEATURES_IMP to include more properties.
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_RESERVED                     21:20

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DEPRECATED_6                 23:22

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DYNAMIC_DISP_CLK             25:24
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DYNAMIC_DISP_CLK_DEFAULT      (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DYNAMIC_DISP_CLK_DISABLE      (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DYNAMIC_DISP_CLK_ENABLE       (3)

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_DEPRECATED_7                 27:26

//
// The line buffering control is initially implemented for GF10X only.
//
// Note: Line buffering cannot be disabled on NvDisplay (this reg key will be
// ignored).
//
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_LINE_BUFFERING               29:28
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_LINE_BUFFERING_DEFAULT       (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_LINE_BUFFERING_DISABLE       (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_LINE_BUFFERING_ENABLE        (3)

//
// This control limits mempool allocation to the minimum number of blocks
// necessary to support latency and avoid underflow.  Line buffering and
// ASR/MSCG will be disabled, because those features require more than the
// minimum allocation.  Note also that some modes may become "not possible"
// as a result of line buffering being disabled, due to the increased bandwidth
// requirement.
//
// DYNAMIC_MEMPOOL must be enabled if FORCE_MIN_MEMPOOL is enabled.
//
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_FORCE_MIN_MEMPOOL            31:30
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_FORCE_MIN_MEMPOOL_DEFAULT    (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_FORCE_MIN_MEMPOOL_DISABLE    (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_FORCE_MIN_MEMPOOL_ENABLE     (3)

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2                  "RMBandwidthFeature2"

#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2_MEMPOOL_COMPRESSION          1:0
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2_MEMPOOL_COMPRESSION_DEFAULT  (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2_MEMPOOL_COMPRESSION_DISABLE  (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2_MEMPOOL_COMPRESSION_ENABLE   (3)

//
// With advanced and old fetch metering supported in HW, this regkey helps
// overriding the current mechanism with the other one.
// ENABLE:  Advanced fetch metering is enabled and will override if old fetch
//          fetch metering is enabled in HW by default.
// DISABLE: Advanced fetch metering is disabled if it is already enabled by
//          default in HW.
// Note: Currently in Ampere and later chips advanced fetch metering is enabled
// by default in HW and it may change in Orin.
//
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2_ADVANCED_FETCH_METERING          3:2
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2_ADVANCED_FETCH_METERING_DEFAULT  (0)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2_ADVANCED_FETCH_METERING_DISABLE  (1)
#define NV_REG_STR_RM_BANDWIDTH_FEATURES_2_ADVANCED_FETCH_METERING_ENABLE   (3)

#define NV_REG_STR_RM_GLITCHLESS_MODESET                    "RMGlitchlessModeset"
#define NV_REG_STR_RM_GLITCHLESS_MODESET_DEFAULT                        (0)
#define NV_REG_STR_RM_GLITCHLESS_MODESET_ALL_MODESETS                   (1)
#define NV_REG_STR_RM_GLITCHLESS_MODESET_CLIENT_CONTROL                 (2)
#define NV_REG_STR_RM_GLITCHLESS_MODESET_LEGACY                         (3)
#define NV_REG_STR_RM_GLITCHLESS_MODESET_LEGACY_BUT_REPORT_FEATURE      (4)
// Type DWORD
// 0 - Default (same as if the reg key had not been used).
// 1 - Performs a glitchless transition on all modesets where it is possible,
//     regardless of what the client requested.
// 2 - Performs a glitchless transition on all modesets where (1) glitchless
//     transition is possible, and (2) the client has requested a glitchless
//     transition.
// 3 - Does not perform modesets glitchlessly even if requested by the client;
//     CAP reports to the client that the feature is not available.
// 4 - Does not perform modesets glitchlessly even if requested by the client,
//     but the CAP reports to the client that the feature is available (for
//     debug only).
// Note: The above policies refer to extended cases of possible glitchless
// modesets, such as when scaling factors change, as requested in bug 1810907.
// Certain basic transition cases, such as enabling and disabling an overlay,
// will be glitchless, regardless of this policy setting.

#ifdef NV_MODS
// Type DWORD
// Reg key added for Mods requirement.
// Mods can override the perf limits, to include CLIENT_LOW* limits in the IMP query
// ex: When reg key is supplied with NV2080_CTRL_PERF_PERF_LIMIT_ID_ISMODEPOSSIBLE(0x47) the
// default value will be set. Value of NV2080_CTRL_PERF_PERF_LIMIT_ID* can be found in
// ctrl2080perf.h
// Mods argument: -imp_perf_limit_mask 0x47
//

// *** Functionality for this reg key is currently disabled in RM code
//      (per changes for bug 200633477). ***
#define NV_REG_STR_RM_IMP_PERF_LIMIT_MASK                   "RMImpPerfLimitMask"
#endif

#define NV_REG_STR_RM_POWER_FEATURES                        "RMPowerFeature"
// Type DWORD
// For elpg, blcg, fspg
//    0 : Keep the vbios default for all engines
//    1 : Disable for all engines
//    2 : Per unit/engine settings (Look at engine specific RegKeys below)
//    3 : Enable for all engines
// For elcg,
//    0 : Keep the vbios default for all engines i.e Feature ON
//    1 : feature off for all engines
//    2 : Per unit/engine settings (Look at engine specific RegKeys below)
//    3 : engine disabled for all engines
// for the rest of the features, the following convention applies
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
//
// BLCG: this uses 4 bits, where the bottom two bits decide
// if the feature needs to be on/off/default for all engines or engine specific
// Top two bits decide the level(STALL, IDLE, QUIESCENT) if on/default for all engines
//
#define NV_REG_STR_RM_POWER_FEATURES_SOFTWARE_SLOWDOWN           1:0
#define NV_REG_STR_RM_POWER_FEATURES_SOFTWARE_SLOWDOWN_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_SOFTWARE_SLOWDOWN_DISABLE   (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_PEAK_POWER_SLOWDOWN         3:2
#define NV_REG_STR_RM_POWER_FEATURES_PEAK_SLOWDOWN_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_PEAK_SLOWDOWN_DISABLE       (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_ELCG                        5:4
#define NV_REG_STR_RM_POWER_FEATURES_ELCG_DEFAULT                (0x00000000) // same as ELCG_ON
#define NV_REG_STR_RM_POWER_FEATURES_ELCG_DISABLE                (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_ELCG_PER_ENG                (0x00000002)
#define NV_REG_STR_RM_POWER_FEATURES_ELCG_ENABLE                 (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_ELPG                        7:6
#define NV_REG_STR_RM_POWER_FEATURES_ELPG_DEFAULT                (0x00000000) // same as ELPG_ON
#define NV_REG_STR_RM_POWER_FEATURES_ELPG_DISABLE                (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_ELPG_PER_ENG                (0x00000002)
#define NV_REG_STR_RM_POWER_FEATURES_ELPG_ENABLE                 (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_PCIE_DEEP_L1                9:8
#define NV_REG_STR_RM_POWER_FEATURES_PCIE_DEEP_L1_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_PCIE_DEEP_L1_DISABLE        (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_PCIE_DEEP_L1_ENABLE         (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_PCIE_CLKREQ                 11:10
#define NV_REG_STR_RM_POWER_FEATURES_PCIE_CLKREQ_DEFAULT         (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_PCIE_CLKREQ_DISABLE         (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_PCIE_CLKREQ_ENABLE          (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_DEEP_IDLE                   13:12
#define NV_REG_STR_RM_POWER_FEATURES_DEEP_IDLE_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_DEEP_IDLE_DISABLE           (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_DEEP_IDLE_ENABLE            (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_FB_ACPD                     15:14
#define NV_REG_STR_RM_POWER_FEATURES_FB_ACPD_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_FB_ACPD_DISABLE             (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_FB_ACPD_ENABLE              (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_DUAL_PIXEL                  17:16
#define NV_REG_STR_RM_POWER_FEATURES_DUAL_PIXEL_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_DUAL_PIXEL_DISABLE          (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_DUAL_PIXEL_ENABLE           (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_BLCG2                       21:18
#define NV_REG_STR_RM_POWER_FEATURES_BLCG2_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_BLCG2_DISABLE               (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_BLCG2_PER_ENG               (0x00000002)
#define NV_REG_STR_RM_POWER_FEATURES_BLCG2_ENABLE                (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_BLCG2_IDLE                  (0x00000004)
#define NV_REG_STR_RM_POWER_FEATURES_BLCG2_STALL                 (0x00000008)
#define NV_REG_STR_RM_POWER_FEATURES_BLCG2_QUIESCENT             (0x0000000C)
#define NV_REG_STR_RM_POWER_FEATURES_ADAPTIVE_POWER              23:22
#define NV_REG_STR_RM_POWER_FEATURES_ADAPTIVE_POWER_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_ADAPTIVE_POWER_DISABLE      (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_ADAPTIVE_POWER_MONITOR      (0x00000002) // same as OPSB_AELPG_MONITOR before. TODO - Remove MONITOR since 0x2 is reserved for PER_ENG.
#define NV_REG_STR_RM_POWER_FEATURES_ADAPTIVE_POWER_ENABLE       (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES__DEPRECATED                 25:24
#define NV_REG_STR_RM_POWER_FEATURES_PWR_RAIL_GATE               27:26
#define NV_REG_STR_RM_POWER_FEATURES_PWR_RAIL_GATE_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_PWR_RAIL_GATE_DISABLE       (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_PWR_RAIL_GATE_ENABLE        (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_PWR_RAIL_GATE_PREDICTIVE    29:28
#define NV_REG_STR_RM_POWER_FEATURES_PWR_RAIL_GATE_PREDICTIVE_DEFAULT  (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_PWR_RAIL_GATE_PREDICTIVE_DISABLE  (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_PWR_RAIL_GATE_PREDICTIVE_ENABLE   (0x00000003)
#define NV_REG_STR_RM_POWER_FEATURES_FSPG                        31:30
#define NV_REG_STR_RM_POWER_FEATURES_FSPG_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES_FSPG_DISABLE                (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES_FSPG_PER_ENG                (0x00000002)
#define NV_REG_STR_RM_POWER_FEATURES_FSPG_ENABLE                 (0x00000003)

#define NV_REG_STR_RM_POWER_FEATURES2                        "RMPowerFeature2"

// the following convention applies to _FLCG
//    0 : Keep default for all engines
//    1 : Disable FLCG for all engines
//    2 : Per unit/engine settings (Look at engine specific regkey FLCG)
//    3 : Enable  FLCG for all engines
#define NV_REG_STR_RM_POWER_FEATURES2_FLCG                          1:0
#define NV_REG_STR_RM_POWER_FEATURES2_FLCG_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_FLCG_DISABLE                  (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_FLCG_PER_ENG                  (0x00000002)
#define NV_REG_STR_RM_POWER_FEATURES2_FLCG_ENABLE                   (0x00000003)

//
// If _MSCG_SETTINGS_OWNER is set to _RM, RM will program the MSCG watermarks,
// and will control the enabling and disabling of MSCG for modeswitches and
// pstate transitions.  If it is set to _PMU, the PMU will control the enabling
// and disabling of MSCG for modeswitches and pstate transitions, and the PMU
// will program the watermarks using values provided by RM.
//
// _RM is the initial default; this is expected to change when _PMU support
// becomes available.
//
#define NV_REG_STR_RM_POWER_FEATURES2_MSCG_SETTINGS_OWNER           3:2
#define NV_REG_STR_RM_POWER_FEATURES2_MSCG_SETTINGS_OWNER_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_MSCG_SETTINGS_OWNER_RM        (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_MSCG_SETTINGS_OWNER_PMU       (0x00000002)

// the following convention applies to _OPERATION_MODE
//    0 : choose default GPU Operation mode
//    1 : Disable all GPU Operation modes - force power up of all GPU Operation Mode units after boot
//    2 : Enable GPU Operation mode as per mask - keep power gated after boot as per "RmGpuOperationMode" mask
#define NV_REG_STR_RM_POWER_FEATURES2_OPERATION_MODE                5:4
#define NV_REG_STR_RM_POWER_FEATURES2_OPERATION_MODE_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_OPERATION_MODE_DISABLE        (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_OPERATION_MODE_PER_MODE       (0x00000002)

// the following convention applies to _SLCG
//    0 : Keep default for all engines
//    1 : Disable SLCG for all engines
//    2 : Per unit/engine settings (Look at engine specific regkey SLCG)
//    3 : Enable  SLCG for all engines
#define NV_REG_STR_RM_POWER_FEATURES2_SLCG                          7:6
#define NV_REG_STR_RM_POWER_FEATURES2_SLCG_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_SLCG_DISABLE                  (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_SLCG_PER_ENG                  (0x00000002)
#define NV_REG_STR_RM_POWER_FEATURES2_SLCG_ENABLE                   (0x00000003)

// The following convention applies to _CLK_NDIV_SLIDING:
//    0 : Keep the vbios default
//    1 : Disable feature for all clock domains
//    2 : Per clock domain settings (Look at clock domain specific regkey below - NV_REG_STR_RM_CLK_NDIV_SLIDING)
//    3 : Enable for all clock domains
#define NV_REG_STR_RM_POWER_FEATURES2_CLK_NDIV_SLIDING              9:8
#define NV_REG_STR_RM_POWER_FEATURES2_CLK_NDIV_SLIDING_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_CLK_NDIV_SLIDING_DISABLE      (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_CLK_NDIV_SLIDING_PER_DOMAIN   (0x00000002)
#define NV_REG_STR_RM_POWER_FEATURES2_CLK_NDIV_SLIDING_ENABLE       (0x00000003)

// The following convention applies to _NVVDD_PSI:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_NVVDD_PSI                     11:10
#define NV_REG_STR_RM_POWER_FEATURES2_NVVDD_PSI_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_NVVDD_PSI_DISABLE             (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_NVVDD_PSI_ENABLE              (0x00000003)

// The following convention applies to GC6_ROMLESS:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_GC6_ROMLESS                   13:12
#define NV_REG_STR_RM_POWER_FEATURES2_GC6_ROMLESS_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_GC6_ROMLESS_DISABLE           (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_GC6_ROMLESS_ENABLE            (0x00000003)

// The following convention applies to GC6_ROM:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_GC6_ROM                       15:14
#define NV_REG_STR_RM_POWER_FEATURES2_GC6_ROM_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_GC6_ROM_DISABLE               (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_GC6_ROM_ENABLE                (0x00000003)

// The following convention applies to DIDLE-SSC:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_DIDLE_SSC                     17:16
#define NV_REG_STR_RM_POWER_FEATURES2_DIDLE_SSC_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_DIDLE_SSC_DISABLE             (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_DIDLE_SSC_ENABLE              (0x00000003)

//
// This flag overwrites all the other flags  while arming DIDLE-OS
// if it is disabled here, DI-OS will not be Entered. However if it enabled
// DI-OS will be only Entered, if all other Preconditions are met.
//
// The following convention applies to GC4:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_DIDLE_OS                      19:18
#define NV_REG_STR_RM_POWER_FEATURES2_DIDLE_OS_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_DIDLE_OS_DISABLE              (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_DIDLE_OS_ENABLE               (0x00000003)

//
// This flag overwrites all the other flags  while enabling L1 substates
// if it is disabled here, L1 Substates will not be Entered. However if it enabled
// L1 Substates will be only Entered, if root port supports it and enabled in VBIOS
//
// The following convention applies to L1 Substates:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_PCIE_L1_SUBSTATES             21:20
#define NV_REG_STR_RM_POWER_FEATURES2_PCIE_L1_SUBSTATES_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_PCIE_L1_SUBSTATES_DISABLE     (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_PCIE_L1_SUBSTATES_ENABLE      (0x00000003)

//
// The following convention applies to LPWR oneshot:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_LPWR_ONESHOT                  23:22
#define NV_REG_STR_RM_POWER_FEATURES2_LPWR_ONESHOT_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_LPWR_ONESHOT_DISABLE          (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_LPWR_ONESHOT_ENABLE           (0x00000003)

//
// The following convention applies to RPPG:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_RPPG                          25:24
#define NV_REG_STR_RM_POWER_FEATURES2_RPPG_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_RPPG_DISABLE                  (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_RPPG_ENABLE                   (0x00000003)

//
// The following convention applies to IST clock gating:
//    0 : Keep the IST gating enabled by default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_POWER_FEATURES2_IST_CG                         27:26
#define NV_REG_STR_RM_POWER_FEATURES2_IST_CG_DEFAULT                 (0x00000000)
#define NV_REG_STR_RM_POWER_FEATURES2_IST_CG_DISABLE                 (0x00000001)
#define NV_REG_STR_RM_POWER_FEATURES2_IST_CG_ENABLE                  (0x00000003)

#define NV_REG_STR_RM_LPWR_ARCH                                     "RMLpwrArch"
// Type DWORD
// For LPWR_ENG:
// 0 : by default, LPWR_ENG is enabled on Turing_and_above GPUs
// 1 : Disables LPWR_ENG. HW SM will run in PG_ENG mode.
//
// For idle snap debug:
// This feature sends debug message to RM whenever PMU sees idle snap.
// 0 : Default value for feature
// 1 : Disable
//
// For PPU threshold:
// 0 : Default value for the feature. PPU threshold will be activated only
//     for the exit triggered by engine holdoff.
// 1 : Do not activate PPU threshold for any exit.
// 3 : Activate PPU threshold for all exits.
//
// For HW wakeup in SW blocker, API optimization and external API optimization:
// 0 : Default value for feature
// 1 : Disable
// 3 : Enable
//
#define NV_REG_STR_RM_LPWR_ARCH_LPWR_ENG                            1:0
#define NV_REG_STR_RM_LPWR_ARCH_ENG_TYPE_DEFAULT                    (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_LPWR_ENG_DISABLE                    (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_LPWR_ENG_RESERVED                   (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_IDLE_SNAP_DBG                       3:2
#define NV_REG_STR_RM_LPWR_ARCH_IDLE_SNAP_DBG_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_IDLE_SNAP_DBG_DISABLE               (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_IDLE_SNAP_DBG_RESERVED              (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_PPU_THRESHOLD                       5:4
#define NV_REG_STR_RM_LPWR_ARCH_PPU_THRESHOLD_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_PPU_THRESHOLD_NEVER                 (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_PPU_THRESHOLD_ALWAYS                (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_LPWR_CTRL_HW_DISABLE                7:6
#define NV_REG_STR_RM_LPWR_ARCH_LPWR_CTRL_HW_DISABLE_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_LPWR_CTRL_HW_DISABLE_DISABLE        (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_LPWR_CTRL_HW_DISABLE_ENABLE         (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_API_OPTIMIZATION                    9:8
#define NV_REG_STR_RM_LPWR_ARCH_API_OPTIMIZATION_DEFAULT            (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_API_OPTIMIZATION_DISABLE            (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_API_OPTIMIZATION_ENABLE             (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_EXT_API_OPTIMIZATION                11:10
#define NV_REG_STR_RM_LPWR_ARCH_EXT_API_OPTIMIZATION_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_EXT_API_OPTIMIZATION_DISABLE        (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_EXT_API_OPTIMIZATION_ENABLE         (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_EI_COUPLED_GR_RG                    13:12
#define NV_REG_STR_RM_LPWR_ARCH_EI_COUPLED_GR_RG_DEFAULT            (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_EI_COUPLED_GR_RG_DISABLE            (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_EI_COUPLED_GR_RG_ENABLE             (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_REG_FILTER_PSTATE_CONTROL           15:14
#define NV_REG_STR_RM_LPWR_ARCH_REG_FILTER_PSTATE_CONTROL_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_REG_FILTER_PSTATE_CONTROL_DISABLE   (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_REG_FILTER_PSTATE_CONTROL_ENABLE    (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_GR_COUPLED_DFPR                     17:16
#define NV_REG_STR_RM_LPWR_ARCH_GR_COUPLED_DFPR_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_GR_COUPLED_DFPR_DISABLE             (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_GR_COUPLED_DFPR_ENABLE              (0x00000003)
#define NV_REG_STR_RM_LPWR_ARCH_DFPR_COUPLED_DIFR_SW_ASR            19:18
#define NV_REG_STR_RM_LPWR_ARCH_DFPR_COUPLED_DIFR_SW_ASR_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_LPWR_ARCH_DFPR_COUPLED_DIFR_SW_ASR_DISABLE    (0x00000001)
#define NV_REG_STR_RM_LPWR_ARCH_DFPR_COUPLED_DIFR_SW_ASR_ENABLE     (0x00000003)

#define NV_REG_STR_RM_LPWR_EI_CLIENT                                "RMLpwrEiClient"
//
// TYPE DWORD
// The following convention applies to GC4:
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
#define NV_REG_STR_RM_LPWR_EI_CLIENT_RM                             1:0
#define NV_REG_STR_RM_LPWR_EI_CLIENT_RM_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_LPWR_EI_CLIENT_RM_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_LPWR_EI_CLIENT_RM_ENABLE                      (0x00000003)
#define NV_REG_STR_RM_LPWR_EI_CLIENT_PMU_LPWR                       3:2
#define NV_REG_STR_RM_LPWR_EI_CLIENT_PMU_LPWR_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_LPWR_EI_CLIENT_PMU_LPWR_DISABLE               (0x00000001)
#define NV_REG_STR_RM_LPWR_EI_CLIENT_PMU_LPWR_ENABLE                (0x00000003)

//
// Type DWORD
// Set test execution callback period.
//
#define NV_REG_STR_RM_LPWR_TEST_CALLBACK_TIME_MS            "RMLpwrTestCbkTimeMs"
#define NV_REG_STR_RM_LPWR_TEST_CALLBACK_TIME_MS_DEFAULT     (0x00000000)

//
// Type DWORD
// Set the link training waiting time of eDP from power on
// 0xD2  - Use default waiting time 210ms.
//
#define NV_REG_STR_RM_EDP_POWER_ON_TO_ML_TIME_MS             "RMEdpPowerOnToMLTimeMs"
#define NV_REG_STR_RM_EDP_POWER_ON_TO_ML_TIME_MS_DEFAULT     (0x000000D2)

#define NV_REG_STR_RM_SCI_VID_PWM                            "RMSCIVidPWM"
#define NV_REG_STR_RM_SCI_VID_PWM_ENABLE                     (0x00000001)
#define NV_REG_STR_RM_SCI_VID_PWM_DISABLE                    (0x00000000)
#define NV_REG_STR_RM_SCI_VID_PWM_DEFAULT                    (0x00000001)
// Type DWORD
// Encoding boolean.
// Enable SCI VID PWM control
// 0 - Disable SCI VID PWM control.
// 1 - Enable SCI VID PWM control.

#define NV_REG_STR_RM_FULL_GC5                    "RMFullGC5"
#define NV_REG_STR_RM_FULL_GC5_ENABLE             (0x00000001)
#define NV_REG_STR_RM_FULL_GC5_DISABLE            (0x00000000)
#define NV_REG_STR_RM_FULL_GC5_DEFAULT            (0x00000000)
// Type DWORD
// Full GC5 boolean.
// If GC5 is enabled, force full GC5 from SW's perspective instead of GC5Minus.
// This flag will be replaced when VBIOS adds a field for "State Retention" which
// will imply full GC5. VBIOS bug: 1341431
// 0 - Disable full GC5 (default).
// 1 - Enable full GC5.

#define NV_REG_STR_RM_200124428                    "RmWar200124428"
#define NV_REG_STR_RM_200124428_ENABLE             (0x00000001)
#define NV_REG_STR_RM_200124428_DISABLE            (0x00000000)
#define NV_REG_STR_RM_200124428_DEFAULT            (0x00000000)
// Type DWORD
// WAR-200124428 boolean.
// Enable MSCG only after 30 seconds after state load if this regkey is set
// This regkey will be removed once Bug: 200124428 is fixed
//
// 0 - Disable WAR (default).
// 1 - Enable WAR (MSCG will be disabled if WAR is enabled).

#define NV_REG_STR_RM_TPC_PG_AT_ALL_PSTATES                "RmTpcPgAtAllPStates"
#define NV_REG_STR_RM_TPC_PG_AT_ALL_PSTATES_ENABLE         (0x00000001)
#define NV_REG_STR_RM_TPC_PG_AT_ALL_PSTATES_DISABLE        (0x00000000)
#define NV_REG_STR_RM_TPC_PG_AT_ALL_PSTATES_DEFAULT        (0x00000000)
// Type DWORD
// Enable TPC-PG at all pstates
//
// 0 - Enable TPC-PG on only P5 and P8 (default).
// 1 - Enable TPC-PG at all Pstates.

#define NV_REG_STR_RM_GR_RPG_AT_P3_PSTATE                "RmGrRpgAtP3Pstate"
#define NV_REG_STR_RM_GR_RPG_AT_P3_PSTATE_ENABLE         (0x00000000)
#define NV_REG_STR_RM_GR_RPG_AT_P3_PSTATE_DISABLE        (0x00000001)
#define NV_REG_STR_RM_GR_RPG_AT_P3_PSTATE_DEFAULT        (0x00000000)
// Type DWORD
// Enable GR-RPG at P3 pstate
//
// 0 - Enable GR-RPG at P3 (default).
// 1 - Disable GR-RPG at P3 Pstate.

#define NV_REG_STR_RM_LPWR_GR_IDLE_THRESHOLD_US                      "RMLpwrGrIdleThresholdUs"
#define NV_REG_STR_RM_LPWR_GR_IDLE_THRESHOLD_US_DEFAULT              (0x00000000)
// Type DWORD
// Set the Idle Threshold value for TPC_PG
//
// Default value is set 0, which means VBIOS values will be applied

#define NV_REG_STR_RM_LPWR_GR_RG_IDLE_THRESHOLD_US                   "RMLpwrGrRgIdleThresholdUs"
#define NV_REG_STR_RM_LPWR_GR_RG_IDLE_THRESHOLD_US_DEFAULT           (0x00000000)
// Type DWORD
// Set the Idle Threshold value for GR_RG
//
// Default value is set 0, which means VBIOS values will be applied

#define NV_REG_STR_RM_LPWR_MS_IDLE_THRESHOLD_US                      "RMLpwrMsIdleThresholdUs"
#define NV_REG_STR_RM_LPWR_MS_IDLE_THRESHOLD_US_DEFAULT              (0x00000000)
// Type DWORD
// Set the Idle Threshold value for MSCG
//
// Default value is set 0, which means VBIOS values will be applied

#define NV_REG_STR_RM_LPWR_MS_LTC_IDLE_THRESHOLD_US                  "RMLpwrMsLtcIdleThresholdUs"
#define NV_REG_STR_RM_LPWR_MS_LTC_IDLE_THRESHOLD_US_DEFAULT          (0x00000000)
// Type DWORD
// Set the Idle Threshold value for MSCG
//
// Default value is set 0, which means VBIOS values will be applied

#define NV_REG_STR_RM_LPWR_EI_IDLE_THRESHOLD_US                      "RMLpwrEiIdleThresholdUs"
#define NV_REG_STR_RM_LPWR_EI_IDLE_THRESHOLD_US_DEFAULT              (0x00000000)
// Type DWORD
// Set the Idle Threshold value for EI (Engine Idle FSM)
//
// Default value is set 0, which means VBIOS values will be applied

#define NV_REG_STR_RM_LPWR_MS_DIFR_SW_ASR_IDLE_THRESHOLD_US          "RMLpwrMsDifrSwAsrIdleThresholdUs"
#define NV_REG_STR_RM_LPWR_MS_DIFR_SW_ASR_IDLE_THRESHOLD_US_DEFAULT  (0x00000000)
// Type DWORD
// Set the Idle Threshold value for DIFR SW ASR FSM
//
// Default value is set 0, which means VBIOS values will be applied

#define NV_REG_STR_RM_LPWR_MS_DIFR_CG_IDLE_THRESHOLD_US              "RMLpwrMsDifrCgIdleThresholdUs"
#define NV_REG_STR_RM_LPWR_MS_DIFR_CG_IDLE_THRESHOLD_US_DEFAULT      (0x00000000)
// Type DWORD
// Set the Idle Threshold value for DIFR CG FSM
//
// Default value is set 0, which means VBIOS values will be applied

#define NV_REG_STR_RM_LPWR_CACHE_STATS_ON_D3_SUPPORT                 "RmLpwrCacheStatsOnD3"
#define NV_REG_STR_RM_LPWR_CACHE_STATS_ON_D3_SUPPORT_ENABLE          (0x00000001)
#define NV_REG_STR_RM_LPWR_CACHE_STATS_ON_D3_SUPPORT_DISABLE         (0x00000000)
#define NV_REG_STR_RM_LPWR_CACHE_STATS_ON_D3_SUPPORT_DEFAULT         (0x00000000)
// Type DWORD
// Cache the Lpwr feature statistics on transition to D3 State.
// 1 - Caching of Lpwr Stats Enabled
// 0 - Caching of Lpwr Stats Disabled

#define NV_REG_STR_RM_LPWR_FG_RPPG_SUPPORT                           "RmLpwrFgRppg"
#define NV_REG_STR_RM_LPWR_FG_RPPG_SUPPORT_ENABLE                    (0x00000001)
#define NV_REG_STR_RM_LPWR_FG_RPPG_SUPPORT_DISABLE                   (0x00000000)
#define NV_REG_STR_RM_LPWR_FG_RPPG_SUPPORT_DEFAULT                   (0x00000000)
// Type DWORD
// FG-RPPG Feature support.
// 1 - FG-RPPG Feature is supported
// 0 - FG-RPPG Feature is not supported

#define NV_REG_STR_RM_JT_POWER_CONTROL                       "RMJTPowerControl"

//
// The following convention applies to PRGX:
//    0 : EBPG - Link Enable Before GPU Power-on and GC6 Exit begins (X0)
//    1 : EBPC - Link Enable at beginning of GPU GC6 Exit (X2)
//    2 : EAGP - Link Enable After end of GPU GC6 Exit (X3)
//    3 : EAPG - Link Enable After GPU Power-on Reset, but before GC6 Exit begins (X1a)
//
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGX                                 9:8
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGX_EBPG                    (0x00000000)
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGX_EBPC                    (0x00000001)
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGX_EAGP                    (0x00000002)
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGX_EAPG                    (0x00000003)

// The following convention applies to PRGE:
//    0 : DAGC - Link Disable After GC6 Entry complete and before GPU Power Down (E2)
//    1 : DBGC - Link Disable Before GC6 Entry complete (E1)
//    2 : DAGP - Link Disable After GC6 Entry and GPU Power Down is complete (E3)
//    3 : DBGS - Link Disable Before GC6 Entry starts (E0)
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGE                               11:10
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGE_DAGC                    (0x00000000)
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGE_DBGC                    (0x00000001)
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGE_DAGP                    (0x00000002)
#define NV_REG_STR_RM_JT_POWER_CONTROL_PRGE_DBGS                    (0x00000003)

#define NV_REG_STR_RM_JT_VERIF_CAPS                          "RMJTVerifCaps"
// Type DWORD
// This regkey overrides JT ACPI capabilities for verification.
#define NV_REG_STR_RM_JT_VERIF_CAPS_JT_ENABLED                              0:0
#define NV_REG_STR_RM_JT_VERIF_CAPS_JT_ENABLED_FALSE                 0x00000000
#define NV_REG_STR_RM_JT_VERIF_CAPS_JT_ENABLED_TRUE                  0x00000001
#define NV_REG_STR_RM_JT_VERIF_CAPS_NVSR_ENABLED                            2:1
#define NV_REG_STR_RM_JT_VERIF_CAPS_NVSR_ENABLED_TRUE                0x00000000
#define NV_REG_STR_RM_JT_VERIF_CAPS_NVSR_ENABLED_FALSE               0x00000001
#define NV_REG_STR_RM_JT_VERIF_CAPS_REVISION_ID                           31:20

#define NV_REG_STR_RM_GC6_ONLY_SR_STEP                            "RunOnlyNVSR"
// Type DWORD
// This regkey controls if there should be only SR step in the sequence
// of NVSR GC6 flavors
// This is for HW testing only
#define NV_REG_STR_RM_GC6_ONLY_SR_STEP_ENABLED                     (0x00000001)
#define NV_REG_STR_RM_GC6_ONLY_SR_STEP_DISABLED                    (0x00000000)
#define NV_REG_STR_RM_GC6_ONLY_SR_STEP_DEFAULT                     (0x00000000)

#define NV_REG_STR_RM_COPROC_REFCOUNT                         "RMCoprocrefCount"
// Type DWORD
// This regkey controls delegate refcount change to worker thread or in current thread
#define NV_REG_STR_RM_COPROC_REFCOUNT_STYLE                                 0:0
#define NV_REG_STR_RM_COPROC_REFCOUNT_STYLE_DEFAULT                 (0x00000000)
#define NV_REG_STR_RM_COPROC_REFCOUNT_STYLE_DIRECT                  (0x00000000)
#define NV_REG_STR_RM_COPROC_REFCOUNT_STYLE_WORKERTHREAD            (0x00000001)

#define NV_REG_STR_RM_GC6_STATS                                     "RMGC6Stats"
// Type DWORD
// This regkey controls the collection of RM-internal timing data during GC6 cycles.
#define NV_REG_STR_RM_GC6_STATS_ENABLED                                     0:0
#define NV_REG_STR_RM_GC6_STATS_ENABLED_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_GC6_STATS_ENABLED_NO                          (0x00000000)
#define NV_REG_STR_RM_GC6_STATS_ENABLED_YES                         (0x00000001)

#define NV_REG_STR_RM_GC6_FEATURE                                 "RMGC6Feature"
// Type DWORD
// This regkey controls GC6 related features
//
// Note: Force NV_REG_STR_RM_GC6_FEATURE_FAKE_I2CS_DISABLED     if
//             NV_REG_STR_RM_GC6_FEATURE_IFR_DRIVEN_PATH_ENABLED is set
//             irrealative to what the values are supplied
//
#define NV_REG_STR_RM_GC6_FEATURE_FAKE_I2CS                                 1:0
#define NV_REG_STR_RM_GC6_FEATURE_FAKE_I2CS_DEFAULT                 (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_FAKE_I2CS_ENABLED                 (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_FAKE_I2CS_DISABLED                (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_FAKE_I2CS_UNUSED                  (0x00000003)
//
// Note: Force NV_REG_STR_RM_GC6_FEATURE_PMU_CFG_SPACE_RESTORE_DISABLED if
//             NV_REG_STR_RM_GC6_FEATURE_IFR_DRIVEN_PATH_ENABLED         is set
//             irrealative to what the values are supplied
//
#define NV_REG_STR_RM_GC6_FEATURE_PMU_CFG_SPACE_RESTORE                     3:2
#define NV_REG_STR_RM_GC6_FEATURE_PMU_CFG_SPACE_RESTORE_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_PMU_CFG_SPACE_RESTORE_ENABLED     (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_PMU_CFG_SPACE_RESTORE_DISABLED    (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_PMU_CFG_SPACE_RESTORE_UNUSED      (0x00000003)
#define NV_REG_STR_RM_GC6_FEATURE_EXIT_BOOT_VOLTAGE                         5:4
#define NV_REG_STR_RM_GC6_FEATURE_EXIT_BOOT_VOLTAGE_DEFAULT         (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_EXIT_BOOT_VOLTAGE_ENABLED         (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_EXIT_BOOT_VOLTAGE_DISABLED        (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_EXIT_BOOT_VOLTAGE_UNUSED          (0x00000003)
#define NV_REG_STR_RM_GC6_FEATURE_D3HOT_WAR                                 7:6
#define NV_REG_STR_RM_GC6_FEATURE_D3HOT_WAR_DEFAULT                 (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_D3HOT_WAR_ENABLED                 (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_D3HOT_WAR_DISABLED                (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_D3HOT_WAR_AND_SKIP_POWER_CHECK    (0x00000003)
#define NV_REG_STR_RM_GC6_FEATURE_SKIP_COMPACTION_NORESET                   9:8
#define NV_REG_STR_RM_GC6_FEATURE_SKIP_COMPACTION_NORESET_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_SKIP_COMPACTION_NORESET_ENABLED   (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_SKIP_COMPACTION_NORESET_DISABLED  (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_SKIP_COMPACTION_NORESET_UNUSED    (0x00000003)
// Note: FBSR cannot be force enabled via regkey (define explicitly commented out)
#define NV_REG_STR_RM_GC6_FEATURE_FBSR_PMU_ENTRY                          11:10
#define NV_REG_STR_RM_GC6_FEATURE_FBSR_PMU_ENTRY_DEFAULT            (0x00000000)
// #define NV_REG_STR_RM_GC6_FEATURE_FBSR_PMU_ENTRY_ENABLED         (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_FBSR_PMU_ENTRY_DISABLED           (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_FBSR_PMU_ENTRY_UNUSED             (0x00000003)
// Note: RTD3 can only be force enabled on GP10X POC systems
#define NV_REG_STR_RM_GC6_FEATURE_RTD3_SUPPORT                            13:12
#define NV_REG_STR_RM_GC6_FEATURE_RTD3_SUPPORT_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_RTD3_SUPPORT_ENABLED              (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_RTD3_SUPPORT_DISABLED             (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_RTD3_SUPPORT_UNUSED               (0x00000003)
// Note: Fast GC6 cannot be force enabled via regkey (define explicitly commented out)
#define NV_REG_STR_RM_GC6_FEATURE_FAST_GC6_SUPPORT                        15:14
#define NV_REG_STR_RM_GC6_FEATURE_FAST_GC6_SUPPORT_DEFAULT          (0x00000000)
// #define NV_REG_STR_RM_GC6_FEATURE_FAST_GC6_SUPPORT_ENABLED       (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_FAST_GC6_SUPPORT_DISABLED         (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_FAST_GC6_SUPPORT_UNUSED           (0x00000003)
//
// Note: HDA_OSPM means HDA(FN1) is power managed by OS instead of NV.
// Seen in ModernStandby supported system
//
#define NV_REG_STR_RM_GC6_FEATURE_SUPPORT_HDA_OSPM_D3                     17:16
#define NV_REG_STR_RM_GC6_FEATURE_SUPPORT_HDA_OSPM_D3_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_SUPPORT_HDA_OSPM_D3_ENABLED       (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_SUPPORT_HDA_OSPM_D3_DISABLED      (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_SUPPORT_HDA_OSPM_D3_UNUSED        (0x00000003)
//
// Note: to enable/disable GC6 cold boot path
// We can reuse the bit field later if needed
//
#define NV_REG_STR_RM_GC6_FEATURE_IFR_DRIVEN_PATH                         19:18
#define NV_REG_STR_RM_GC6_FEATURE_IFR_DRIVEN_PATH_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_IFR_DRIVEN_PATH_ENABLED           (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_IFR_DRIVEN_PATH_DISABLED          (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_IFR_DRIVEN_PATH_UNUSED            (0x00000003)
//
// Note: to force waiting on PCIE L2 or PCIE link disable in GC6 entry
// This is Turing only feature
//
#define NV_REG_STR_RM_GC6_FEATURE_PCIE_LINK_STATE_CHECK                   21:20
#define NV_REG_STR_RM_GC6_FEATURE_PCIE_LINK_STATE_CHECK_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_GC6_FEATURE_PCIE_LINK_STATE_CHECK_LINKL2      (0x00000001)
#define NV_REG_STR_RM_GC6_FEATURE_PCIE_LINK_STATE_CHECK_LINKDISABLE (0x00000002)
#define NV_REG_STR_RM_GC6_FEATURE_PCIE_LINK_STATE_CHECK_UNUSED      (0x00000003)

#define NV_REG_STR_RM_GCOFF_FEATURE                               "RMGCOffFeature"
// Type DWORD
// This regkey controls GCOFF related features
//
#define NV_REG_STR_RM_GCOFF_FEATURE_P0_BOOST                                1:0
#define NV_REG_STR_RM_GCOFF_FEATURE_P0_BOOST_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_GCOFF_FEATURE_P0_BOOST_DISABLED               (0x00000001)
#define NV_REG_STR_RM_GCOFF_FEATURE_P0_BOOST_ENABLED                (0x00000002)
#define NV_REG_STR_RM_GCOFF_FEATURE_P0_BOOST_UNUSED                 (0x00000003)

#define NV_REG_STR_RM_FORCE_RTD3_D3HOT                              "RMForceRtd3D3Hot"
// Type DWORD
// Force RTD3 D3Hot for testing purpose
#define NV_REG_STR_RM_FORCE_RTD3_D3HOT_ENTRY                                1:0
#define NV_REG_STR_RM_FORCE_RTD3_D3HOT_ENTRY_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_FORCE_RTD3_D3HOT_ENTRY_ENABLED                (0x00000001)
#define NV_REG_STR_RM_FORCE_RTD3_D3HOT_ENTRY_DISABLED               (0x00000002)
#define NV_REG_STR_RM_FORCE_RTD3_D3HOT_ENTRY_UNUSED                 (0x00000003)

#define NV_REG_STR_RM_GC6_PARAMETERS                                "RMGC6Parameters"
// Type DWORD
// This regkey controls individual latency optimization features for GC6.
#define NV_REG_STR_RM_GC6_PARAMETERS_SLEEP_AWARE_CALLBACK                    1:0
#define NV_REG_STR_RM_GC6_PARAMETERS_SLEEP_AWARE_CALLBACK_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_GC6_PARAMETERS_SLEEP_AWARE_CALLBACK_DISABLED   (0x00000001)
#define NV_REG_STR_RM_GC6_PARAMETERS_SLEEP_AWARE_CALLBACK_ENABLED    (0x00000003)
#define NV_REG_STR_RM_GC6_PARAMETERS_DEFERRED_PMU_CALLBACK                   3:2
#define NV_REG_STR_RM_GC6_PARAMETERS_DEFERRED_PMU_CALLBACK_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_GC6_PARAMETERS_DEFERRED_PMU_CALLBACK_DISABLED  (0x00000001)
#define NV_REG_STR_RM_GC6_PARAMETERS_DEFERRED_PMU_CALLBACK_ENABLED   (0x00000003)
#define NV_REG_STR_RM_GC6_PARAMETERS_PMU_HANDLE_MODESET                      5:4
#define NV_REG_STR_RM_GC6_PARAMETERS_PMU_HANDLE_MODESET_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_GC6_PARAMETERS_PMU_HANDLE_MODESET_DISABLED     (0x00000001)
#define NV_REG_STR_RM_GC6_PARAMETERS_PMU_HANDLE_MODESET_ENABLED      (0x00000003)
#define NV_REG_STR_RM_GC6_PARAMETERS_BSOD_MODESET                            7:6
#define NV_REG_STR_RM_GC6_PARAMETERS_BSOD_MODESET_DEFAULT            (0x00000000)
#define NV_REG_STR_RM_GC6_PARAMETERS_BSOD_MODESET_DISABLED           (0x00000001)
#define NV_REG_STR_RM_GC6_PARAMETERS_BSOD_MODESET_ENABLED            (0x00000003)

#define NV_REG_STR_RM_DI_FEATURE                                    "RMDidleFeatureGC5"
// Type DWORD
// This regkey is used to obtain granular control over DI specific subfeatures
//
// Bit 0-31: Control each of the GC5 specific features
//    Values are used as follows
//    0 : Feature uses default setting
//    1 : Feature is Enabled
//    2 : Feature is Disabled
//    3 : Unused value(For future use)
#define NV_REG_STR_RM_DI_FEATURE_XTAL4XPLL                          1:0
#define NV_REG_STR_RM_DI_FEATURE_XTAL4XPLL_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_XTAL4XPLL_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_XTAL4XPLL_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_XTAL4XPLL_UNUSED                   (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_THERM_SENSOR                       3:2
#define NV_REG_STR_RM_DI_FEATURE_THERM_SENSOR_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_THERM_SENSOR_ENABLE                (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_THERM_SENSOR_DISABLE               (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_THERM_SENSOR_UNUSED                (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_OSM_CLKS                           5:4
#define NV_REG_STR_RM_DI_FEATURE_OSM_CLKS_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_OSM_CLKS_ENABLE                    (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_OSM_CLKS_DISABLE                   (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_OSM_CLKS_UNUSED                    (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_DISP_PLLS                          7:6
#define NV_REG_STR_RM_DI_FEATURE_DISP_PLLS_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_DISP_PLLS_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_DISP_PLLS_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_DISP_PLLS_UNUSED                   (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_DFE_VAL                            9:8
#define NV_REG_STR_RM_DI_FEATURE_DFE_VAL_DEFAULT                    (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_DFE_VAL_ENABLE                     (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_DFE_VAL_DISABLE                    (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_DFE_VAL_UNUSED                     (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_GPU_READY                          11:10
#define NV_REG_STR_RM_DI_FEATURE_GPU_READY_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_GPU_READY_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_GPU_READY_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_GPU_READY_UNUSED                   (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_RSVD                               13:12 // Reserved bits
#define NV_REG_STR_RM_DI_FEATURE_RPPG                               15:14
#define NV_REG_STR_RM_DI_FEATURE_RPPG_DEFAULT                       (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_RPPG_ENABLE                        (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_RPPG_DISABLE                       (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_RPPG_UNUSED                        (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_NO_PSTATE_SUPPORT                  17:16
#define NV_REG_STR_RM_DI_FEATURE_NO_PSTATE_SUPPORT_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_NO_PSTATE_SUPPORT_ENABLE           (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_NO_PSTATE_SUPPORT_DISABLE          (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_NO_PSTATE_SUPPORT_UNUSED           (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_PLL_IDDQ                           19:18
#define NV_REG_STR_RM_DI_FEATURE_PLL_IDDQ_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_PLL_IDDQ_ENABLE                    (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_PLL_IDDQ_DISABLE                   (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_PLL_IDDQ_UNUSED                    (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_VOLTAGE_UPDATE                     21:20
#define NV_REG_STR_RM_DI_FEATURE_VOLTAGE_UPDATE_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_VOLTAGE_UPDATE_ENABLE              (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_VOLTAGE_UPDATE_DISABLE             (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_VOLTAGE_UPDATE_UNUSED              (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_ALT_MUX_SEL                        23:22
#define NV_REG_STR_RM_DI_FEATURE_ALT_MUX_SEL_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_ALT_MUX_SEL_ENABLE                 (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_ALT_MUX_SEL_DISABLE                (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_ALT_MUX_SEL_UNUSED                 (0x00000003)
#define NV_REG_STR_RM_DI_FEATURE_XTAL_GATE                          25:24
#define NV_REG_STR_RM_DI_FEATURE_XTAL_GATE_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_DI_FEATURE_XTAL_GATE_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_DI_FEATURE_XTAL_GATE_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_DI_FEATURE_XTAL_GATE_UNUSED                   (0x00000003)

#define NV_REG_STR_RM_DI_WAKEUP_TIMER                               "RMDiWakeupTimer"
// Type DWORD
// This regkey is used Override SCI Wakeup Timer set by DI
// Bit 0-29  : Specify Value of Timer to be used
// Bit 31-30 : Set Mode for Wakeup Timer
// Following modes can be defined for the timer :
//     AUTO      : Auto calculation will take place based on possible wakeup events
//     FORCE     : Force timer to specified value
//     DISABLED  : Disable the use of wakeup timer
#define NV_REG_STR_RM_DI_WAKEUP_TIMER_TIME                          29:0
#define NV_REG_STR_RM_DI_WAKEUP_TIMER_MODE                          31:30
#define NV_REG_STR_RM_DI_WAKEUP_TIMER_MODE_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_DI_WAKEUP_TIMER_MODE_AUTO                     (0x00000000)
#define NV_REG_STR_RM_DI_WAKEUP_TIMER_MODE_FORCE                    (0x00000001)
#define NV_REG_STR_RM_DI_WAKEUP_TIMER_MODE_DISABLED                 (0x00000002)

#define NV_REG_STR_RM_D3_FEATURE                                    "RMD3Feature"
// Type DWORD
// This regkey controls D3 related features
#define NV_REG_STR_RM_D3_FEATURE_DRIVER_CFG_SPACE_RESTORE           1:0
#define NV_REG_STR_RM_D3_FEATURE_DRIVER_CFG_SPACE_RESTORE_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_D3_FEATURE_DRIVER_CFG_SPACE_RESTORE_ENABLED   (0x00000001)
#define NV_REG_STR_RM_D3_FEATURE_DRIVER_CFG_SPACE_RESTORE_DISABLED  (0x00000002)
#define NV_REG_STR_RM_D3_FEATURE_DRIVER_CFG_SPACE_RESTORE_UNUSED    (0x00000003)

#define NV_REG_STR_RM_OPERATION_MODE                       "RMGpuOperationMode"
// Type DWORD
// This regKey is used to control power gate on boot mode during testing
// Each GPU Operation Mode mode uses 1 bit.
// For this regkey to be used, RmPowerFeatures2
// corresponding to this feature(5:4) should have a value of 2
//    0 : Disable GPU Operation mode - power up unit after boot
//    1 : Enable GPU Operation mode  - keep unit power gated after boot

#define NV_REG_STR_RM_OPERATION_MODE_COMPUTE                                  0:0
#define NV_REG_STR_RM_OPERATION_MODE_COMPUTE_DISABLE                          (0x00000000)
#define NV_REG_STR_RM_OPERATION_MODE_COMPUTE_ENABLE                           (0x00000001)
#define NV_REG_STR_RM_OPERATION_MODE_TEX                                      1:1
#define NV_REG_STR_RM_OPERATION_MODE_TEX_DISABLE                              (0x00000000)
#define NV_REG_STR_RM_OPERATION_MODE_TEX_ENABLE                               (0x00000001)
#define NV_REG_STR_RM_OPERATION_MODE_DFMA                                     2:2
#define NV_REG_STR_RM_OPERATION_MODE_DFMA_DISABLE                             (0x00000000)
#define NV_REG_STR_RM_OPERATION_MODE_DFMA_ENABLE                              (0x00000001)

#define NV_REG_STR_RM_2644249                    "RM2644249"
#define NV_REG_STR_RM_2644249_ENABLE             (0x00000001)
#define NV_REG_STR_RM_2644249_DISABLE            (0x00000000)
#define NV_REG_STR_RM_2644249_DEFAULT            (0x00000000)
// Type DWORD
// WAR-2644249 boolean.
// Disable bunch of Power features as WAR for Bug: 2644249
// This regkey will be removed once Bug: 2644249 is fixed
//
// 0 - Disable WAR (default).
// 1 - Enable WAR.

#define NV_REG_STR_RM_ELCG                        "RMElcg"
// Type DWORD
// This regKey is used for Engine Level Clock Gating settings
// Each engine uses 2 bits. For this regkey to be used, RmPowerFeatures
// corresponding to this feature(5:4) should have a value of 2
//    0 : Keep the vbios default, same as feature on i.e _AUTOMATIC
//    1 : Engine disabled i.e. _DISABLED
//    2 : block/suspend depending on the engine
// MPEG and PPP have same fields since mpeg is the name used for pre-gt200 (except g98)
// and ppp for beyond gt200 (+g98)
#define NV_REG_STR_RM_ELCG_GR                     1:0
#define NV_REG_STR_RM_ELCG_GR_DEFAULT             (0x00000000)  // same as ELCG_GR_ON
#define NV_REG_STR_RM_ELCG_GR_DISABLED            (0x00000001)
#define NV_REG_STR_RM_ELCG_PPP                    3:2
#define NV_REG_STR_RM_ELCG_PPP_DEFAULT            (0x00000000) // same as ELCG_PPP_ON
#define NV_REG_STR_RM_ELCG_PPP_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_MPEG                   3:2
#define NV_REG_STR_RM_ELCG_MPEG_DEFAULT           (0x00000000) // same as ELCG_MPEG_ON
#define NV_REG_STR_RM_ELCG_MPEG_DISABLED          (0x00000001)
#define NV_REG_STR_RM_ELCG_CE0                    5:4
#define NV_REG_STR_RM_ELCG_CE0_DEFAULT            (0x00000000) // same as ELCG_CE0_ON
#define NV_REG_STR_RM_ELCG_CE0_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_PDEC                   7:6
#define NV_REG_STR_RM_ELCG_PDEC_DEFAULT           (0x00000000) // same as ELCG_PDEC_ON
#define NV_REG_STR_RM_ELCG_PDEC_DISABLED          (0x00000001)
#define NV_REG_STR_RM_ELCG_SEC                    9:8
#define NV_REG_STR_RM_ELCG_SEC_DEFAULT            (0x00000000) // same as ELCG_SEC_ON
#define NV_REG_STR_RM_ELCG_SEC_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_VIC                    9:8
#define NV_REG_STR_RM_ELCG_VIC_DEFAULT            (0x00000000) // same as ELCG_VIC_ON
#define NV_REG_STR_RM_ELCG_VIC_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_VLD                    11:10
#define NV_REG_STR_RM_ELCG_VLD_DEFAULT            (0x00000000) // same as ELCG_VLD_ON
#define NV_REG_STR_RM_ELCG_VLD_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_CE1                    13:12
#define NV_REG_STR_RM_ELCG_CE1_DEFAULT            (0x00000000) // same as ELCG_CE1_ON
#define NV_REG_STR_RM_ELCG_CE1_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_DISP                   15:14
#define NV_REG_STR_RM_ELCG_DISP_DEFAULT           (0x00000000) // same as ELCG_DISP_ON
#define NV_REG_STR_RM_ELCG_DISP_DISABLED          (0x00000001)
#define NV_REG_STR_RM_ELCG_CE2                    17:16
#define NV_REG_STR_RM_ELCG_CE2_DEFAULT            (0x00000000) // same as ELCG_CE2_ON
#define NV_REG_STR_RM_ELCG_CE2_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_SEC2                   19:18
#define NV_REG_STR_RM_ELCG_SEC2_DEFAULT           (0X00000000) // same as ELCG_SEC2_ON
#define NV_REG_STR_RM_ELCG_SEC2_DISABLED          (0X00000001)
#define NV_REG_STR_RM_ELCG_MSENC                  21:20
#define NV_REG_STR_RM_ELCG_MSENC_DEFAULT          (0X00000000) // same as ELCG_MSENC_ON
#define NV_REG_STR_RM_ELCG_MSENC_DISABLED         (0X00000001)
#define NV_REG_STR_RM_ELCG_MSENC1                 23:22
#define NV_REG_STR_RM_ELCG_MSENC1_DEFAULT         (0X00000000) // same as ELCG_MSENC1_ON
#define NV_REG_STR_RM_ELCG_MSENC1_DISABLED        (0X00000001)
#define NV_REG_STR_RM_ELCG_CE3                    25:24
#define NV_REG_STR_RM_ELCG_CE3_DEFAULT            (0x00000000) // same as ELCG_CE3_ON
#define NV_REG_STR_RM_ELCG_CE3_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_CE4                    27:26
#define NV_REG_STR_RM_ELCG_CE4_DEFAULT            (0x00000000) // same as ELCG_CE4_ON
#define NV_REG_STR_RM_ELCG_CE4_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_CE5                    29:28
#define NV_REG_STR_RM_ELCG_CE5_DEFAULT            (0x00000000) // same as ELCG_CE5_ON
#define NV_REG_STR_RM_ELCG_CE5_DISABLED           (0x00000001)
#define NV_REG_STR_RM_ELCG_MSENC2                 31:30
#define NV_REG_STR_RM_ELCG_MSENC2_DEFAULT         (0X00000000) // same as ELCG_MSENC2_ON
#define NV_REG_STR_RM_ELCG_MSENC2_DISABLED        (0X00000001)

#define NV_REG_STR_RM_BLCG2                       "RMBlcg"
// Type DWORD
// This regKey is used for Block Level Clock Gating settings
// Each engine uses 4 bits. For this regkey to be used, RmPowerFeatures
// corresponding to this feature(21:18) should have a value of 2
// The bottom 2 bits, decide if the feature is off/on/default for the engine
// The top two bits decide the level of BLCG (stall, idle or quiescent), if
// BLCG has been enabled/default for the engine
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
//    4 : IDLE
//    8 : STALL
//    C : QUIESCENT
//
// NOTE: FOllowing engines share same regkey
//       FB, FBPA, LTCG and XBAR share bit 11:8
//       All other engines not mentioned below share bit 31:28
//
#define NV_REG_STR_RM_BLCG2_GR                     3:0
#define NV_REG_STR_RM_BLCG2_PPP                    7:4
#define NV_REG_STR_RM_BLCG2_FB                     11:8
#define NV_REG_STR_RM_BLCG2_FBPA                   11:8
#define NV_REG_STR_RM_BLCG2_LTCG                   11:8
#define NV_REG_STR_RM_BLCG2_XBAR                   11:8
#define NV_REG_STR_RM_BLCG2_PDEC                   15:12
#define NV_REG_STR_RM_BLCG2_VLD                    19:16
#define NV_REG_STR_RM_BLCG2_XVE                    23:20
#define NV_REG_STR_RM_BLCG2_CE                     27:24
#define NV_REG_STR_RM_BLCG2_MISC                   31:28

#define NV_REG_STR_RM_1760398                    "RmWar1760398"
// Type DWORD
// WAR-1760398 boolean.
// Disable GR-BLCG to prevent TDR observed on running 3DMark
// This is WAR for Bug 1760398
//
// 0 - Disable WAR (default).
// 1 - Enable WAR (GR-BLCG will be disabled if WAR is enabled).
#define NV_REG_STR_RM_1760398_ENABLE             (0x00000001)
#define NV_REG_STR_RM_1760398_DISABLE            (0x00000000)
#define NV_REG_STR_RM_1760398_DEFAULT            (0x00000000)

#define NV_REG_STR_RM_1895530_CE_ELCG_WAR        "RmCeElcgWar1895530"
// Type DWORD
// WAR-1895530 boolean.
// Disable CE - ELCG to prevent hang during Cold boot/Warm Boot Test
// This is WAR for Bug 1895530 (GP108)
//
// 0 - Disable WAR (default).
// 1 - Enable WAR (CE-ELCG will be disabled if WAR is enabled).

#define NV_REG_STR_RM_1895530_CE_ELCG_WAR_ENABLE  (0x00000001)
#define NV_REG_STR_RM_1895530_CE_ELCG_WAR_DISABLE (0x00000000)
#define NV_REG_STR_RM_1895530_CE_ELCG_WAR_DEFAULT (0x00000000)

#define NV_REG_STR_BUG_2519005_WAR               "RMBug2519005War"
// Type DWORD
// WAR-2519005 boolean.
// Disable MSCG to avoid white-lines/flicker/garbage in camera, when Monitor connected over HDMI or GPUMON running.
// This is WAR for Bug 2519005 (TURING - TU117)
//
// 0 - Disable WAR (default).
// 1 - Enable WAR (MSCG will be disabled if WAR is enabled).
#define NV_REG_STR_BUG_2519005_WAR_ENABLE         (0x00000001)
#define NV_REG_STR_BUG_2519005_WAR_DISABLE        (0x00000000)
#define NV_REG_STR_BUG_2519005_WAR_DEFAULT        (0x00000000)

#define NV_REG_STR_RM_1976365_WAR                 "RmWar1976365"
// Type DWORD
// WAR-1976365 boolean.
// Disable MS SWASR at P5
// This is WAR for Bug 1976365
//
// 0 - Disable WAR (default).
// 1 - Enable WAR.
#define NV_REG_STR_RM_1976365_WAR_ENABLE             (0x00000001)
#define NV_REG_STR_RM_1976365_WAR_DISABLE            (0x00000000)
#define NV_REG_STR_RM_1976365_WAR_DEFAULT            (0x00000000)

#define NV_REG_STR_RM_ELPG                        "RMElpg"
// Type DWORD
// This regKey is used for Engine Level Power Gating settings
// Each engine uses 1 bit. For this regkey to be used, RmPowerFeatures
// corresponding to this feature(7:6) should have a value of 2
//    0 : Enable ELPG (DEFAULT)
//    1 : Disable ELPG
// RMElpg regkey should disable all MSCG, MS-LTC and MS-Passive features,
// to completely disable MS group features.
// RMElpg regkey should disable all EI and EI-Passive features,
// to completely disable EI group features.
#define NV_REG_STR_RM_ELPG_GR                     0:0
#define NV_REG_STR_RM_ELPG_PDEC                   1:1
#define NV_REG_STR_RM_ELPG_GR_RG                  2:2
#define NV_REG_STR_RM_ELPG_DO_NOT_USE             3:3
#define NV_REG_STR_RM_ELPG_MS                     4:4
#define NV_REG_STR_RM_ELPG_EI                     5:5
#define NV_REG_STR_RM_ELPG_MS_LTC                 6:6
#define NV_REG_STR_RM_ELPG_MS_PASSIVE             7:7
#define NV_REG_STR_RM_ELPG_EI_PASSIVE             8:8
#define NV_REG_STR_RM_ELPG_DFPR                   9:9
#define NV_REG_STR_RM_ELPG_MS_DIFR_SW_ASR         10:10
#define NV_REG_STR_RM_ELPG_MS_DIFR_CG             11:11

// Type DWORD
// This regkey is used for debugging Adaptive PWR. Each ApCtrl uses 1 bit.
// Bit 0 : Enables debug functionality for Adaptive ELPG. We need to still
//         add this functionality.
// Bit 1 : Enables debug functionality for Adaptive GC5.
#define NV_REG_STR_RM_ADAPTIVE_PWR_DEBUG          "RMAdaptivePwrDebug"
#define NV_REG_STR_RM_ADAPTIVE_PWR_DEBUG_GR       0:0
#define NV_REG_STR_RM_ADAPTIVE_PWR_DEBUG_GC5      1:1

#define NV_REG_STR_RM_PER_INTR_DPC_QUEUING        "RMDisablePerIntrDPCQueueing"
// Type DWORD
// This regkey is used to disable per interrupt DPC queuing.
// 0: Enable Per interrupt DPC Queuing
// 1: Disable Per interrupt DPC Queuing

#define NV_REG_STR_BSOD_ON_FIRST_RC            "RMChkSuppl200405980Driv"
#define NV_REG_STR_BSOD_ON_FIRST_RC_ENABLE     0x13deed31
#define NV_REG_STR_BSOD_ON_FIRST_RC_DISABLE    0x00000000
#define NV_REG_STR_BSOD_ON_FIRST_RC_DEFAULT    NV_REG_STR_BSOD_ON_FIRST_RC_DISABLE
// Type DWORD
// This regkey is used to disable RC Recovery on First RC Error Occurrence.
// This is dedicatedly for testing purpose.
// 0x00000000: Disable
// 0x13deed31: Enable.

#define NV_REG_STR_RM_SLCG                        "RMSlcg"
// Type DWORD
// This regKey is used to disable Second Level Clock Gating settings
// Each engine uses 1 bit. For this regkey to be used, RmPowerFeatures2
// corresponding to this feature(7:6) should have a value of 2
//    0 : Enable SLCG (DEFAULT)
//    1 : Disable SLCG
//
// NOTE: FOllowing engines share same regkey
//       FB, FBPA, LTCG and XBAR share bit 5
//       NVDEC and MSPDEC share bit 13
//       NVENC and MSENC share bit 14
//
#define NV_REG_STR_RM_SLCG_GR                     0:0
#define NV_REG_STR_RM_SLCG_CE0                    1:1
#define NV_REG_STR_RM_SLCG_CE1                    2:2
#define NV_REG_STR_RM_SLCG_CE2                    3:3
#define NV_REG_STR_RM_SLCG_PMU                    4:4
#define NV_REG_STR_RM_SLCG_FB                     5:5
#define NV_REG_STR_RM_SLCG_FBPA                   5:5
#define NV_REG_STR_RM_SLCG_LTCG                   5:5
#define NV_REG_STR_RM_SLCG_XBAR                   5:5
#define NV_REG_STR_RM_SLCG_ACB                    6:6
#define NV_REG_STR_RM_SLCG_PERF                   7:7
#define NV_REG_STR_RM_SLCG_FIFO                   8:8
#define NV_REG_STR_RM_SLCG_CHIPLETS               9:9
#define NV_REG_STR_RM_SLCG_BUS                  10:10
#define NV_REG_STR_RM_SLCG_THERM                11:11
#define NV_REG_STR_RM_SLCG_SEC2                 12:12
#define NV_REG_STR_RM_SLCG_NVDEC                13:13
#define NV_REG_STR_RM_SLCG_MSPDEC               13:13
#define NV_REG_STR_RM_SLCG_NVENC                14:14
#define NV_REG_STR_RM_SLCG_MSENC                14:14
#define NV_REG_STR_RM_SLCG_NVJPG                15:15
#define NV_REG_STR_RM_SLCG_GSP                  16:16
#define NV_REG_STR_RM_SLCG_OFA                  17:17
// NOTE: For Pascal+ chips, there is one common block for the
//       whole copy engine complex and SLCG cannot be controlled
//       individually for each CE. Hence, to enable/disable SLCG
//       for the CE complex, only use NV_REG_STR_RM_SLCG_CE0

#define NV_REG_STR_RM_CLOCK_SLOWDOWN              "RMClkSlowDown"
// Type DWORD
// Each clock down feature uses 2 bits. This is used as a stand alone regKey
// For each 2 bits, the following convention holds
//    0 : Keep the vbios default
//    1 : Disable feature
//    3 : Enable feature
//
// Note:  In general, for most of these features, only the "disable" function
// should be used.  The "enable" function should only be used on special
// occasions, such as during bringup when the corresponding property is
// disabled by default, and the vbios is known to have the feature enabled and
// slowdown factors and various other required settings set correctly.
//
// Thermal Slowdown feature enablement/Disablement has been deprecated since
// a) MODs does not use this regkey anymore
//    NV2080_CTRL_THERMAL_SYSTEM_GET_SLOWDOWN_STATE_OPCODE is used by MODS currently
// b) We cannot enable/Disable OVERT event via regkey from gm20x onwards
// c) Pascal and onwards, we donot support ALERT_X since we have introduced generic
//    Therm events
//
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_THERMAL__RESERVED              17:0
#define NV_REG_STR_RM_CLOCK_SLOWDOWN__DEPRECATED                    19:18
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_NV                             23:22
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_NV_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_NV_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_NV_ENABLE                      (0x00000003)
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_HOST                           25:24   // deprecated
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_HOST_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_HOST_DISABLE                   (0x00000001)
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_HOST_ENABLE                    (0x00000003)
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_IDLE_PSTATE                    27:26
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_IDLE_PSTATE_DEFAULT            (0x00000000)
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_IDLE_PSTATE_DISABLE            (0x00000001)
#define NV_REG_STR_RM_CLOCK_SLOWDOWN_IDLE_PSTATE_ENABLE             (0x00000003)

#define NV_REG_STR_RM_FSPG                                  "RMFspg"
// Type DWORD
// This key sets the floorsweep power gating settings for each engine.  Each
// engine uses 1 bit.  For this regkey to be used the FSPG field of
// RMPowerFeature needs to be set to PER_ENGINE (2).
// 0 : Enable FSPG (DEFAULT)
// 1 : Disable FSPG
#define NV_REG_STR_RM_FSPG_GRAPHICS                         0:0
#define NV_REG_STR_RM_FSPG_GRAPHICS_ENABLE                  (0x00000000)
#define NV_REG_STR_RM_FSPG_GRAPHICS_DISABLE                 (0x00000001)
#define NV_REG_STR_RM_FSPG_VIDEO                            1:1
#define NV_REG_STR_RM_FSPG_VIDEO_ENABLE                     (0x00000000)
#define NV_REG_STR_RM_FSPG_VIDEO_DISABLE                    (0x00000001)
#define NV_REG_STR_RM_FSPG_VIC                              2:2
#define NV_REG_STR_RM_FSPG_VIC_ENABLE                      (0x00000000)
#define NV_REG_STR_RM_FSPG_VIC_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_FSPG_FB                               3:3
#define NV_REG_STR_RM_FSPG_FB_ENABLE                       (0x00000000)
#define NV_REG_STR_RM_FSPG_FB_DISABLE                      (0x00000001)

//
// Enable the ASR feature (bug: 314114)
// DEPRECATED!! Use the BwFeature reg-key instead.
//
#define NV_REG_STR_RM_ASR_ENABLE                            "RMAsrEnable"

//
// Enable non-ISO wakeup for ASR
// Type: DWORD
//
#define NV_REG_STR_RM_ASR_WAKEUP                            "RMAsrWakeup"
#define NV_REG_STR_RM_ASR_WAKEUP_NO                         0
#define NV_REG_STR_RM_ASR_WAKEUP_YES                        1
#define NV_REG_STR_RM_ASR_WAKEUP_DEFAULT                    NV_REG_STR_RM_ASR_WAKEUP_YES

#define NV_REG_STR_RM_INDUCE_DEVICE_SCAN                    "RMInduceDeviceScan"
// TYPE DWORD
// Encoding: Used to make RM signal the CPL to do a device scan.
#define NV_REG_STR_RM_INDUCE_DEVICE_SCAN_DOCKING             0x1   // Do a device scan whenever docking status changes

#define NV_REG_STR_RM_DOCK_WAR_922492                       "RM922492"
// TYPE DWORD
// Encoding:  If non-zero, then the DockWar922492 event is used instead of
// InduceDeviceScan for undocked->dock transitions.

#define NV_REG_STR_RM_FORCE_DOCK_DETECTION_METHOD           "RmDockPolicy"
// TYPE DWORD
// Encoding: Used to force a particular kind of RM Dock Detection.
// Useful for developers, and specific OEM Machines with Bugs in some approaches.
// These macros are "directly in sync" with SDK Dock policies, to avoid additional look up.
// So don't change these macro definitions without changing the SDK.
#define NV_REG_STR_RM_FORCE_DOCK_DETECTION_METHOD_DSM       0x0  // Force RM to trust that DSM method is available in SBIOS.
#define NV_REG_STR_RM_FORCE_DOCK_DETECTION_METHOD_DCS       0x1  // Force RM to trust that DCS method is available in SBIOS.
#define NV_REG_STR_RM_FORCE_DOCK_DETECTION_METHOD_NVIF      0x2  // Force RM to trust that SBIOS is NVIF DOCK compliant.
#define NV_REG_STR_RM_FORCE_DOCK_DETECTION_METHOD_ACPI      0x3  // Force RM to trust that SBIOS is ACPI DOCK event capable.
#define NV_REG_STR_RM_FORCE_DOCK_DETECTION_METHOD_POLL      0x4  // Force RM to fall back to Scratch bit polling.

#define NV_REG_STR_RM_FORCE_LID_DETECTION_METHOD            "RmLidPolicy"
// TYPE DWORD
// Encoding: Used to force a particular kind of RM Lid Detection.
// Useful for developers, and specific OEM Machines with Bugs in some approaches.
#define NV_REG_STR_RM_FORCE_LID_DETECTION_METHOD_DSM        0x0  // Force RM to trust that DSM method is available in SBIOS.
#define NV_REG_STR_RM_FORCE_LID_DETECTION_METHOD_DCS        0x1  // Force RM to trust that DCS method is available in SBIOS.
#define NV_REG_STR_RM_FORCE_LID_DETECTION_METHOD_NVIF       0x2  // Force RM to trust that SBIOS is NVIF LID compliant.
#define NV_REG_STR_RM_FORCE_LID_DETECTION_METHOD_ACPI       0x3  // Force RM to trust that SBIOS is ACPI LID event capable.
#define NV_REG_STR_RM_FORCE_LID_DETECTION_METHOD_POLL       0x4  // Force RM to fall back to Scratch bit polling.

#define NV_REG_STR_RM_CACHE_CONNECTOR_DCS                   "RmCacheConnectorDCS"
// TYPE DWORD
// Encoding: Used to cache status of connectors.
// Enables caching only when HPD sent from SBIOS once _DCS is changed.
// Cache status of connectors could reduce boot/S3/S4 time of dock scan,
// which using _DCS method to query status of each connector.
#define NV_REG_STR_RM_CACHE_CONNECTOR_DCS_ENABLE            0x1  // Force RM to cache status of connectors.
#define NV_REG_STR_RM_CACHE_CONNECTOR_DCS_DISABLE           0x0
#define NV_REG_STR_RM_CACHE_CONNECTOR_DCS_DEFAULT           NV_REG_STR_RM_CACHE_CONNECTOR_DCS_DISABLE

#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE                "RmDisableRegistryCaching"
// Type DWORD
// Encoding: Each bit if set disables a specific registry cache type.
#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE_NVIF                   0:0
#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE_NVIF_ENABLE            (0x00000001)
#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE_EXTDEVICE              1:1
#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE_EXTDEVICE_ENABLE       (0x00000001)
#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE_THERMAL                2:2
#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE_THERMAL_ENABLE         (0x00000001)
#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE_I2CPORTVALIDATE        3:3
#define NV_REG_STR_RM_DISABLE_REGISTRY_CACHE_I2CPORTVALIDATE_ENABLE (0x00000001)

#define NV_REG_STR_RM_NVIF_FUNCTIONS                        "RmNVIFFunctions"
// Type Binary
// Encoding: This is a straight copy of the NVIF_Functions table from the RM.
// The idea here is to save time from reading in this functionality during init
// to reduce boot time.  See bug 586829
// Can be disabled via NV_REG_STR_RM_DISABLE_REGISTRY_CACHE

#define NV_REG_STR_RM_EXT_DEVICE_CACHE                      "RmExtDeviceCache"
// Type DWORD
// Caches whether an external device was found or not.
// For now this is just a bool value, but we may cache more here going fwd.
// See bug 607685.
// Encoding 0 --> Ext Device was not found - will skip probing
//          1 --> Ext Device was found - do probing
// Can be disabled via NV_REG_STR_RM_DISABLE_REGISTRY_CACHE

#define NV_REG_STR_THERMAL_PROVIDER_NUM           "RmThermalProviderNum"
#define NV_REG_STR_THERMAL_PROVIDER_NUM_INVALID    0xFFFFFFFF

// Type Binary
// Encoding: This is a cache of the thermal provider info.  See bug 575064.
// Can be disabled via NV_REG_STR_RM_DISABLE_REGISTRY_CACHE
#define NV_REG_STR_THERMAL_PROVIDER_INFO          "RmThermalProviderInfo"

#define NV_REG_STR_THERMAL_CACHE_DISABLE          "RmThermalCacheDisable"
// Type DWORD
// Disables the Thermal Control Caching.  See bug 575064.
// Same as NV_REG_RM_DISABLE_REGISTRY_CACHE_THERMAL
// Encoding 0 --> Thermal Control Cache is used
//          1 --> Thermal Control Cache is not used

#define NV_REG_STR_I2C_VALIDATED_PORT_MASK              "RMI2cValidatedPortMask"
// Type: Dword
// Mask of which ports have been validated via i2cValidatePorts.
// Can be disabled via NV_REG_STR_RM_DISABLE_REGISTRY_CACHE

#define NV_REG_STR_I2C_REVALIDATE_DDC_PORT_WAR          "RMI2cRevalidateDdcPortWAR"
#define NV_REG_STR_I2C_REVALIDATE_DDC_PORT_WAR_ENABLE   1
#define NV_REG_STR_I2C_REVALIDATE_DDC_PORT_WAR_DEFAULT  0
// Type DWORD
// Encoding boolean
// This is WAR for bug 999333. We can revalidate faulty DDC port again when needed.
// 1 - Enable revalidating DDC port WAR
// 0 - Disable this WAR (default)

#define NV_REG_STR_RM_DISABLE_ACPI                          "RmDisableACPI"
// Type DWORD
// Encoding: Each bit will disable one or more types of ACPI calls from the
// RM to the SBIOS.  This is just a quick way to disable those calls from
// happening at all.
#define NV_REG_RM_DISABLE_ACPI_NVIF                         0:0
#define NV_REG_RM_DISABLE_ACPI_NVIF_DISABLE                (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_MXM                          1:1
#define NV_REG_RM_DISABLE_ACPI_MXM_DISABLE                 (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_NVHG                         2:2
#define NV_REG_RM_DISABLE_ACPI_NVHG_DISABLE                (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_NBCI                         3:3
#define NV_REG_RM_DISABLE_ACPI_NBCI_DISABLE                (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_NBSI                         4:4
#define NV_REG_RM_DISABLE_ACPI_NBSI_DISABLE                (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_SPB                          5:5
#define NV_REG_RM_DISABLE_ACPI_SPB_DISABLE                 (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_NVOP                         6:6
#define NV_REG_RM_DISABLE_ACPI_NVOP_DISABLE                (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_PCFG                         7:7
#define NV_REG_RM_DISABLE_ACPI_PCFG_DISABLE                (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_GPS                          8:8
#define NV_REG_RM_DISABLE_ACPI_GPS_DISABLE                 (0x00000001)
#define NV_REG_RM_DISABLE_ACPI_GPS_2X                       9:9
#define NV_REG_RM_DISABLE_ACPI_GPS_2X_DISABLE              (0x00000001)

#define NV_REG_STR_RM_GPU_ID                                "RMGpuId"
// Type DWORD
// Encoding: This value contains the unique ID for the GPU.

#define NV_REG_STR_RM_TCIPHER_WEAK_KEY                     "RMTCipherWeakKey"
// Type DWORD
// Encoding: 1 means use zero for the turbo cipher key.  0 (or non-existent) means
//           generate a random number for the turbo cipher key
#define NV_REG_STR_RM_TCIPHER_WEAK_KEY_ENABLE              (0x00000001)
#define NV_REG_STR_RM_TCIPHER_WEAK_KEY_DISABLE             (0x00000000)

#define NV_REG_STR_RM_SKIP_DH_KEY                          "RMSkipDHKey"
// Type DWORD
// Encoding: 1 means skip the DH Key Exchange
#define NV_REG_STR_RM_SKIP_DH_KEY_TRUE                     (0x00000001)
#define NV_REG_STR_RM_SKIP_DH_KEY_FALSE                    (0x00000000)

#define NV_REG_STR_RM_DBG_DH                               "RMDbgDh"
// Type DWORD
// Encoding: 1 means use the debugDH ucode
#define NV_REG_STR_RM_USE_DBG_DH_TRUE                      (0x00000001)
#define NV_REG_STR_RM_USE_DBG_DH_FALSE                     (0x00000000)

#define NV_REG_STR_RM_HDCP_KEYGLOB_ZERO                    "RMHdcpKeyglobZero"
// Type DWORD
// Encoding: 1 means Keyglob will be forced to zero
#define NV_REG_STR_RM_HDCP_KEYGLOB_ZERO_TRUE               (0x00000001)
#define NV_REG_STR_RM_HDCP_KEYGLOB_ZERO_FALSE              (0x00000000)

#define NV_REG_STR_RM_HDCP_SET_KEYS                        "RMHdcpSetKeys"
// Type BINARY
// Encoding:
// struct {
//   NvU8  seed[4];
//   NvU8  keyglob[576];
// }

#define NV_REG_STR_PROVIDER_REGISTER_SCRIPT_ADT7473        "RmProviderRsAdt7473"
// Type BINARY
// Encoding:
// struct {
//   NvU8  version;  // 0x10 = 1.0
//   NvU8  entries;  // Number of entries in the following entry array.
//   struct {
//      NvU8  regIndex;
//      NvU8  regValue;
//   } entry[entries]
// }

#define NV_REG_STR_RM_ENABLE_DH_KEY_EXCHANGE               "RmEnableDHKeyExchange"
// Type DWORD (Boolean)
// Override any other settings and enable DH Key Exchange

#define NV_REG_STR_RM_DISABLE_DH_KEY_EXCHANGE              "RmDisableDHKeyExchange"
// Type DWORD (Boolean)
// Override any other settings and disable DH Key Exchange, if both enable
// and disable are set, enable will take precedence.

#define NV_REG_STR_RM_IMP_ENABLE                            "RMEnableIMP"
// This IMP enable reg-key is deprecated!!!
// This registry key is present in some QA test plans. So, not a
// good idea to delete this right now.
// TYPE DWORD
// Encoding: If set to zero, the RM's IMP implementation judges
// all modes possible.
//
// By default, IMP is enabled in production.
//
// IMP may be disabled by default during early bringup of a new chip. If that's
// the case, use NV_REG_STR_RM_BANDWIDTH_FEATURES_IMP_ENABLE instead of this
// registry key to enable it.

#define NV_REG_STR_RM_IMP_DYNAMIC_MEMPOOL_ALLOCATION        "RMIMPDynamicMempoolAllocation"
// TYPE DWORD
// Encoding: If set to a non-zero value, the RM's IMP implementation
// dynamically computes the theoretically required per-head memory
// pool allocations for a given mode. If set to zero value, it disables
// dynamic mempool allocation if it was enabled by default.
// This registry key, and associated property, enable both dynamic mempool
// and reallocation of RXB credits between heads.
/// Please note: this registry key is intended for IMP development/debug
// purposes only.
// By default, memory pool allocations are considered static.

#define NV_REG_STR_MIN_OVERLAY_PSTATE                       "RMIMPMinOverlayPstate"
// TYPE DWORD
// Contains the minimum p-state required to properly display overlays.
// The value directly corresponds to the desired p-state:
// 0 == P0
// 1 == P1
// ...
// 15 == P15
// If the specified p-state value is outside the range of valid p-states
// (0-15), the registry entry will be ignored. If the specified value is
// within the valid range of p-states but is not specifically supported,
// closest higher performance p-state will be used.

#define NV_REG_STR_RM_LIMIT_MEMPOOL_ALLOCATION_RELATIVE_TO_MSCG_HIGH_WM            "RMLimitMempoolRelativeToMscgWM"
// Type DWORD
// This regkey allows the user to limit max mempool allocated to each client,
// to a value equal to MSCG high watermark (HWM) and some extra or less amount.
// This extra/less amount is provided by this regkey in terms of a number. It
// specifies relative to the HWM as 100%. So if the user wanted 10% above
// the HWM, he would specify 110 in the reg key.
// Mempool allocation will be capped at the original IMP-calculated value;
// i.e., the reg key will never cause the mempool to be over-allocated.
// And the mempool can't be allocated below min mempool.
// Any value - Enables and tells how much percentage we want set relative to
// MSCG HWM.


#define NV_REG_STR_RM_DISABLE_DISPLAY                       "RmDisableDisplay"
#define NV_REG_STR_RM_DISABLE_DISPLAY_NO                    0
#define NV_REG_STR_RM_DISABLE_DISPLAY_YES                   1
// Type DWORD (Boolean)
// Override any other settings and disable Display.

#define NV_REG_STR_RM_DISABLE_MPEG                          "RmDisableMpeg"
// Type DWORD (Boolean)
// Override any other settings and disable MPEG.

#define NV_REG_STR_RM_DISABLE_FAST_FLUSH                    "RmDisableFastFlush"
#define NV_REG_STR_RM_DISABLE_FAST_FLUSH_NO                 0
#define NV_REG_STR_RM_DISABLE_FAST_FLUSH_YES                1
// Type DWORD (Boolean)
// Override any other settings and disable Fast Flush feature.

#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS                "RMNativePcieL1WarFlags"
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_TARGET                   1:0
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_TARGET_NONE              0
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_TARGET_ENDPOINT          1
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_TARGET_ROOT              2
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_TARGET_BOTH              3

#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_POLICY                   5:4
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_POLICY_ALWAYS            0
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_POLICY_NEVER             1
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_POLICY_RESTORE           2

#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_RESUME_CALLBACK          8:8
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_RESUME_CALLBACK_OFF      0
#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_RESUME_CALLBACK_ON       1

// #define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_VBIOS_CYA_RESTORE        12:12 // deprecated

// Type DWORD
// Encoding --  1:0 or NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_TARGET
//                 Defines the device or devices on which L1 is modified
//                    0 - Do not modify L1 on any device
//                    1 - Only modify L1 on the endpoint (GPU) device
//                    2 - Only mofidy L1 on the rootport
//                    3 - Modify L1 on both root and endpoint
//
//              3:2 reserved
//
//              5:4 or NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_POLICY
//                 Defines the L1 control policy applied on resume.
//                    0 - Always enable L1 when resuming from D3 and D4
//                    1 - Never enable L1 when resuming from D3 and D4
//                    2 - Restore the previous L1 state
//
//              7:6 reserved
//
//              8:8 or NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_RESUME_CALLBACK
//                 Defines whether the resume policy is applied within the
//                 resume path (D3 or D4) or in a callback that occurs ~1s
//                 after the resume path is completed.
//                    0 - Perform the restore policy in the resume codepath
//                    1 - Perform the restore policy in the a 1Hz callback
//
//             11:9 reserved
//
//
//            12:12 or NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_VBIOS_CYA_RESTORE    (deprecated)
//
//            31:13 reserved
//

#define NV_REG_NATIVE_PCIE_L1_WAR_FLAGS_ALIAS               "RM303107"
// Type DWORD
// Same as NV_REG_NATIVE_PCIE_L1_WAR_FLAGS, changed name to hide details
// from customer.

#define NV_REG_STR_RM_DISABLE_GPU_ASPM_FLAGS                "RMDisableGpuASPMFlags"
#define NV_REG_STR_RM_DISABLE_GPU_ASPM_FLAGS_L0S            0:0
#define NV_REG_STR_RM_DISABLE_GPU_ASPM_FLAGS_L1             1:1
// Type DWORD
// 0:0 - Set to 1 to disable L0s via the CYA_L0S_ENABLE bit
// 1:1 - Set to 1 to disable L1 via CYA_L1_ENABLE bit

#define NV_REG_STR_RM_SBIOS_ENABLE_ASPM_DT                  "RMSbiosEnableASPMDT"
#define NV_REG_STR_RM_SBIOS_ENABLE_ASPM_DT_L0S              0:0
#define NV_REG_STR_RM_SBIOS_ENABLE_ASPM_DT_L1               1:1
// Type BINARY
// SBIOS hash key for ASPM enablement on DT
// This has no effect if added in OS registry hive or via MODS
// Encoding:
//     Binary Structure:         Description
//     0:0                   Set to 1 to enable L0s
//     1:1                   Set to 1 to enable L1
//     7:2                   Reserved

#define NV_REG_STR_RM_ENABLE_ASPM_DT                        "RMEnableASPMDT"
#define NV_REG_STR_RM_ENABLE_ASPM_DT_L0S                    0:0
#define NV_REG_STR_RM_ENABLE_ASPM_DT_L1                     1:1
// Type DWORD
// 0:0 - Set to 1 to enable L0s
// 1:1 - Set to 1 to enable L1

#define NV_REG_STR_RM_OVERRIDE_SUPPORT_CHIPSET_ASPM         "RmOverrideSupportChipsetAspm"
#define NV_REG_STR_RM_OVERRIDE_SUPPORT_CHIPSET_ASPM_L0S     0:0
#define NV_REG_STR_RM_OVERRIDE_SUPPORT_CHIPSET_ASPM_L1      1:1
// Type DWORD
// 0:0 - Set to 1 to force enable L0s
// 1:1 - Set to 1 to force enable L1
// Note: This regkey is intended for testing purpose

#define NV_REG_STR_RM_ENABLE_ASPM_AT_LOAD                   "RMEnableASPMAtLoad"
#define NV_REG_STR_RM_ENABLE_ASPM_AT_LOAD_L0S               0:0
#define NV_REG_STR_RM_ENABLE_ASPM_AT_LOAD_L1                1:1
// Type DWORD
// 0:0 - Set to 1 to enable L0s during RM Load
// 1:1 - Set to 1 to enable L1 during RM Load
// Note: This regkey is intended for testing purpose and should be used to enable
//       ASPM on no pstate or single pstate VBIOS

#define NV_REG_STR_RM_ENABLE_ASPM_PUBLIC_BITS               "RMEnableASPMPublicBits"
#define NV_REG_STR_RM_ENABLE_ASPM_PUBLIC_BITS_L0S           0:0
#define NV_REG_STR_RM_ENABLE_ASPM_PUBLIC_BITS_L1            1:1
#define NV_REG_STR_RM_ENABLE_ASPM_PUBLIC_BITS_L1_CPM        2:2
// Type DWORD
// 0:0 - Set to 1 to enable L0s config space/public bits
// 1:1 - Set to 1 to enable L1 config space/public bits
// 2:2 - Set to 1 to enable L1-CPM config space/public bits
// Note: This regkey is intended for testing purpose only.

#define NV_REG_STR_RM_PCIE_L1_EXIT_LATENCY_OVERRIDE         "RML1ExitLatencyOverride"
#define NV_REG_STR_RM_PCIE_L1_EXIT_LATENCY_OVERRIDE_DISABLE (0x00000000)
#define NV_REG_STR_RM_PCIE_L1_EXIT_LATENCY_OVERRIDE_ENABLE  (0x00000001)
// Type DWORD (Boolean)
// If regkey value is set to 0, do not modify L1 exit latency value from RM.

#define NV_REG_STR_RM_DISABLE_BSP                           "RmDisableBsp"
// Type DWORD (Boolean)
// Override any other settings and disable BSP.

#define NV_REG_STR_RM_DISABLE_BSP_LOAD                      "RmDisableBspLoad"
#define NV_REG_STR_RM_DISABLE_BSP_LOAD_FALSE                (0x00000000)
#define NV_REG_STR_RM_DISABLE_BSP_LOAD_TRUE                 (0x00000001)
// Type DWORD (Boolean)
// Override any other settings and disable BSP load/unload.

#define NV_REG_STR_RM_DISABLE_CE                            "RmDisableCe"
// Type DWORD (Boolean)
// Override any other settings and disable CE.

#define NV_REG_STR_RM_CE_PCE_MAP                            "RmCePceMap"
#define NV_REG_STR_RM_CE_PCE_MAP__SIZE_1                    8
#define NV_REG_STR_RM_CE_PCE_MAP_PCE(i)                     3 + (i) * 4:0 + (i) * 4
#define NV_REG_STR_RM_CE_PCE_MAP_PCE_NONE                   (0x0000000F)

#define NV_REG_STR_RM_CE_PCE_MAP_1                          "RmCePceMap1"
#define NV_REG_STR_RM_CE_PCE_MAP_1__SIZE_1                  8
#define NV_REG_STR_RM_CE_PCE_MAP_1_PCE(i)                   3 + (i) * 4:0 + (i) * 4
#define NV_REG_STR_RM_CE_PCE_MAP_1_PCE_NONE                 (0x0000000F)

#define NV_REG_STR_RM_CE_PCE_MAP_2                          "RmCePceMap2"
#define NV_REG_STR_RM_CE_PCE_MAP_2__SIZE_1                  8
#define NV_REG_STR_RM_CE_PCE_MAP_2_PCE(i)                   3 + (i) * 4:0 + (i) * 4
#define NV_REG_STR_RM_CE_PCE_MAP_2_PCE_NONE                 (0x0000000F)

#define NV_REG_STR_RM_CE_PCE_MAP_3                          "RmCePceMap3"
#define NV_REG_STR_RM_CE_PCE_MAP_3__SIZE_1                  8
#define NV_REG_STR_RM_CE_PCE_MAP_3_PCE(i)                   3 + (i) * 4:0 + (i) * 4
#define NV_REG_STR_RM_CE_PCE_MAP_3_PCE_NONE                 (0x0000000F)
// Type Dword
// Encoding Numeric Value
// Overrides Copy Engine LCE-PCE Mappings
//    NV_REG_STR_RM_CE_PCE_MAP_PCE(i)_NONE - PCE(i) assigned to no LCE
//     RmCePceMap holds the override for PCEs 0 through 7.
//     RmCePceMap1 holds the override for PCEs 8 thorough 15.
//     RmCePceMap2 holds the override for PCEs 16 through 24.
//     RmCePceMap3 holds the override for PCEs 25 through 31.
// Note: PCE-LCE mappings and GRCE sharing work in conjunction.
// If a GRCE has a PCE mapped to it explicitly in RmCePceMap or
// RmCePceMap1, it shouldn't be shared in RmCeGrceShared

#define NV_REG_STR_RM_CE_GRCE_SHARED                        "RmCeGrceShared"
#define NV_REG_STR_RM_CE_GRCE_SHARED__SIZE_1                2
#define NV_REG_STR_RM_CE_GRCE_SHARED_MAP_GRCE(i)            3 + (i) * 4:0 + (i) * 4
#define NV_REG_STR_RM_CE_GRCE_SHARED_MAP_GRCE_NONE          (0x0000000F)
// Type Dword
//
// Map GRCE(s) to share a PCE with the given LCE. For example, setting
// _MAP_GRCE(0) to 1 will make GRCE0 use the same PCE assigned to LCE1.
//
// Custom values:
//  NV_REG_STR_RM_CE_GRCE_SHARED_MAP_GRCE_NONE - GRCE(i) shares no LCE

#define NV_REG_STR_RM_CE_ONE_TO_ONE_MAP                     "RmCeOneToOneMap"
#define NV_REG_STR_RM_CE_ONE_TO_ONE_MAP_TRUE                0x1
#define NV_REG_STR_RM_CE_ONE_TO_ONE_MAP_FALSE               0x0

// Type Dword
// Enable PCE LCE auto config
#define NV_REG_STR_RM_CE_ENABLE_AUTO_CONFIG                "RmCeEnableAutoConfig"
#define NV_REG_STR_RM_CE_ENABLE_AUTO_CONFIG_TRUE           0x1
#define NV_REG_STR_RM_CE_ENABLE_AUTO_CONFIG_FALSE          0x0
// Type Dword (Boolean)
// Encoding Numeric Value
// Map 1 PCE to every LCE

#define NV_REG_STR_RM_EXPOSE_ALL_LCE                        "RmCeExposeAllLce"
#define NV_REG_STR_RM_EXPOSE_ALL_LCE_TRUE                   0x1
#define NV_REG_STR_RM_EXPOSE_ALL_LCE_FALSE                  0x0
// Type Dword (Boolean)
// Encoding Numeric Value
// Expose all LCEs

#define NV_REG_STR_RM_CE_USE_GEN4_MAPPING                "RmCeUseGen4Mapping"
#define NV_REG_STR_RM_CE_USE_GEN4_MAPPING_TRUE           0x1
#define NV_REG_STR_RM_CE_USE_GEN4_MAPPING_FALSE          0x0
// Type Dword (Boolean)
// Encoding Numeric Value
// Use gen4 mapping that uses a HSHUB CE, if available
// Else, continue using FBHUB PCEs

#define NV_REG_STR_RM_DISABLE_MSENC                         "RmDisableMsenc"
// Type DWORD (Boolean)
// Override any other settings and disable MSENC.

#define NV_REG_STR_RM_ENABLE_NVJPG                          "RmEnableNvjpg"
#define NV_REG_STR_RM_ENABLE_NVJPG_FALSE                    (0x00000000)
#define NV_REG_STR_RM_ENABLE_NVJPG_TRUE                     (0x00000001)
// Type DWORD (Boolean)
// Override any other settings and enable NVJPG
// Default value is NV_REG_STR_RM_ENABLE_NVJPG_FALSE

#define NV_REG_STR_RM_ENABLE_OFA                            "RmEnableOfa"
#define NV_REG_STR_RM_ENABLE_OFA_FALSE                      (0x00000000)
#define NV_REG_STR_RM_ENABLE_OFA_TRUE                       (0x00000001)
// Type DWORD (Boolean)
// Override any other settings and enable OFA
// Default value is NV_REG_STR_RM_ENABLE_OFA_FALSE

#define NV_REG_STR_RM_DISABLE_FSP                           "RmDisableFsp"
#define NV_REG_STR_RM_DISABLE_FSP_NO                        (0x00000000)
#define NV_REG_STR_RM_DISABLE_FSP_YES                       (0x00000001)
// Type DWORD (Boolean)
// Override any other settings and disable FSP

#define NV_REG_STR_RM_DISABLE_COT_CMD                       "RmDisableCotCmd"
#define NV_REG_STR_RM_DISABLE_COT_CMD_FRTS_SYSMEM           1:0
#define NV_REG_STR_RM_DISABLE_COT_CMD_FRTS_VIDMEM           3:2
#define NV_REG_STR_RM_DISABLE_COT_CMD_GSPFMC                5:4
#define NV_REG_STR_RM_DISABLE_COT_CMD_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_DISABLE_COT_CMD_YES                   (0x00000001)
// Type DWORD (Boolean)
// Disable the specified commands as part of Chain-Of-Trust feature

#define NV_REG_STR_RM_MSENC_FALCTRACE                       "RmMsencFalcTrace"
#define NV_REG_STR_RM_MSENC_FALCTRACE_DISABLE               (0x00000000)
#define NV_REG_STR_RM_MSENC_FALCTRACE_ENABLE                (0x00000001)
// Type DWORD
// 0 - Disables MSENC Falctrace usage (default)
// 1 - Enables  MSENC Falctrace usage

#define NV_REG_STR_RM_GSP_RTOS_OVERRIDES                           "RmGspRtosOverrides"
#define NV_REG_STR_RM_GSP_RTOS_OVERRIDES_POLL_FOR_INIT_ACK         1:0
#define NV_REG_STR_RM_GSP_RTOS_OVERRIDES_POLL_FOR_INIT_ACK_DEFAULT (0x00000000)
#define NV_REG_STR_RM_GSP_RTOS_OVERRIDES_POLL_FOR_INIT_ACK_FALSE   (0x00000001)
#define NV_REG_STR_RM_GSP_RTOS_OVERRIDES_POLL_FOR_INIT_ACK_TRUE    (0x00000002)
// Type DWORD
// Encoding bit mask
// bits 1:0 : Whether to poll for GSP ucode init message at stateLoad
// 0 - Use the default
// 1 - Don't poll for ucode init message at stateLoad
// 2 - Poll for ucode init message at stateLoad

#define NV_REG_STR_RM_GSP_BOOT_LIBOS                        "RmGspBootLibos"
#define NV_REG_STR_RM_GSP_BOOT_LIBOS_FALSE                  (0x00000000)
#define NV_REG_STR_RM_GSP_BOOT_LIBOS_TRUE                   (0x00000001)
// Type DWORD (Boolean)
// Bootstrap libos for GSP.

#define NV_REG_STR_RM_GSP_BOOT_NVOS_SAMPLE                  "RmGspNvosSample"
#define NV_REG_STR_RM_GSP_BOOT_NVOS_SAMPLE_FALSE            (0x00000000)
#define NV_REG_STR_RM_GSP_BOOT_NVOS_SAMPLE_TRUE             (0x00000001)
// Type DWORD (Boolean)
// Bootstrap nvos sample app for GSP.

#define NV_REG_STR_RM_GSP_BOOT_STRESS_TEST                     "RmGspBootStressTest"
#define NV_REG_STR_RM_GSP_BOOT_STRESS_TEST_FALSE               (0x00000000)
#define NV_REG_STR_RM_GSP_BOOT_STRESS_TEST_TRUE                (0x00000001)
// Type DWORD (Boolean)
// Boot GSP stress test image

#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH               "RmOverrideUprocEngineArch"
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_GSP           3:0
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_GSP_DEFAULT   NV_UPROC_ENGINE_ARCH_DEFAULT
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_GSP_FALCON    NV_UPROC_ENGINE_ARCH_FALCON
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_GSP_RISCV     NV_UPROC_ENGINE_ARCH_FALCON_RISCV
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_SEC2          7:4
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_SEC2_DEFAULT  NV_UPROC_ENGINE_ARCH_DEFAULT
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_SEC2_FALCON   NV_UPROC_ENGINE_ARCH_FALCON
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_SEC2_RISCV    NV_UPROC_ENGINE_ARCH_FALCON_RISCV
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_PMU           11:8
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_PMU_DEFAULT   NV_UPROC_ENGINE_ARCH_DEFAULT
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_PMU_FALCON    NV_UPROC_ENGINE_ARCH_FALCON
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_PMU_RISCV     NV_UPROC_ENGINE_ARCH_FALCON_RISCV
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_NVDEC         15:12
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_NVDEC_DEFAULT NV_UPROC_ENGINE_ARCH_DEFAULT
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_NVDEC_FALCON  NV_UPROC_ENGINE_ARCH_FALCON
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_NVDEC_RISCV   NV_UPROC_ENGINE_ARCH_FALCON_RISCV
#define NV_REG_STR_RM_OVERRIDE_UPROC_ENGINE_ARCH_RSVD          31:16
// Type DWORD
// Override the active arch that will be enabled in an uproc engine.
// NV_UPROC_ENGINE_ARCH_XYZ in falcon.h defines the format to enable the required archs.

#define NV_REG_STR_RM_DISABLE_SEC2                          "RmDisableSec2"
#define NV_REG_STR_RM_DISABLE_SEC2_FALSE                    (0x00000000)
#define NV_REG_STR_RM_DISABLE_SEC2_TRUE                     (0x00000001)
// Type DWORD (Boolean)
// Override any other settings and disable SEC2.

#define NV_REG_STR_RM_DISABLE_GSP                           "RmDisableGsp"
#define NV_REG_STR_RM_DISABLE_GSP_FALSE                     (0x00000000)
#define NV_REG_STR_RM_DISABLE_GSP_TRUE                      (0x00000001)
// Type DWORD (Boolean)
// Override any other settings and disable GSP.

#define NV_REG_STR_RM_DISABLE_GSP_LOAD                      "RmDisableGspLoad"
#define NV_REG_STR_RM_DISABLE_GSP_LOAD_FALSE                (0x00000000)
#define NV_REG_STR_RM_DISABLE_GSP_LOAD_TRUE                 (0x00000001)
// Type DWORD (Boolean)
// Override any other settings and disable GSP load.

#define NV_REG_STR_RM_GSP_HALT_ON_INIT                         "RmGspHaltOnInit"
#define NV_REG_STR_RM_GSP_HALT_ON_INIT_FALSE                   (0x00000000)
#define NV_REG_STR_RM_GSP_HALT_ON_INIT_TRUE                    (0x00000001)
#define NV_REG_STR_RM_GSP_HALT_ON_INIT_DEFAULT                 (0x00000000)
// Type DWORD (Boolean)
// Regkey to force GSP to halt on processing this regkey, allowing debugger attach.

#define NV_REG_STR_RM_ENABLE_FBFLCN                          "RmEnableFbflcn"
#define NV_REG_STR_RM_ENABLE_FBFLCN_FALSE                    (0x00000000)
#define NV_REG_STR_RM_ENABLE_FBFLCN_TRUE                     (0x00000001)
// Type DWORD (Boolean)
// Enable FB falcon -- FB falcon is disabled at TOT by default for now

#define NV_REG_STR_RM_MCLK_SWITCH_ON_FBFLCN                  "RmMClkSwitchOnFbflcn"
#define NV_REG_STR_RM_MCLK_SWITCH_ON_FBFLCN_DISABLE           (0x00000000)
#define NV_REG_STR_RM_MCLK_SWITCH_ON_FBFLCN_ENABLE            (0x00000001)
// Type DWORD (Boolean)
// Enable MCLK switch on FB falcon - Offload execution of the MCLK switch from RM to FB falcon
// This is disabled at TOT by default for now.

#define NV_REG_STR_RM_DISABLE_FBFLCN_DEVINIT_BOOT            "RmDisableFbflcnDevinitBoot"
#define NV_REG_STR_RM_DISABLE_FBFLCN_DEVINIT_BOOT_FALSE      (0x00000000)
#define NV_REG_STR_RM_DISABLE_FBFLCN_DEVINIT_BOOT_TRUE       (0x00000001)
// Type DWORD (Boolean)
// Force disable FB falcon devinit boot support
// Default is _FALSE for GH100 and _TRUE for others

#define NV_REG_STR_RM_DISABLE_SEC2_LOAD                     "RmDisableSec2Load"
#define NV_REG_STR_RM_DISABLE_SEC2_LOAD_FALSE               (0x00000000)
#define NV_REG_STR_RM_DISABLE_SEC2_LOAD_TRUE                (0x00000001)
// Type DWORD (Boolean)
// Override any other settings and disable SEC2 load.

#define NV_REG_STR_RM_ENABLE_HDA                            "RmEnableHda"
// Type DWORD (Boolean)
// 0 - disable HDA
// 1 - enable HDA

#define NV_REG_STR_RM_DISABLE_VP                            "RmDisableVp"
// Type DWORD (Boolean)
// Override any other settings and disable VP.

#define NV_REG_STR_RM_DISABLE_MMU_INVALIDATE                "RmDisableMmuInvalidate"
// Type DWORD (Boolean)
// Override any other settings and disable MMU Invalidates.

#define NV_REG_STR_FORCE_PERF_D3COLD                        "RMForcePerfLevelOnD3Cold"
// Type DWORD
// Force perf level when entering D3 cold state.
// Only applies to NV50 and above.
// If this regkey is missing, max perf is assumed
// when entering D3 cold.
// Effective only if NV_REG_STR_RESET_PERFMON_D4 not set.

#define NV_REG_STR_RM_EXTERNAL_HEAP                          "RMExternalHeap"
// Type DWORD
// If set to 1, this will cause RM operate in external Heap mode.
// Similar to Vista.

#define NV_REG_STR_RESET_PERFMON_D4                         "RMResetPerfMonD4"
// Type DWORD
// Clear perfmon and reset level when entering D4 state
// Only applies to NV50 and above.
// Value: 0 force disable, >=1 force enable.
// If this regkey is missing, we will not clear perf mon state
// when entering D4.
// Takes precedence over NV_REG_STR_FORCE_PERF_D3COLD.

#define NV_REG_STR_RM_ENABLE_PRE_EXCEPTION                   "RmEnablePreException"
// Type DWORD
// Encoding Numeric Value
// This key overrides the default scanout compaction buffersize

#define NV_REG_STR_RM_HDMI_DISALLOWED                       "RmHDMIDisallowDisplayMask"
// Type DWORD (Mask of display IDs)
// Disable HDMI Capability on display objects

#define NV_REG_STR_RM_1536122                               "Rm1536122"
// Type DWORD
// Enables EDP hybridAux port initialize

#define NV_REG_STR_RM_POLLING_NEVER                         "RmNeverPoll"
// Type DWORD
// Never poll on display objects

#define NV_REG_OVERRIDE_MXM_SIZE                            "MXMSize"
// Type BINARY
// Overrides the Size of the MXM structure in bytes

#define NV_REG_OVERRIDE_MXM_DATA                            "MXMData"
// Type BINARY
// Whole MXM Structure in the registry key

#define NV_REG_OVERRIDE_MXM_VERSION                         "MXMVersion"
// Type BINARY
// For overriding MXM Version

#define NV_REG_MXM_DISABLE                                  "MXMDisable"
// Type Dword
// If set, it will disable MXM in RM even if it is a MXM system

#define NV_REG_STR_RM_DISABLE_VISTA_WARS                    "RMDisableVistaWars"
// Type DWORD
// Encoding boolean
// Disable reporting of all NV0000_CTRL_VISTA_OS_CAPS war bits by RM.
// 0 -Enable WAR reporting.
// 1 -Disable WAR repoprting.

#define NV_REG_STR_RM_DISABLE_VISTA_BUG_295770_WAR          "RMDisableVistaBug295770War"
// Type DWORD
// Encoding boolean.
// Disable reporting of NV0000_CTRL_OS_CAPS_VISTA_VSYNC_WAR_BUG_295770 war bit
// by RM.
// 0 -Enable WAR reporting
// 1 -Disable WAR reporting

#define NV_REG_STR_RM_DISABLE_VISTA_BUG_320752_WAR          "RMDisableVistaBug320752War"
// Type DWORD
// Encoding boolean.
// Disable reporting of NV0000_CTRL_OS_CAPS_VISTA_DXVAPOOL_WAR_BUG_320752 war bit
// by RM.
// 0 -Enable WAR reporting
// 1 -Disable WAR reporting

#define NV_REG_STR_RM_DISABLE_VISTA_BUG_794077_WAR          "RMDisableVistaBug794077War"
// Type DWORD
// Encoding boolean.
// Disable reporting of NV0000_CTRL_OS_CAPS_VISTA_GPUCP_WAR_BUG_794077 war bit
// by RM.
// 0 -Enable WAR reporting
// 1 -Disable WAR reporting


#define NV_REG_STR_RM_ORIG_FB_REQ_SIZE                     "RmOrigFbReqSize"
// Type DWORD
// Encoding : If set to 0, causes RM to consider padded
// size for comptag calculation. If set to 1, the original
// (unpadded) size is considered

#define NV_REG_STR_RM_DISABLE_VISTA_BUG_340746_WAR         "RMDisableVistaBug340746War"
// Encoding boolean.
// Disable reporting of NV0000_CTRL_OS_CAPS_VISTA_DXVAGUID_WAR_BUG_340746 war bit
// by RM.
// 0 -Enable WAR reporting
// 1 -Disable WAR reporting


#define NV_REG_STR_RM_DISABLE_VISTA_BUG_261723_WAR          "RMDisableVistaBug261723War"
// Type DWORD
// Encoding boolean.
// Disable reporting of NV0000_CTRL_OS_CAPS_VISTA_CMDBUFSIZE_WAR_BUG_261723 war bit
// by RM.
// 0 -Enable WAR reporting
// 1 -Disable WAR reporting

#define NV_REG_STR_RM_FORCE_VISTA_BUG_290175_WAR           "RMForceVistaBug290175War"
// Type DWORD
// Encoding boolean.
// Force reporting of NV0000_CTRL_OS_CAPS_VISTA_MAPAPERTURE_WAR_BUG_290175 war bit
// by RM.
// 0 -Report WAR only on pre-SP1 Vista
// 1 -Enable WAR reporting

#define NV_REG_STR_RM_DISABLE_WIN8_BUG_1169134_WAR          "RMDisableWin8Bug1169134War"
// Type DWORD
// Encoding boolean.
// Disable reporting of NV0000_CTRL_OS_CAPS_WIN8_VP2_IDCT_WAR_BUG_1169134 war bit
// by RM.
// 0 -Enable WAR reporting
// 1 -Disable WAR reporting


//// The following are alternate ucodes (binary images) to be used with Falcon engines:
#define NV_REG_STR_RM_MINION_SET_UCODE                    "RMMinionSetUCode"
// Type BINARY
#define NV_REG_STR_RM_MINION_SET_UCODE_HDR                "RMMinionSetUCodeHdr"
// Type BINARY


//
// Bindata File Overriding Registry keys
//
#define NV_REG_STR_RM_BINDATA_FILE_DIR                   "BindataFileDir"
// Type String
// The target directory that contains Bindata files to override the static data in driver

#define NV_REG_STR_RM_BINDATA_FILE_FILTER                "BindataFileFilter"
// Type String
// When the filter key is set, Bindata file overriding only happens on an entry that contains
// all filter tokens in its file path.

#define NV_REG_STR_RM_DPU_HDCP_OFFLOAD                    "RmDpuHdcpOffload"
#define NV_REG_STR_RM_DPU_HDCP_OFFLOAD_ENABLE             (0x00000001)
#define NV_REG_STR_RM_DPU_HDCP_OFFLOAD_DISABLE            (0x00000000)
// Type DWORD
// 0 - Disables HDCP offload to DPU
// 1 - Enables  HDCP offload to DPU

#define NV_REG_STR_RM_DPU_FALCTRACE                       "RmDpuFalcTrace"
#define NV_REG_STR_RM_DPU_FALCTRACE_DISABLE               (0x00000000)
#define NV_REG_STR_RM_DPU_FALCTRACE_ENABLE                (0x00000001)

// Type DWORD
// 0 - Post a command to DPU RTOS on DPU clock changes
// 1 - Don't post a command to DPU RTOS on DPU clock changes
#define NV_REG_STR_RM_DPU_RTOS_FREQ_CHANGE_DISABLE          "RmDpuRtosFreqChangeDisable"
#define NV_REG_STR_RM_DPU_RTOS_FREQ_CHANGE_DISABLE_FALSE    (0x00000000)
#define NV_REG_STR_RM_DPU_RTOS_FREQ_CHANGE_DISABLE_TRUE     (0x00000001)

// Type DWORD
// 0 - Disables DPU Falctrace usage (default)
// 1 - Enables  DPU Falctrace usage

#define NV_REG_STR_RM_DPU_FORCE_FRAME_RELEASE                      "RmDpuForceFrameRelease"
#define NV_REG_STR_RM_DPU_FORCE_FRAME_RELEASE_ENABLE               0:0
#define NV_REG_STR_RM_DPU_FORCE_FRAME_RELEASE_ENABLE_DEFAULT       0x00000000
#define NV_REG_STR_RM_DPU_FORCE_FRAME_RELEASE_ENABLE_NO            0x00000000
#define NV_REG_STR_RM_DPU_FORCE_FRAME_RELEASE_ENABLE_YES           0x00000001
#define NV_REG_STR_RM_DPU_FORCE_FRAME_RELEASE_THRESHOLD_US         31:16
#define NV_REG_STR_RM_DPU_FORCE_FRAME_RELEASE_THRESHOLD_US_DEFAULT 1000
// Type Dword
// Regkey to enable DPU force frame release
// Bits 0:0    - Enable DPU forced frame release
// Bits 31:16  - Threshold time in microseconds.
//               DPU frame release time = RM frame Release time + DPU Threshold time
//

#define NV_REG_STR_RM_SEC2_UCODE_PROFILE                            "RmSec2UcodeProfile"
#define NV_REG_STR_RM_SEC2_UCODE_PROFILE_DEFAULT                    (0x00000000)
#define NV_REG_STR_RM_SEC2_UCODE_PROFILE_AUTO                       (0x00000001)
// Type DWORD
//
// 0 - RM bootstraps using default ucode profile build for the given GPU.
// 1 - RM bootstraps SEC2 using AUTO profile (e.g.TU10A on TU104)

#define NV_REG_STR_RM_ACR_SIGNING_ALGO                  "RmAcrSigningAlgo"
#define NV_REG_STR_RM_ACR_SIGNING_ALGO_AES_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_ACR_SIGNING_ALGO_PKC              (0x00000001)
// Type DWORD
//
// 0 - RM uses ACR signed with AES Encryption Algorithm,
// 1 - RM uses ACR signed with PKC Encryption Algorithm,

#define NV_REG_STR_RM_USE_AUTO_ACR                      "RmUseAutoAcr"
#define NV_REG_STR_RM_USE_AUTO_ACR_FALSE                (0x00000000)
#define NV_REG_STR_RM_USE_AUTO_ACR_TRUE                 (0x00000001)
// Type DWORD
// This regkey is effective only if regkey RmAcrSigningAlgo is set to 1 (PKC).
// This dependency on RmAcrSigningAlgo will be replaced by PKC fuse when it is available.
// 0 - RM uses PKC signed x86 ACR binaries
// 1 - RM uses PKC signed Auto ACR binaries

#define NV_REG_STR_RM_ALLOW_PRIV_SEC_DISABLED           "RmAllowPrivSecDisabled"
#define NV_REG_STR_RM_ALLOW_PRIV_SEC_DISABLED_TRUE      (0x00000001)
// Type DWORD
// On certain platforms, RM has started enforcing that priv sec be enabled. This
// regkey tells RM to *not* bail out early if it sees that priv sec is disabled
// 1 - RM will *not* bail out if priv sec is disabled

#define NV_REG_STR_RM_SEC2_FALCTRACE                       "RmSec2FalcTrace"
#define NV_REG_STR_RM_SEC2_FALCTRACE_DISABLE               (0x00000000)
#define NV_REG_STR_RM_SEC2_FALCTRACE_ENABLE                (0x00000001)
// Type DWORD
// 0 - Disables SEC2 Falctrace usage (default)
// 1 - Enables  SEC2 Falctrace usage

#define NV_REG_STR_RM_SEC2_ENABLE_RTOS                     "RmSec2EnableRtos"
#define NV_REG_STR_RM_SEC2_ENABLE_RTOS_FALSE               (0x00000000)
#define NV_REG_STR_RM_SEC2_ENABLE_RTOS_TRUE                (0x00000001)
// Type DWORD
// 0 - SEC2 doesn't use RTOS
// 1 - SEC2 uses RTOS

#define NV_REG_STR_RM_SEC2_LOAD_PR_MODS                    "RmSec2LoadPrMods"
#define NV_REG_STR_RM_SEC2_LOAD_PR_MODS_FALSE              (0x00000000)
#define NV_REG_STR_RM_SEC2_LOAD_PR_MODS_TRUE               (0x00000001)
// Type DWORD
// 0 - SEC2 don't use sec2 Playready ucode specific to MODS (default value)
// 1 - SEC2 use sec2 Playready ucode specific to MODS

#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES                           "RmSec2RtosOverrides"
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_USE_PWR_CLK_TICKS         1:0
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_USE_PWR_CLK_TICKS_DEFAULT (0x00000000)
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_USE_PWR_CLK_TICKS_FALSE   (0x00000001)
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_USE_PWR_CLK_TICKS_TRUE    (0x00000002)
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_FREQ_CHANGE               3:2
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_FREQ_CHANGE_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_FREQ_CHANGE_DISABLE       (0x00000001)
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_FREQ_CHANGE_ENABLE        (0x00000002)
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_POLL_FOR_INIT_ACK         5:4
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_POLL_FOR_INIT_ACK_DEFAULT (0x00000000)
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_POLL_FOR_INIT_ACK_FALSE   (0x00000001)
#define NV_REG_STR_RM_SEC2_RTOS_OVERRIDES_POLL_FOR_INIT_ACK_TRUE    (0x00000002)

// Type DWORD
// Encoding bit mask
// bits 1:0 : Whether to use Pwr Clk ticks for ctx switch interval
// Note that this override is only valid for fmodel. On all other platforms, we
// use Nvd Clk ticks by default.
// 0 - SEC2 RTOS uses the default for ctx switch interval
// 1 - SEC2 RTOS uses Nvd Clk ticks for ctx switch interval
// 2 - SEC2 RTOS uses Pwr Clk ticks for ctx switch interval
// bits 3:2 : Post a command to SEC2 RTOS on SEC2 clock changes
// 0 - Use the default
// 1 - Post a command to SEC2 RTOS on SEC2 clock changes
// 2 - Don't post a command to SEC2 RTOS on SEC2 clock changes

#define NV_REG_STR_RM_SEC2_BUG_2540582_WAR                          "RmSec2Bug2540582War"
#define NV_REG_STR_RM_SEC2_BUG_2540582_WAR_FALSE                    (0x00000000)
#define NV_REG_STR_RM_SEC2_BUG_2540582_WAR_TRUE                     (0x00000001)
// Type DWORD
// 0 - SEC2 doesn't use WAR for bug 2540582
// 1 - SEC2 uses WAR for bug 2540582

#define NV_REG_STR_RM_SEC2_ENABLE_APM                       "RmSec2EnableApm"
#define NV_REG_STR_RM_SEC2_ENABLE_APM_FALSE                 (0x00000000)
#define NV_REG_STR_RM_SEC2_ENABLE_APM_TRUE                  (0x00000001)
// Type DWORD
// 0 - SEC2 doesn't use profile with APM task enabled
// 1 - SEC2 uses profile with APM task enabled

#define NV_REG_STR_RM_PMU_BOOTSTRAP_MODE                    "RmPmuBootstrapMode"
#define NV_REG_STR_RM_PMU_BOOTSTRAP_MODE_RM                 (0x00000000)
#define NV_REG_STR_RM_PMU_BOOTSTRAP_MODE_MANUAL             (0x00000001)
#define NV_REG_STR_RM_PMU_BOOTSTRAP_MODE_VBIOS              (0x00000002)
#define NV_REG_STR_RM_PMU_BOOTSTRAP_MODE_DISABLED           (0x00000003)
#define NV_REG_STR_RM_PMU_BOOTSTRAP_MODE_RM_LPWR_ONLY       (0x00000004)
// Type DWORD
// 0 - RM Bootstraps the PMU during initialization (default)
// 1 - The PMU is not bootstrapped automatically and can be manually bootstrapped at
//     a later time via RmControl.
// 2 - VBIOS bootstraps the PMU with the full multi-stage bootloader.
// 3 - Forces the PMU to appear as a missing-engine thus disabling PMU functionality
//     entirely.

#define NV_REG_STR_RM_PMU_UCODE_PROFILE                     "RmPmuUcodeProfile"
#define NV_REG_STR_RM_PMU_UCODE_PROFILE_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_PMU_UCODE_PROFILE_SELFINIT            (0x00000001)
// Type DWORD
//
// 0 - RM bootstraps using default ucode profile build for the given GPU.
// 1 - RM bootstraps using self-init prototyping profile (GA10X only).

#define NV_REG_STR_RM_PMU_UCODE_ADDRMODE                    "RmPmuUcodeAddrMode"
#define NV_REG_STR_RM_PMU_UCODE_ADDRMODE_DEFAULT            (0x00000000)
#define NV_REG_STR_RM_PMU_UCODE_ADDRMODE_PHYS               (0x00000001)
#define NV_REG_STR_RM_PMU_UCODE_ADDRMODE_VIRT               (0x00000002)
//
// 0 - The default RM addressing mode will be selected.
//
// 1 - PMU FBIF will use physical-addressing when issuing addresses to the MMU
//     No further translation required.
//
// 2 - PMU FBIF will use virtual-addressing when issuing addresses to the MMU.
//     A virtual ctxdma in the PMU instance block will be used to translate
//     the address into a full virtual address which will then be resolved to
//     the final physical address using the PMU's page-directory and page-
//     tables.
//

#define NV_REG_STR_RM_PMU_FORCE_PHYS_MAPPINGS             "RmPmuForcePhysMappings"
#define NV_REG_STR_RM_PMU_FORCE_PHYS_MAPPINGS_DEFUALT     (0x00000000)
#define NV_REG_STR_RM_PMU_FORCE_PHYS_MAPPINGS_TRUE        (0x00000001)
#define NV_REG_STR_RM_PMU_FORCE_PHYS_MAPPINGS_FALSE       (0x00000000)
// Type DWORD
// 0 - Surfaces/buffers mapped to PMU apertures are mapped physically or
//     virtually based on the preference stated by the caller when the mapping
//     request is made.
//
// 1 - Physical mappings are forced for all surfaces/buffers and all apertures.

#define NV_REG_STR_RM_PMU_RPC_PROFILING                   "RmPmuRpcProfiling"
#define NV_REG_STR_RM_PMU_RPC_PROFILING_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_PMU_RPC_PROFILING_EXTENDED          (0x00000001)
// Type DWORD
// 0 - Default profiling (min/max/total times, and count)
// 1 - Extended profiling collects hystograms (has bigger sysmem footprint)

#define NV_REG_STR_RM_PMU_SUPER_SURFACE_RPC               "RmPmuSuperSurfaceRPC"
#define NV_REG_STR_RM_PMU_SUPER_SURFACE_RPC_DEFAULT       (0X00000000)
#define NV_REG_STR_RM_PMU_SUPER_SURFACE_RPC_ENABLE        (0x00000001)
#define NV_REG_STR_RM_PMU_SUPER_SURFACE_RPC_DISABLE       (0x00000000)
// Type DWORD
// 0 - Disables PMU use of Super Surface configuration communication through RPC
// 1 - Enables  PMU use of Super Surface configuration communication through RPC
//

#define NV_REG_STR_RM_PG_LOG_PARAMS                           "RmPmuPgLogParams"
#define NV_REG_STR_RM_PG_LOG_PARAMS_EVENTS_PER_RECORD         7:0
#define NV_REG_STR_RM_PG_LOG_PARAMS_EVENTS_PER_RECORD_DEFAULT (0x0000001F)
#define NV_REG_STR_RM_PG_LOG_PARAMS_FLUSH_WATERMARKS          15:8
#define NV_REG_STR_RM_PG_LOG_PARAMS_FLUSH_WATERMARKS_DEFAULT  (0x0000001B)
#define NV_REG_STR_RM_PG_LOG_PARAMS_EVENTS_PER_NSI            19:16
#define NV_REG_STR_RM_PG_LOG_PARAMS_EVENTS_PER_NSI_DEFAULT    (0x00000008)
#define NV_REG_STR_RM_PG_LOG_PARAMS_LOG_EVENTS                31:30
#define NV_REG_STR_RM_PG_LOG_PARAMS_LOG_EVENTS_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_PG_LOG_PARAMS_LOG_EVENTS_ENABLE         (0x00000001)
#define NV_REG_STR_RM_PG_LOG_PARAMS_LOG_EVENTS_DISABLE        (0x00000003)
// Encoding numeric value
// Overrides default PMU PG log parameters
// NV_REG_STR_RM_PG_LOG_PARAMS_EVENTS_PER_RECORD
//     - Maximum number of events per record
// NV_REG_STR_RM_PG_LOG_PARAMS_FLUSH_WATERMARKS
//     - PMU first attempts a flush from DMEM to PG log
//     - after every RM_PMU_PG_LOG_FLUSH_WATERMARK events

#define NV_REG_STR_RM_SLI_ALWAYS_APPROVED "RMSLIAlwaysApproved"
// Type Dword
// When present and set to 1    :  Override the SLI approval status to always allow SLI
// When not present or set to 0 :  The SLI approval is used.

#define NV_REG_STR_RM_DYNAMIC_SLI_ALLOWED "RMDynamicSLIAllowed"
// Type Dword
// When present and set to 1:       Allow Dynamic SLI transitions (Default)
// When present and set to 0:       Do not Dynamic SLI transitions

#define NV_REG_STR_RM_WS_FEATURE_OVERRIDE "RMWSFeatureOverride"
// Type Dword
// When present and set to 1:       Allow Ws feature Matrix Override
// When present and set to 0:       Do not Override Ws feature Matrix (Default)

#define NV_REG_STR_RM_DISABLE_VISTA_BUG_331820_WAR          "RMDisableVistaBug331820War"
// Type DWORD
// Encoding boolean.
// Disable reporting of NV0000_CTRL_OS_CAPS_VISTA_MM_WAR_BUG_331820 war bit
// by RM.
// 0 -Enable WAR reporting
// 1 -Disable WAR reporting

#define NV_REG_STR_LID_CLOSE_DISPLAY_MASK                  "LidCloseDisplayMask"
//Type DWORD
// Encoding bit mask
// Turns off The display IDs held in the mask
// bits 0-7 Values for CRT devices
// bits 8-15 Values for TV devices
// bits 16-23 Values for DFPs, LVDS and DP devices

#define NV_REG_STR_RM_DISABLE_UNDERFLOW                     "RMDisableUnderflow"
// Type DWORD
// Encoding boolean.
// Underflow interrupts are enabled with or without this regkey.
// 0 -Enable a persistent red screen when underflow happens
// 1 -Disable red screen underflow reporting

#define NV_REG_STR_RM_SKIP_P8_BUG_200433138_WAR             "RMSkipP8Bug200433138War"
// Type DWORD
// Encoding boolean.
// Disallow the display modes to run at P8. Instead, bump them to the
// next higher pstate.
// 0 - Disable the WAR.
// 1 - Enable the WAR.

#define NV_REG_STR_RM_DISABLE_ZBC_DEFAULT_LOAD             "RMDisableZBCDefaultLoad"
// Type DWORD
// Encoding boolean
// nonzero -- Disable setting default values in ZBC table.
// zero    -- Do not disable setting default values in ZBC Table
//

#define NV_REG_STR_RM_ENABLE_I2C_NANNY            "RmEnableI2CNanny"
// Type DWORD: Turns on I2C Nanny
// Encoding : 0 -- Disable
//          : NonZero -- Enable
//          : Default -- Enabled
#define NV_REG_STR_RM_ENABLE_I2C_NANNY_DISABLE  0
#define NV_REG_STR_RM_ENABLE_I2C_NANNY_ENABLE   1
#define NV_REG_STR_RM_ENABLE_I2C_NANNY_DEFAULT  NV_REG_STR_RM_ENABLE_I2C_NANNY_ENABLE

#define NV_REG_STR_RM_DISABLE_GEN2_LINK_RETRAINING  "RmDisableGen2LinkRetraining"
// Type DWORD: Disables Gen2 PCIE link retraining.  If link is already
//             trained to Gen2 speeds then we remain at that speed.
// Encoding : 0 -- Allow Gen2 PCIE link retraining
//          : 1 -- Disable Gen2 PCIE link retraining

#define NV_REG_STR_RM_DISABLE_GEN2                  "RMNoGen2"
// Type DWORD: Disables Gen2 for testing purposes.
// Encoding : 0 -- Allow Gen2
//          : 1 -- Disable Gen2
// Default  : 0

#define NV_REG_STR_RM_FORCE_ENABLE_GEN2                     "RmForceEnableGen2"
#define NV_REG_STR_RM_FORCE_ENABLE_GEN2_NO                  0
#define NV_REG_STR_RM_FORCE_ENABLE_GEN2_YES                 1
#define NV_REG_STR_RM_FORCE_ENABLE_GEN2_DEFAULT             NV_REG_STR_RM_FORCE_ENABLE_GEN2_NO
// Type DWORD: On some platform, Gen2 is disabled to work around system problems.
//             This key is to force enabling Gen2 for testing or other purpose.  It is
//             ineffective on platforms not Gen2 capable.
// Encoding boolean:
// 0 - Do Nothing
// 1 - Force Enable Gen2 (to invalidate PDB_PROP_CL_PCIE_GEN1_GEN2_SWITCH_CHIPSET_DISABLED)
//

#define NV_REG_STRM_RM_FORCE_ENABLE_PCIEGEN_SWITCHING         "RmForceEnablePcieGenSwitching"
#define NV_REG_STRM_RM_FORCE_ENABLE_PCIEGEN_SWITCHING_DISABLED 0
#define NV_REG_STRM_RM_FORCE_ENABLE_PCIEGEN_SWITCHING_ENABLED  1
#define NV_REG_STRM_RM_FORCE_ENABLE_PCIEGEN_SWITCHING_DEFAULT  0
// Type DWORD: On some GPUs, we disable Gen1/Gen2 switching between p-states to
//             WAR p-state switching hangs.  Instead we train to the Gen2 if the
//             system supports it natively and never switch until driver unload.
//             This regkey will override that.
// Encoding boolean:
// 0 - Force disable PCIE switching (to clear PDB_PROP_PERF_PCIEGEN_SWITCHING_ENABLE)
// 1 - Force enable PCIE switching (to set PDB_PROP_PERF_PCIEGEN_SWITCHING_ENABLED)

#define NV_REG_STR_EMULATED_NBSI_TABLE                      "RMemNBSItable"
// The emulated NBSI table

#define NV_REG_STR_RM_GPU_CACHE_ENABLE               "RMGpuCacheEnable"
#define NV_REG_STR_RM_GPU_CACHE_ENABLE_DISABLED      0
#define NV_REG_STR_RM_GPU_CACHE_ENABLE_ENABLED       1
#define NV_REG_STR_RM_GPU_CACHE_ENABLE_DEFAULT       NV_REG_STR_RM_GPU_CACHE_ENABLE_ENABLED
// Type DWORD
// Encoding boolean
// Enable or disable a GPU cache if one exists and hw supports enabling/disabling.
// 0 - Disables cache.
// 1 - Enables cache.
// Default 1

#define NV_REG_STR_RM_MAP_P2P_PEER_ID               "RMP2PPeerId"
// Type DWORD
// Encoding:
//      Peer ID to use when mapping p2p to peer subdevice in p2p loopback mode
// Default: RM takes care of assigning peer ID.

#define NV_REG_STR_SEC_PRIV_CONT_WAR                       "RM413740"
#define NV_REG_STR_SEC_PRIV_CONT_WAR_ENABLE                (0x00000001)
#define NV_REG_STR_SEC_PRIV_CONT_WAR_DISABLE               (0x00000000)
// Type DWORD
// Encoding boolean.
// Enable/Disable the SEC priv register contention workaround
// 0 - disable WAR
// 1 - enable WAR


#define NV_REG_BINARY_ALTERNATIVE_PWM_CONTROL              "RM442643"
// Type BINARY
// Basically it is struct ALTERNATIVE_PWM_CONTROL, defined in dac.h.

#define NV_REG_STR_RM_DISABLE_AGGRESSIVE_VBLANK          "RmDisableAggressiveVblank"
// Type DWORD
// Encoding Boolean
// Enable/Disable Aggressive Vblank Handling
// 0 -- Don't Disable
// 1 -- Do Disable
#define NV_REG_STR_RM_DISABLE_AGGRESSIVE_VBLANK_ENABLE (0)
#define NV_REG_STR_RM_DISABLE_AGGRESSIVE_VBLANK_DISABLE (1)
#define NV_REG_STR_RM_DISABLE_AGGRESSIVE_VBLANK_DEFAULT (NV_REG_STR_RM_DISABLE_AGGRESSIVE_VBLANK_ENABLE)

// Type DWORD
// Allows for overriding specific Deep Idle functionality.
// Encoding 0:0   - Specifies whether or not to ignore the ELPG condition
//                  when arming Deepidle
//          2:1   - Specifies whether,
//                  a, Deepidle has any cap on pstate (where it can be active)
//                  If there is a cap,
//                  b, whether to enable Deepidle at all the pstates below the cap
//                  c, or enable it at only the given cap pstate. This is mostly
//                  useful for testing only. If _CAP_TYPE is set to _RM_DEFAULT
//                  then _CAP_* is of no effect.
//          6:3   - Specifies the p-states at/below which deepidle should be
//                  enabled. Valid cap pstates are defined as "_PSTATE_CAP_P*" above.
//          31:7  - Reserved

#define NV_REG_STR_RM_ENABLE_PBI                  "RMEnablePbi"
// Type DWORD: Enables pbi for testing purposes.
// Encoding : 0 -- Disable support for pbi
//          : 1 -- Enable support for pbi
// Default  : 0

#define NV_REG_STR_DISABLE_OVERCLOCKED_PSTATES             "DisableOverclockedPstates"
#define NV_REG_STR_DISABLE_OVERCLOCKED_PSTATES_ENABLE      0
#define NV_REG_STR_DISABLE_OVERCLOCKED_PSTATES_DISABLE     1
#define NV_REG_STR_DISABLE_OVERCLOCKED_PSTATES_DEFAULT     NV_REG_STR_DISABLE_OVERCLOCKED_PSTATES_ENABLE
// Type Dword
// Encoding boolean
// In order to facilitate testing of Notebook Overclocking feature, this driver registry
// key is provided to disable the external NVAPI - NvAPI_GPU_EnableOverclockedPstates.
// 0 = Enabled  (default)
// 1 or nonzero = Disabled
//

#define NV_REG_STR_ENABLE_OVERCLOCKING_ALL_PSTATES             "RMEnableOverclockingAllPstates"
#define NV_REG_STR_ENABLE_OVERCLOCKING_ALL_PSTATES_ENABLE      1
#define NV_REG_STR_ENABLE_OVERCLOCKING_ALL_PSTATES_DISABLE     0
#define NV_REG_STR_ENABLE_OVERCLOCKING_ALL_PSTATES_DEFAULT     NV_REG_STR_ENABLE_OVERCLOCKING_ALL_PSTATES_DISABLE
// Type DWORD
// Encoding boolean
// Allow the user to overclock/override all p-states not just P0.  This opens up
// a lot of subtle bugs with our clocking/p-state code.  Default is to only
// allow P0.
// NOTE: This regkey applies to user-specified overclocking through NVAPI via
// tools like nTune/Performance and other 3rd party OEM apps.  It is very
// different from the idea "overclocked p-states" which are p-states in the
// vbios specified as "overclocked".
// 1 or non-zero = Enabled
// 0 = Disabled (default)


#define NV_REG_STR_ENABLE_TESLA_OVERVOLTAGING          "RMEnableTeslaOvervoltaging"
#define NV_REG_STR_ENABLE_TESLA_OVERVOLTAGING_ENABLE   1
#define NV_REG_STR_ENABLE_TESLA_OVERVOLTAGING_DISABLE  0
#define NV_REG_STR_ENABLE_TESLA_OVERVOLTAGING_DEFAULT  NV_REG_STR_ENABLE_TESLA_OVERVOLTAGING_DISABLE
// Type DWORD
// Encoding boolean
// Allow the user to overvoltage on Tesla boards.  This is not expected to ever
// be set in the field, only for internal testing.
//
// USE THIS SETTING AT YOUR OWN RISK, IT WILL DECREASE BOARD AND GPU LIFE.
//
// 1 or non-zerio = Enabled
// 0 = Disabled (default)

#define NV_REG_STR_DISABLE_PEX_LINK_SPEED_WAR          "DisablePexLinkSpeedWAR"
#define NV_REG_STR_DISABLE_PEX_LINK_SPEED_WAR_ENABLE   2
#define NV_REG_STR_DISABLE_PEX_LINK_SPEED_WAR_DISABLE  1
#define NV_REG_STR_DISABLE_PEX_LINK_SPEED_WAR_DEFAULT  0
// Type DWORD
// Encoding boolean
// Determines whether or not PEX Link Speed WAR needs to be disabled
//
// THIS REGKEY WON'T WORK FROM PASCAL AS THE WAR ITSELF IS DISFEATURED!
//
// 2 - Enables PEX Link Speed WAR
// 1 - Disables PEX Link Speed WAR
// 0 - Use default setting for PEX Link Speed WAR

#define NV_REG_STR_RM_FPGA_DISABLE_SI570                          "RMFPGADisableSi570"
#define NV_REG_STR_RM_FPGA_DISABLE_SI570_NO                       (0x00000000)
#define NV_REG_STR_RM_FPGA_DISABLE_SI570_YES                      (0x00000001)
// Type DWORD
// Encoding boolean.
// Disable/Enable Si570 clock programming for FPGA
// 1 - Disable Si570 FPGA clock programming
// 0 - Enable Si570 FPGA clock programming (default)

#define NV_REG_STR_RM_SKIP_SNOOZE_FRAMES                    "RMSkipSnoozeFrames"
#define NV_REG_STR_RM_SKIP_SNOOZE_FRAMES_YES                (0x00000001)
#define NV_REG_STR_RM_SKIP_SNOOZE_FRAMES_NO                 (0x00000000)
#define NV_REG_STR_RM_SKIP_SNOOZE_FRAMES_DEFAULT            (0x00000000)
// Type DWORD
// Encoding boolean.
// Skip snooze frames on head shutdown and wake up
// 0 - Don't skip snooze frames. This is the default behaviour.
// 1 - Skip all snooze frames for all modeswitches if applicable.
//     Not recommended for normal usage. Can generate significant speedup on
//     emulation.

#define NV_REG_STR_RM_SUPPRESS_GPIO_INTR_ERR_LOG            "RMSuppressGPIOIntrErrLog"
#define NV_REG_STR_RM_SUPPRESS_GPIO_INTR_ERR_LOG_YES        (0x00000001)
#define NV_REG_STR_RM_SUPPRESS_GPIO_INTR_ERR_LOG_NO         (0x00000000)
#define NV_REG_STR_RM_SUPPRESS_GPIO_INTR_ERR_LOG_DEFAULT    (0x00000000)
// Type DWORD
// Encoding boolean.
// Suppress logging of GPIO interrupts as errors. Log them as info levels instead.
// 0 - Do not suppress logging as errors. This is the default.
// 1 - Suppress logging as errors.

#define NV_REG_STR_RM_ENABLE_NON_SILICON_DP_AUX                   "RMEnableNonSiliconDpAux"
#define NV_REG_STR_RM_ENABLE_NON_SILICON_DP_AUX_YES               (0x00000001)
#define NV_REG_STR_RM_ENABLE_NON_SILICON_DP_AUX_NO                (0x00000000)

// Type DWORD
// Encoding boolean.
// Enable/Disable FB training
// 1 - Enable FB training
// 0 - Disable FB training
// The default varies by GPU and memory type.  It is then turned off for
// simulation/emulation, but can be overridden by this registry key.

#define NV_REG_STR_RM_FBSR_PAGED_DMA                         "RmFbsrPagedDMA"
#define NV_REG_STR_RM_FBSR_PAGED_DMA_ENABLE                  1
#define NV_REG_STR_RM_FBSR_PAGED_DMA_DISABLE                 0
#define NV_REG_STR_RM_FBSR_PAGED_DMA_DEFAULT                 NV_REG_STR_RM_FBSR_PAGED_DMA_DISABLE
// Type Dword
// Encoding Numeric Value
// Enable the Paged DMA mode for FBSR
// 0 - Disable (default)
// 1 - Enable

#define NV_REG_STR_RM_FBSR_WDDM_MODE                         "RmFbsrWDDMMode"
#define NV_REG_STR_RM_FBSR_WDDM_MODE_ENABLE                  1
#define NV_REG_STR_RM_FBSR_WDDM_MODE_DISABLE                 0
#define NV_REG_STR_RM_FBSR_WDDM_MODE_DEFAULT                 NV_REG_STR_RM_FBSR_WDDM_MODE_DISABLE
// Type Dword
// Encoding Numeric Value
// Enable the WDDM power saving mode for FBSR
// 0 - Disable (default)
// 1 - Enable


#define NV_REG_STR_RM_FBSR_FILE_MODE                   "RmFbsrFileMode"
#define NV_REG_STR_RM_FBSR_FILE_MODE_ENABLE            1
#define NV_REG_STR_RM_FBSR_FILE_MODE_DISABLE           0
#define NV_REG_STR_RM_FBSR_FILE_MODE_DEFAULT           NV_REG_STR_RM_FBSR_FILE_MODE_DISABLE
// Type Dword
// Encoding Numeric Value
// Enable the File based power saving mode for Linux
// 0 - Disable (default)
// 1 - Enable


#define NV_REG_STR_RM_FB_TRAINING_CMOS                       "RMFBTrainingCMOS"
#define NV_REG_STR_RM_FB_TRAINING_CMOS_ADR_TRAIN                     0:0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_ADR_TRAIN_DISABLE               0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_ADR_TRAIN_ENABLE                1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_WCK_TRAIN                     1:1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_WCK_TRAIN_DISABLE               0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_WCK_TRAIN_ENABLE                1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_RD_TRAIN                      2:2
#define NV_REG_STR_RM_FB_TRAINING_CMOS_RD_TRAIN_DISABLE                0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_RD_TRAIN_ENABLE                 1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_WR_TRAIN                      3:3
#define NV_REG_STR_RM_FB_TRAINING_CMOS_WR_TRAIN_DISABLE                0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_WR_TRAIN_ENABLE                 1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_PERIODIC                      8:8
#define NV_REG_STR_RM_FB_TRAINING_CMOS_PERIODIC_DISABLE                0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_PERIODIC_ENABLE                 1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_WR_TRAIN                9:9
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_WR_TRAIN_DISABLE          0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_WR_TRAIN_ENABLE           1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_WR_TRAIN_CTRL         10:10
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_WR_TRAIN_CTRL_TRIMMER     0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_WR_TRAIN_CTRL_DLL         1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_QUSE_TRAIN            11:11
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_QUSE_TRAIN_DISABLE        0
#define NV_REG_STR_RM_FB_TRAINING_CMOS_SDDR3_QUSE_TRAIN_ENABLE         1
#define NV_REG_STR_RM_FB_TRAINING_CMOS_RESERVED              31:31
// Type DWORD
// Encoding boolean.
// Enable/Disable FB training
// 1 - Enable FB training
// 0 - Disable FB training
// Allow explicit enabling/disabling of different types of CMOS training
// (RESERVED field is used internally in the RM).


#define NV_REG_STR_RM_FB_TRAINING_CML                        "RMFBTrainingCML"
#define NV_REG_STR_RM_FB_TRAINING_CML_ADR_TRAIN               0:0
#define NV_REG_STR_RM_FB_TRAINING_CML_ADR_TRAIN_DISABLE         0
#define NV_REG_STR_RM_FB_TRAINING_CML_ADR_TRAIN_ENABLE          1
#define NV_REG_STR_RM_FB_TRAINING_CML_WCK_TRAIN               1:1
#define NV_REG_STR_RM_FB_TRAINING_CML_WCK_TRAIN_DISABLE         0
#define NV_REG_STR_RM_FB_TRAINING_CML_WCK_TRAIN_ENABLE          1
#define NV_REG_STR_RM_FB_TRAINING_CML_RD_TRAIN                2:2
#define NV_REG_STR_RM_FB_TRAINING_CML_RD_TRAIN_DISABLE          0
#define NV_REG_STR_RM_FB_TRAINING_CML_RD_TRAIN_ENABLE           1
#define NV_REG_STR_RM_FB_TRAINING_CML_WR_TRAIN                3:3
#define NV_REG_STR_RM_FB_TRAINING_CML_WR_TRAIN_DISABLE          0
#define NV_REG_STR_RM_FB_TRAINING_CML_WR_TRAIN_ENABLE           1
#define NV_REG_STR_RM_FB_TRAINING_CML_PERIODIC                8:8
#define NV_REG_STR_RM_FB_TRAINING_CML_PERIODIC_DISABLE          0
#define NV_REG_STR_RM_FB_TRAINING_CML_PERIODIC_ENABLE           1
#define NV_REG_STR_RM_FB_TRAINING_CML_RESERVED              31:31
// Type DWORD
// Encoding boolean.
// Enable/Disable FB training
// 1 - Enable FB training
// 0 - Disable FB training
// Allow explicit enabling/disabling of different types of CML training.
// (RESERVED field is used internally in the RM).

#if defined(DEBUG) || defined(DEVELOP)
#define NV_REG_STR_FAKE_DISPLAY_MASK                  "FakeDispMask"
// Type DWORD : To persist faked display devices across reboots
// Encoding : Numeric value
// o CRT: 0x00000FF
// o TV:  0x000FF00 (includes Component, Composite, and S-Video)
// o DFP: 0x0FF0000 (includes LVDS, DVI, HDMI, and DisplayPort)
// if fakeDispMask is 0x0000002 -->  Edid for display is Edid_2
#endif

#define NV_REG_STR_RM_PCIDEVID_CHECK_IGNORE                  "RMDevidCheckIgnore"
// Type DWORD
// Encoding 0 - Don't ignore the PCI Devid check b/w vbios and chip (DEFAULT behavior)
//          1 - Ignore the PCI Devid check
// This is only used in debug and/or mods builds for testing

#define NV_REG_STR_RM_VFE_VARS_VERSION_CHECK_IGNORE          "RMVfeVarsVersionCheckIgnore"
// Type DWORD
// Encoding 0 - Don't ignore the vfe varS fuse check  (DEFAULT behavior)
//          1 - Ignore the vfe varS fuse check
#define NV_REG_STR_RM_VFE_VARS_VERSION_CHECK_IGNORE_NO                   0x00000000
#define NV_REG_STR_RM_VFE_VARS_VERSION_CHECK_IGNORE_YES                  0x00000001

#define NV_REG_STR_RM_HW_SPEEDO_CHECK_IGNORE                "RMHwSpeedoCheckIgnore"
// Type DWORD
// Encoding 0 - Don't ignore the speedo fuse check  (DEFAULT behavior)
//          1 - Ignore the speedo fuse check
#define NV_REG_STR_RM_HW_SPEEDO_CHECK_IGNORE_NO                       0x00000000
#define NV_REG_STR_RM_HW_SPEEDO_CHECK_IGNORE_YES                      0x00000001

#define NV_REG_STR_RM_HW_SPEEDO_OVERRIDE                    "RMHwSpeedoOverride"
// Type DWORD
// Encoding <value> - HW speedo value to be overridden
// This override mechanism has the highest priority.
//

#define NV_REG_STR_RM_PMGR_SPEEDO_COEFFICIENT               "RmPmgrSpeedoCoefficient"
// Type DWORD
// Encoding <UFXP4.12> - HW speedo scaling factor
// This override mechanism has the least priority.
//

#define NV_REG_STR_RM_PMGR_SPEEDO_OFFSET                    "RmPmgrSpeedoOffset"
// Type DWORD
// Encoding <value> - HW speedo offset
// This override mechanism has the same priority as RmPmgrSpeedoCoefficient
//

#define NV_REG_STR_RM_HW_SPEEDO_1_OVERRIDE            "RMHwSpeedo1Override"
// Type DWORD
// Encoding <value> - HW speedo value to be overridden
// This override mechanism has the highest priority.
//

#define NV_REG_STR_RM_HW_SPEEDO_2_OVERRIDE            "RMHwSpeedo2Override"
// Type DWORD
// Encoding <value> - HW speedo value to be overridden
// This override mechanism has the highest priority.
//

/*!
 * Override the HW fuse - Global Poison Enable, for internal SKU GA100
 * which are post ECO. Post ECO GA100 use SM_TTU fuse for Global poison fuse and
 * as per Bug 2857928, VBIOS will enable Global poison using feature override register
 * (NV_FUSE_FEATURE_OVERRIDE_QUADRO {_SM_TTU_OVERRIDE | _SM_TTU} )for post ECO
 * GA100 internal SKU's (both signed and unsigned INT-* and V0*) and also remove
 * PLM protection for NV_FUSE_FEATURE_OVERRIDE_QUADRO register on internal SKUs.
 * This will enable RM to disable Global poison fuse for MODS builds.
 *
 * The registry key allows users (MODS, QA) to enable or disable the Global Poison
 * fuse on internal SKU's of post ECO GA100 GPU.
 *
 * Type: DWORD
 *
 * _DEFAULT - This value will not override and will instead use the HW fuse
 * _ENABLE  - This value will enable Global Poison HW fuse
 * _DISABLE - This value will disable Global Poison HW fuse
 */
#define NV_REG_STR_RM_GLOBAL_POISON_OVERRIDE                "RmGlobalPoisonOverride"
#define NV_REG_STR_RM_GLOBAL_POISON_OVERRIDE_DEFAULT        0x0
#define NV_REG_STR_RM_GLOBAL_POISON_OVERRIDE_ENABLE         0x1
#define NV_REG_STR_RM_GLOBAL_POISON_OVERRIDE_DISABLE        0x2

#define NV_REG_STR_RM_ECC_FUSE_IGNORE                       "RMNoECCFuseCheck"
// Type DWORD
// Encoding 0 - Don't ignore the ECC fuse (DEFAULT behavior)
//          1 - Ignore the ECC fuse

#define NV_REG_STR_RM_NO_ECC_FB_SCRUB                        "RMNoECCFBScrub"
// Type DWORD
// Encoding 0 - Don't ignore the PCI Devid check b/w vbios and chip (DEFAULT behavior)
//          1 - Ignore the PCI Devid check
// This is only used in debug and/or mods builds for testing

#define NV_REG_STR_RM_ECC_L1_ENABLE                       "RMEnableL1ECC"
// Type DWORD
// Encoding 1 - Force enable L1 ECC

#define NV_REG_STR_RM_ECC_SM_ENABLE                       "RMEnableSMECC"
// Type DWORD
// Encoding 1 - Force enable SM ECC

#define NV_REG_STR_RM_ECC_SHM_ENABLE                       "RMEnableSHMECC"
// Type DWORD
// Encoding 1 - Force enable SHM ECC

#define NV_REG_STR_RM_AERR_FORCE_DISABLE               "RMAERRForceDisable"
#define NV_REG_STR_RM_AERR_FORCE_DISABLE_TRUE                             1
#define NV_REG_STR_RM_AERR_FORCE_DISABLE_FALSE                            0
// Type DWORD
// 1 - Force AERR disable
// 0 - Use default AERR enablement
// Disable HBM AERR interrupt handling

#define NV_REG_STR_RM_STALL_CYCLES_ISO_COMMIT_UNALLOCATE        "RMIsoCommitUnallocate"
#define NV_REG_STR_RM_STALL_CYCLES_ISO_COMMIT_UNALLOCATE_NEVER  0xff
// Type DWORD
// 0xff - Set _STALL_CYCLES_ISO_COMMIT_UNALLOCATE = NEVER
// (anything else) - use default setting
// WAR to avoid potential livelock in CBC.  See bug 1730392 for details.

#define NV_REG_ASSERT_ON_ECC_ERRORS                       "RMAssertOnEccErrors"
// Type DWORD
// Encoding 1 - RM will assert when we get ECC interrupts: Debug Feature

#define NV_REG_STR_DISABLE_ROBUST_CHANNEL_RECOVERY_ON_DBE  "RMDisableRCOnDBE"
// Type DWORD
// Encoding boolean
// zero (default) -- Robust Channel recovery will occur on a Double Bit error.
// nonzero        -- Robust Channel recovery will not occur on a DBE.

#define NV_REG_STR_SYSTEM_CRASH_ON_ECC_DBE          "RMSystemCrashOnEccDBE"
// Type DWORD
// Encoding 0 (default) - Don't crash node
//          1           - Crash node on ECC DBE

#define NV_REG_STR_SYSTEM_CRASH_ON_NVLINK_TL_ERR    "RMSystemCrashOnNvLinkTlErr"
#define NV_REG_STR_SYSTEM_CRASH_ON_NVLINK_TL_ERR_DEFAULT    0
#define NV_REG_STR_SYSTEM_CRASH_ON_NVLINK_TL_ERR_ENABLE     1
#define NV_REG_STR_SYSTEM_CRASH_ON_NVLINK_TL_ERR_DISABLE    2
// Type DWORD
// Encoding 0 (default) - Only crash node for NVLink 1.0 sysmem link TL errors
//          1           - Crash node on any NVLink TL error
//          2           - Don't crash node on any NVLink TL error

#define NV_REG_STR_RM_INIT_SCRUB                          "RMInitScrub"
// Type DWORD
// Encoding 1 - Scrub Fb during rminit irrespective of ECC capability

#define  NV_REG_STR_RM_DISABLE_SCRUB_ON_FREE          "RMDisableScrubOnFree"
// Type DWORD
// Encoding 0 (default) - Scrub on free
//          1           - Disable Scrub on Free

#define  NV_REG_STR_RM_DISABLE_FAST_SCRUBBER          "RMDisableFastScrubber"
// Type DWORD
// Encoding 0 (default) - Enable Fast Scrubber
//          1           - Disable Fast Scrubber


#define  NV_REG_STR_RM_SCRUB_BLOCK_SHIFT               "RMScrubBlockShift"
// Type DWORD
// Encoding Numeric Value
// A value in the range 12 to 20 represents logbase2 of maxBlockSize for heap
// scrubber. Any other value will be defaulted to 16 i.e. maxBlockSize = 64KB.

#define NV_REG_STR_RM_DISABLE_ASYNC_MEM_SCRUB         "RMDisableAsyncMemScrub"
// Type DWORD
// Encoding 0 (default) - Async memory scrubbing is enabled
//          1           - Async memory scrubbing is disabled

#define NV_REG_STR_RM_INCREASE_ECC_SCRUB_TIMEOUT         "RM1441072"
// Type DWORD
// Encoding 0 (default) - Use default ECC Scrub Timeout
//          1           - Increase ECC Scrub Timeout

#define NV_REG_STR_FAN_SKIP_UNLOAD     "RMFanSkipUnload"
// Type DWORD
// Encoding 0 - Don't skip fan Unload(DEFAULT behavior)
//          1 - Skip fan Unload
// This is  used for ogtests Please refer to bug 556599

#define NV_REG_STR_RM_VBIOS_FROM_ACPIROM      "RMEnableAcpiRom"
// Type DWORD
// Encoding boolean.
// Enable/Disable ACPI ROM method for non Hybrid system
// Some Discrete GPU system requires ACPI ROM method for extracting the VBIOS image,
// by default ACPI ROM method is being used for only Hybrid system
// nonzero        - Enable the ACPI ROM method, Only if BIOS supports ACPI_ROM
// zero (default) - Disable the ACPI ROM method for Non Hybrid

#define NV_REG_STR_RM_VBIOS_PREFER_ACPIROM     "RM976975"
// Type DWORD
// Encoding boolean
// When set to non-zero, RM will attempt to retrieve VBIOS image from ACPI _ROM
// before attempting ROM.  Note that this does NOT actually enable the use of
// ACPI _ROM (see RMEnableAcpiRom).

#define NV_REG_STR_RM_MXM30_RETRY_DDC_PORT          "RM545179"
// Type DWORD
// Encoding boolean
// zero    -- (default) Do nothing
// nonzero -- RM will use DDC port (value - 1) to read MXM ROM when it fails
// to read it using the default port.
//

#define NV_REG_STR_RM_SHARED_LVDS_SOR_WAR     "RM1292711"
// Type DWORD
// Encoding boolean
// When set to non-zero, Enable the WAR for HP bug 1292711 due to shared SOR between fake LVDS and TMDS

//
// This key is an override for the OPSB feature (more information below). The
// RM_OPSB key will not be given to customers, this is being added as a way
// to provide a safer key that can override the feature as a whole.
// Bug 580312.
#define NV_REG_STR_RM_OPSB_OVERRIDE                         "RM580312"
// Type Binary
//
//  Length:
//    Number of Bytes to read.
//
// Encoding:
//    ENABLE    enables the feature
//    DISABLE   disables the feature
//
#define NV_REG_STR_RM_OPSB_OVERRIDE_LENGTH                  1

#define NV_REG_STR_RM_OPSB_OVERRIDE_DISABLE                 0
#define NV_REG_STR_RM_OPSB_OVERRIDE_ENABLE                  1

//
// This OPSB (Optional Power Saving Bundle) regkey is a global override for the
// power saving features listed below. This regkey will override the OPSB fuse
// as well as the vbios bits (if present) for a feature.
//
#define NV_REG_STR_RM_OPSB                                  "RMOPSB"
// Type DWORD
// Encoding:
//    ENABLE    enables the feature
//    DISABLE   disables the feature
//
// NV_REG_STR_RM_OPSB_AELPG = _MONITOR, means that AELPG would collect the histogram
// statistics etc. without actually changing the ELPG threshold. (bug 574609)
//
#define NV_REG_STR_RM_OPSB_ASR                              1:0
#define NV_REG_STR_RM_OPSB_ASR_DEFAULT                      (0x00000000)
#define NV_REG_STR_RM_OPSB_ASR_ENABLE                       (0x00000001)
#define NV_REG_STR_RM_OPSB_ASR_DISABLE                      (0x00000002)
#define NV_REG_STR_RM_OPSB_RESERVED                         3:2
#define NV_REG_STR_RM_OPSB_CLKREQ                           5:4
#define NV_REG_STR_RM_OPSB_CLKREQ_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_OPSB_CLKREQ_ENABLE                    (0x00000001)
#define NV_REG_STR_RM_OPSB_CLKREQ_DISABLE                   (0x00000002)
#define NV_REG_STR_RM_OPSB_DEEP_L1                          7:6
#define NV_REG_STR_RM_OPSB_DEEP_L1_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_OPSB_DEEP_L1_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_OPSB_DEEP_L1_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_OPSB_DEEP_IDLE                        9:8
#define NV_REG_STR_RM_OPSB_DEEP_IDLE_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_OPSB_DEEP_IDLE_ENABLE                 (0x00000001)
#define NV_REG_STR_RM_OPSB_DEEP_IDLE_DISABLE                (0x00000002)
#define NV_REG_STR_RM_OPSB_AELPG                            11:10
#define NV_REG_STR_RM_OPSB_AELPG_DEFAULT                    (0x00000000)
#define NV_REG_STR_RM_OPSB_AELPG_ENABLE                     (0x00000001)
#define NV_REG_STR_RM_OPSB_AELPG_DISABLE                    (0x00000002)
#define NV_REG_STR_RM_OPSB_AELPG_MONITOR                    (0x00000003)
#define NV_REG_STR_RM_OPSB_VIDEO_ELPG                       13:12
#define NV_REG_STR_RM_OPSB_VIDEO_ELPG_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_OPSB_VIDEO_ELPG_ENABLE                (0x00000001)
#define NV_REG_STR_RM_OPSB_VIDEO_ELPG_DISABLE               (0x00000002)

#define NV_REG_STR_RM_DUAL_HEAD_MCLK_SWITCH                     "RM592311"
// Type DWORD
// Originally this option was in RMOPSB, but we have decided to give it
// its own regkey. This controls whether or not we allow a mclk switching
// in dual head.
//
#define NV_REG_STR_RM_DUAL_HEAD_MCLK_SWITCH_ENABLE              1:0
#define NV_REG_STR_RM_DUAL_HEAD_MCLK_SWITCH_ENABLE_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_DUAL_HEAD_MCLK_SWITCH_ENABLE_TRUE         (0x00000001)
#define NV_REG_STR_RM_DUAL_HEAD_MCLK_SWITCH_ENABLE_FALSE        (0x00000002)


#define NV_REG_STR_ATTRIBUTE_CB_TIMESLICE_MODE             "RMAttributeCbTimesliceMode"
#define NV_REG_STR_ATTRIBUTE_CB_TIMESLICE_MODE_ENABLE  1
#define NV_REG_STR_ATTRIBUTE_CB_TIMESLICE_MODE_DISABLE 0
#define NV_REG_STR_ATTRIBUTE_CB_TIMESLICE_MODE_DEAULT NV_REG_STR_ATTRIBUTE_CB_TIMESLICE_MODE_ENABLE
// Type DWORD:
// Encoding -- Boolean
// tell gr whether to use timeslice mode for attribute CB

#define NV_REG_STR_RM_ENABLE_CLK                 "RMEnableClk"
// TYPE DWORD
// Encoding -- Bit mask
// Filters the readable/programmable clk mask by ORing the given mask with it

#define NV_REG_STR_RM_PROGRAMMABLE_CLK_MASK      "RMProgrammableClkMask"
// TYPE DWORD
// Encoding -- Bit mask
// Filter the programmable clk mask by ANDing the given mask with it

#define NV_REG_STR_RM_CLK_VF_OVERRIDE            "RMClkVfOverride"
// TYPE DWORD
// Encoding -- Bit mask
// Filter the programmable clk mask by ANDing the given mask with it
#define NV_REG_STR_RM_CLK_VF_OVERRIDE_MONOTONICITY_ENABLE                    1:0
#define NV_REG_STR_RM_CLK_VF_OVERRIDE_MONOTONICITY_ENABLE_DEFAULT     0x00000000
#define NV_REG_STR_RM_CLK_VF_OVERRIDE_MONOTONICITY_ENABLE_TRUE        0x00000001
#define NV_REG_STR_RM_CLK_VF_OVERRIDE_MONOTONICITY_ENABLE_FALSE       0x00000003
#define NV_REG_STR_RM_CLK_VF_OVERRIDE_SMOOTHENING_ENABLE                     3:2
#define NV_REG_STR_RM_CLK_VF_OVERRIDE_SMOOTHENING_ENABLE_DEFAULT      0x00000000
#define NV_REG_STR_RM_CLK_VF_OVERRIDE_SMOOTHENING_ENABLE_TRUE         0x00000001
#define NV_REG_STR_RM_CLK_VF_OVERRIDE_SMOOTHENING_ENABLE_FALSE        0x00000003

// Type DWORD:
// Encoding -- Bit-mapping
// Applies to GDDR5 on GF1xx and later
// _ENABLE           : Enable link training. (enabled by default)
// _ON               : No currently being used.
// _PATTERN_VBIOS    : Enable VBIOS memory pattern table. (enabled by default)
// _PATTERN_INTERNAL : Disable internal memory pattern table (disabled by default)
// If both _VBIOS and _INTERNAL are enabled, the VBIOS pattern table is used
// iff it exists in the ROM, and the internal pattern table is used otherwise.
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING              "RMFbLinkTraining"
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_DEFAULT             0x00000000
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_ENABLE                    0:0
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_ENABLE_TRUE                 0
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_ENABLE_FALSE                1
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_ON                        4:4
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_ON_CPU                      0
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_ON_PMU                      1
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_PATTERN                   5:6
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_PATTERN_VBIOS             5:5
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_PATTERN_VBIOS_ENABLE        0
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_PATTERN_VBIOS_DISABLE       1
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_PATTERN_INTERNAL          6:6
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_PATTERN_INTERNAL_ENABLE     0
#define NV_REG_STR_RM_ENABLE_FB_LINK_TRAINING_PATTERN_INTERNAL_DISABLE    1

// Type DWORD
// Encoding bit mask
// bit 0 : Enable fb link training
// bit 1 : Use CPU or PMU for link training
// Bit mask defined in rmTracer.h
//

#define NV_REG_STR_RM_GPU_CACHE_ONLY                         "RMGpuCacheOnly"
// Type DWORD
// Encoding boolean
// If set, this will cause RM operate in GPU Cache Only Mode and limit the FB
// size to the size of GPU Cache for functional BIST

#define NV_REG_STR_RM_ENABLE_REPLAYABLE                  "RMEnableReplayable"
// Type DWORD
// Encoding boolean
// If set, this will enable RM functionality for generating logs to be
// used in creating traces for functional BIST.

#define NV_REG_STR_RM_L2_MAX_WAYS_SYSMEM                     "RML2MaxWaysSysmem"
// Type DWORD
// Encoding Numeric Value
// In cache only mode, sets the L2 MAX WAYS SYSMEM RD PINNED value which is used by
// by RM to control how much L2 cache will be reserved for sysmem reads vs vidmem operations
#define NV_REG_STR_RM_L2_MAX_WAYS_SYSMEM_0_WAYS             0 // Used for vidmem only
#define NV_REG_STR_RM_L2_MAX_WAYS_SYSMEM_7_WAYS             7 // Used for mixed sysmem/vidmem

#define NV_REG_STR_RM_L2_PRE_FILL                            "RML2PreFill"
// Type DWORD
// If set, RM will do a one-time pre-fill of all L2 cache during pre-init rather than on-demand
// pre-filling when in cache only mode

#define NV_REG_STR_RM_BAR1_APERTURE_SIZE_MB                  "RMBar1ApertureSizeMB"
// Type DWORD
// Encoding Numeric Value
// Overrides the size of the BAR1 aperture. Used to shrink BAR1. It cannot be
// greater than the physical size of BAR1.

#define NV_REG_STR_RESTORE_BAR1_SIZE_BUG_3249028_WAR         "RMBar1RestoreSize"
#define NV_REG_STR_RESTORE_BAR1_SIZE_BUG_3249028_TRUE        (0x00000001)
#define NV_REG_STR_RESTORE_BAR1_SIZE_BUG_3249028_FALSE       (0x00000000)
// Type DWORD:
// Encoding -- Boolean
// Check if BAR1 size has been restored correctly by SBIOS across power transitions
// Default: enabled for Ampere and up
//

#define NV_REG_STR_RM_BAR2_APERTURE_SIZE_MB                  "RMBar2ApertureSizeMB"
// Type DWORD
// Encoding Numeric Value
// Overrides the size of the BAR2 aperture.  Cannot be greater than the
// physical size of BAR2 available to RM (which may be less than the total size
// of BAR2).  When this regkey is present we cap the total aperture size to the
// RM aperture size. This can result in undefined beahvior in environments that
// rely on a virtual bar2 aperture shared between RM and VBIOS for VESA support.

#define NV_REG_STR_RM_PMA_VAS_USE_57B_BASE                   "RMPmaVas57b"
// Type DWORD
// Encoding boolean
// Overrides the base virtual address of the PMA VA space. Sets the base so that
// the last VA of the VAS equals 57b VA maximum address.

#ifdef NV_VERIF_FEATURES
#define NV_REG_STR_RM_BAR2_BASE_GB                            "RMBar2BaseGB"
// Type DWORD
// Encoding Numeric Value
// Overrides the base VA of BAR2. Cannot be greater than
// (Max supported VA limit) - (BAR2 cpu invisible aperture size) as we would overflow the max VA Limit
// When this regkey is present the BAR2 VA mappings will be in the range of
// NV_REG_STR_RM_BAR2_BASE : BAR2 aperture size
#endif

#if defined(DEVELOP) || defined(DEBUG)
#define NV_REG_STR_RM_MAP_COMP_BIT_BACKING_STORE_BAR1        "RMMapCompBitBackingStore"
// Type DWORD
// Encoding Numeric Value
// Maps the compbit backing store via BAR1. Its a test mode that exists for debug purposes
// in case updates to CBC backing store via Copy Engines do not work.
#endif //DEVELOP || DEBUG

#define NV_REG_STR_RM_QUADRO_TUNE "QTNE"
// Type Dword
// Encoding --
//
#define NV_REG_STR_RM_QUADRO_TUNE_RASTER_BBOX_PAD                          7:0
#define NV_REG_STR_RM_QUADRO_TUNE_RASTER_BBOX_PAD_QUADRO                   (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_RASTER_BBOX_PAD_GEFORCE                  (0x00000006)
#define NV_REG_STR_RM_QUADRO_TUNE_RASTER_BBOX_PAD_LINE                     15:8                // overlap with VPC_CULLED_SMALL_TRIANGLES_LINE
#define NV_REG_STR_RM_QUADRO_TUNE_RASTER_BBOX_PAD_LINE_QUADRO              (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_RASTER_BBOX_PAD_LINE_GEFORCE             (0x00000020)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_STIPPLED_LINE                        13:6                // overlap with RASTER_BBOX_PAD_LINE / RASTER_BBOX_PAD
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_STIPPLED_LINE_QUADRO                 (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_STIPPLED_LINE_TITAN                  (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_STIPPLED_LINE_GEFORCE                (0x00000078)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_CULLED_SMALL_TRIANGLES_LINE          21:14               // overlap with RASTER_BBOX_PAD_LINE
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_CULLED_SMALL_TRIANGLES_LINE_QUADRO   (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_CULLED_SMALL_TRIANGLES_LINE_TITAN    (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_CULLED_SMALL_TRIANGLES_LINE_GEFORCE  (0x00000078)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_NONCULLED_TRIANGLES_LINE             29:22
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_NONCULLED_TRIANGLES_LINE_QUADRO      (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_NONCULLED_TRIANGLES_LINE_TITAN       (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_VPC_NONCULLED_TRIANGLES_LINE_GEFORCE     (0x00000078)
#define NV_REG_STR_RM_QUADRO_TUNE_ARCH_OVERRIDE                            30:30
#define NV_REG_STR_RM_QUADRO_TUNE_ARCH_OVERRIDE_DISABLED                   (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_ARCH_OVERRIDE_ENABLED                    (0x00000001)
#define NV_REG_STR_RM_QUADRO_TUNE_GPU                                      31:31
#define NV_REG_STR_RM_QUADRO_TUNE_GPU_QUADRO                               (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_GPU_GEFORCE                              (0x00000001)
#define NV_REG_STR_RM_QUADRO_TUNE_DISABLED                                 (0xffffffff)

#define NV_REG_STR_RM_QUADRO_TUNE_2 "QTNE2"
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_CULLED_SMALL_LINES                 7:0
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_CULLED_SMALL_LINES_QUADRO          (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_CULLED_SMALL_LINES_TITAN           (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_CULLED_SMALL_LINES_GEFORCE         (0x00000038)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_CULLED_SMALL_TRIANGLES             15:8
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_CULLED_SMALL_TRIANGLES_QUADRO      (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_CULLED_SMALL_TRIANGLES_TITAN       (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_CULLED_SMALL_TRIANGLES_GEFORCE     (0x00000018)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_NONCULLED_LINES_AND_POINTS         23:16
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_NONCULLED_LINES_AND_POINTS_QUADRO  (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_NONCULLED_LINES_AND_POINTS_TITAN   (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_NONCULLED_LINES_AND_POINTS_GEFORCE (0x0000000c)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_NONCULLED_TRIANGLES_LINE           31:24
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_NONCULLED_TRIANGLES_LINE_QUADRO    (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_NONCULLED_TRIANGLES_LINE_TITAN     (0x00000000)
#define NV_REG_STR_RM_QUADRO_TUNE_2_VPC_NONCULLED_TRIANGLES_LINE_GEFORCE   (0x0000000c)


#define NV_REG_STR_PSTATES_CHANGE_IRQL          "RM554484"
#define NV_REG_STR_PSTATES_CHANGE_IRQL_LOW      0
#define NV_REG_STR_PSTATES_CHANGE_IRQL_HIGH     1
#define NV_REG_STR_PSTATES_CHANGE_IRQL_DEFAULT  NV_REG_STR_PSTATES_CHANGE_IRQL_LOW
// Type DWORD
// Encoding boolean:
// Customer could hear some glitch noise when P-state change.
// This is because we spend too much time on DPC_LEVEL.
// Enable this registry key can make p-state change at PASSIVE_LEVEL.
// 0 (default) - P-state change will run at PASSIVE_LEVEL.
// 1 - P-state change will run at DPC_LEVEL.

// DEPRECATED, use RmPerfLimitsOverride (Lock = 0x2) instead
#define NV_REG_STR_RM_DISABLE_PSTATES           "RMDisablePStates"
// Type Dword
// Set to 0x1 to disable P-State Switches.
// In general, be very careful before using this regkey to disable P-states,
// especially on discrete GPUs. The best way would be to use a non-Pstate VBIOS.


#define NV_REG_STR_RM_DISABLE_PERF_INTERSECT    "RMDisablePerfIntersect"
// Type Dword
// Set to 0x1 to disable the perf intersect feature

#ifdef NV_VERIF_FEATURES
#define NV_REG_STR_RM_624000  "RM624000"
// Type DWORD
// Encoding boolean:
// To decide whether RM need to busy-wait for NV_PGRAPH_STATUS_FE_METHOD_LOWER_IDLE for Bug 624000
// 1  Wait for NV_PGRAPH_STATUS_FE_METHOD_LOWER_IDLE for Bug 624000
// zero(default) - Do not wait, No WAR
// this reg key is only for full chip RTL runs, on silicon after injecting the bundle RM busy waits for
// status NV_PGRAPH_STATUS_FE_METHOD_LOWER_IDLE because of Bug 624000 , on RTL runs if its enaled by default
// it can cause perf slowdown issues, its temporary regkey will get removed in future chips after GK20x
#define NV_REG_STR_RM_624000_WAIT_FOR_LOWER_IDLE_YES 1
#define NV_REG_STR_RM_624000_WAIT_FOR_LOWER_IDLE_NO  0
#endif

#define NV_REG_STR_RM_572548                    "RM572548"
// Type DWORD
// Encoding boolean:
// To decide whether we need to busy-wait for sequencer after writing new sor power settings.
// zero (default) - Wait blockingly for sequencer operation to finish.
// nonzero - Do not wait.

#define NV_REG_STR_RM_SUPPORT_USERD_MAP_DMA     "RMSupportUserdMapDma"
// Type DWORD
// Encoding: Boolean
// If set, allow MapMemoryDma calls to be made on channel objects

#define NV_REG_STR_RM_ENABLE_QOS_RUNLIST_INTR    "RMEnableQoSRunlistIntr"
// Type DWORD
// Encoding: Boolean
// Default: Disabled
// If set, RM would enable the following QoS intrs globally:
//  - RUNLIST_IDLE
//  - RUNLIST_AND_ENG_IDLE
//  - RUNLIST_ACQUIRE
//  - RUNLIST_AQUIRE_AND_ENG_IDLE

#define NV_REG_STR_GPC_TILE_MAP                 "RMGpcTileMap"
// Type String
// encoded string to setup the GPC/TPC screen tile mapping
// the encoding is V0:V2:V3:VN
// where V? is the table entry represented  by a valid GPC number
// number of entries must equal the # TPC in the system
// entry numbers must be 0..N, where N is (#GPC's - 1)
//

#define NV_REG_STR_FERMI_L2_BYPASS              "RMFermiL2CacheBypass" // Fermi only
#define NV_REG_STR_FERMI_L2_BYPASS_DISABLE      0
#define NV_REG_STR_FERMI_L2_BYPASS_ENABLE       1
// Encoding boolean:
// L2_BYPASS_DISABLE - (Fermi only) Normal operation--don't bypass L2 cache
// L2_BYPASS_ENABLE - (Fermi TEST ONLY) Enable a debug mode where all
//                    transactions miss in L2 and no writes are combined,
//                    essentially disabling the caching feature of the L2 cache

#define NV_REG_STR_DISABLE_LRC_COALESCING            "RMDisableLRCCoalescing"
#define NV_REG_STR_DISABLE_LRC_COALESCING_FALSE      0
#define NV_REG_STR_DISABLE_LRC_COALESCING_TRUE       1
// Type DWORD
// Regkey to disable LRC coalescing
// 0 - (default - enabled)
// 1 - Disables LRC coalescing, LRC will be transparent to XBAR and L2.

// Override the OFIFO Val for each P-State with the value passed in by the client.
#define NV_REG_STR_RM_OFIFO_VAL                 "RMOFIFOVal"

// Override the Trimmer Val for each P-State with the value passed in by the client.
#define NV_REG_STR_RM_FB_TRIMMER_VAL                                     "RMFBTrimmerVal"
#define NV_REG_STR_RM_FB_TRIMMER_VAL_CMD_TRIMMER_LSB                      0:0
#define NV_REG_STR_RM_FB_TRIMMER_VAL_CMD_TRIMMER_LSB_DISABLE                0
#define NV_REG_STR_RM_FB_TRIMMER_VAL_CMD_TRIMMER_LSB_ENABLE                 1
#define NV_REG_STR_RM_FB_TRIMMER_VAL_DATALO_TRIMMER_LSB                   1:1
#define NV_REG_STR_RM_FB_TRIMMER_VAL_DATALO_TRIMMER_LSB_DISABLE             0
#define NV_REG_STR_RM_FB_TRIMMER_VAL_DATALO_TRIMMER_LSB_ENABLE              1
#define NV_REG_STR_RM_FB_TRIMMER_VAL_DATAHI_TIMMER_LSB                    3:3
#define NV_REG_STR_RM_FB_TRIMMER_VAL_DATAHI_TIMMER_LSB_DISABLE              0
#define NV_REG_STR_RM_FB_TRIMMER_VAL_DATAHI_TIMMER_LSB_ENABLE               1
#define NV_REG_STR_RM_FB_TRIMMER_VAL_ALL_TRIMMER_MSB                      8:8
#define NV_REG_STR_RM_FB_TRIMMER_VAL_ALL_TRIMMER_MSB_DISABLE                0
#define NV_REG_STR_RM_FB_TRIMMER_VAL_ALL_TRIMMER_MSB_ENABLE                 1
#define NV_REG_STR_RM_FB_TRIMMER_VAL_RESERVED                           31:31

// Type DWORD
// If set to non-zero, we will not check the platform (NB/DT) a NB GPUs is on
#define NV_REG_STR_RM_SKIP_NB_GPU_PLATFORM_CHECK    "RM1457588"

// Type DWORD
// If set to non-zero, we will not check the platform (NB/DT) a NB GPU is on
#define NV_REG_STR_RM_SKIP_DT_GPU_PLATFORM_CHECK    "RM1774520"

#define NV_REG_STR_HEADLESS_OPTIMUS                 "RM628700"
// Type DWORD
// Encoding boolean.
// This'll tell us whether Optimus system is treated as headless?
// Based on this Do / Skip the display output device detection as a part of WAR [for bug 628700]
// as there was a false load detect on some of the Optimus systems due to HW design issue.
// 0 - System is not headless
// !0 - System is headless

// Type DWORD
// If set to non-zero, override AC/DC state of GPIO_FUNC_EXT_PERF_CONTROL_HWSLOW with MMIO 0xFC7E081B.
#define NV_REG_STR_RM_EPC_HWSLOW_FC7E081B       "EPC_HWSLOW_FC7E081B"

#define NV_REG_STR_RM_RESERVED_MEM_BASE         "RMReservedMemoryBase"
// Type DWORD
// Encoding enum
// By Default, reserved memory base is at last 1MB of FB.
// If set to 1, reserved memory base is moved to bottom of FB.
// Default 0
#define NV_REG_STR_RM_RESERVED_MEM_BASE_FB_TOP           (0x00000000)
#define NV_REG_STR_RM_RESERVED_MEM_BASE_FB_BOTTOM        (0x00000001)

#define NV_REG_STR_RM_DISABLE_EDC             "RMDisableEDC"
// Type DWORD
// Encoding boolean.
// Override VBIOS EDC on/off setting and disable EDC and EDC replay.
// GDDR5 only.

#define NV_REG_STR_RM_DISABLE_EDC_REPLAY      "RMDisableEDCReplay"
// Type DWORD
// Encoding boolean.
// Override the default EDC replay on/off setting and disable EDC replay.
// GDDR5 only.


#define NV_REG_STR_RM_LOCKING_MODE              "RMLockingMode"
// Type DWORD
// Encoding enum
// Overrides what Locking Mode is in use.
// Default 0
#define NV_REG_STR_RM_LOCKING_MODE_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_LOCKING_MODE_INTR_MASK             (0x00000001)
#define NV_REG_STR_RM_LOCKING_MODE_LAZY_INTR_DISABLE     (0x00000002)

#define NV_REG_STR_RM_CTXSW_PG_RESET             "RMCtxSwPgReset"
// Type DWORD
// Encoding boolean.
// Override context switch reset scheme during elpg
// Default FALSE
#define NV_REG_STR_RM_CTXSW_PG_RESET_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_CTXSW_PG_RESET_DISABLE      (0x00000001)
#define NV_REG_STR_RM_CTXSW_PG_RESET_ENABLE       (0x00000002)

#define NV_REG_STR_INTR_STUCK_THRESHOLD         "RM654663"
// Type DWORD
// Encoding NvU32
// Number of iterations to see an interrupt in succession before considering it
// "stuck."
// Default - See INTR_STUCK_THRESHOLD

#define NV_REG_STR_RM_GR_REG_INIT_OVERRIDE      "RmGrRegInitOverride"
// Type DWORD
// Encoding enum
// Override the default set of graphics register sets to initialize.
// Default 0
#define NV_REG_STR_RM_GR_REG_INIT_OVERRIDE_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_GR_REG_INIT_OVERRIDE_PROD_DIFF     (0x00000001)


#define NV_REG_STR_RM_ZBC_FLUSH_ENABLE          "RMZBCFlushEnable"
// Type DWORD
// Encoding boolean
// Default FALSE

#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH                                "RmIsoHubMCLKSwitch"
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE                            3:0
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_NONE                       0x0
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_MID_FRAME_ENABLE           0x1
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_DWCF_ENABLE                0x2
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_MID_AND_DWCF_ENABLE        0x3
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_DMI_ENABLE                 0x4
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_MID_AND_DMI_ENABLE         0x5
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_DWCF_AND_DMI_ENABLE        0x6
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_MID_DWCF_AND_DMI_ENABLE    0x7
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_LEGACY_VBLANK_ENABLE       0x8
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_VRR                        4:4
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_VRR_DISABLE                0x0
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_VRR_ENABLE                 0x1
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_OSM                        5:5
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_OSM_DISABLE                0x0
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_MODE_OSM_ENABLE                 0x1
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_ADDITIONAL_DELAY               15:8
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_ADDITIONAL_DELAY_DEFAULT        0x0
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_ADDITIONAL_DELAY_ZERO           0x0
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_ADDITIONAL_DELAY_MAX           0xff
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_REPLACEMENT_DELAY             23:16
#define NV_REG_STR_RM_ISOHUB_MCLK_SWITCH_REPLACEMENT_DELAY_DEFAULT       0x0

// Type DWORD:
// Encoding -- Numeric bitmap field
// Applicable : GF119+ chips
//
// Note: On Ampere and later products, if the reg key is used to enable MID FRAME but disable DWCF, DWCF will actually
// be only partially disabled. Furthermore, disabling DWCF while MID FRAME is enabled changes the frame timer, which
// MSCG also uses, so it is recommended that MSCG be disabled in this configuration.
//
// Note:
// On Turing and earlier products, we have the following mclk switch methods:
//     1) Memfetch vblank mode (_DMI enables/disables it)
//     2) Midframe submode (_MID_FRAME enables/disables it)
//     3) DWCF submode (_DWCF enables/disables it)
// On Ampere and later products, we have the following mclk switch methods:
//     1) Timer mechanism (_DWCF enables/disables it)
//     2) Midframe submode (_MID_FRAME enables/disables it).
//
// _LEGACY_VBLANK is only supported on Pascal and earlier products.
//
// _MODE              Specify all possible different combinations of enabling mclk switch modes
// _NONE              Unknown Mclk Switch Mode, RM will use settings that got set by default. Need to use this mode
//                    if someone wants to just add delays (i.e 15:8 bits) with RM default mclk switch mode settings.
// _MID_FRAME:        Enable only MID FRAME watermark based mclk switching
// _DWCF:             Enable only DWCF watermark based mclk switching.
// _DMI:              Enable only DMI watermark based  mclk switching (Applicable only for GK104+ chips only).
// _LEGACY_VBLANK     Enable only LEGACY VBLANK i.e Disable ihub based mclk switching mode and defaults to old wait for vblank method.
//                    Set this field if some one wants to disable ihub based mclk switching path.
// _MID_AND_DWCF      Enable  MID FRAME and DWCF watermark based mclk switching.
// _MID_AND_DMI       Enable  MID FRAME and DMI watermark based mclk switching (Applicable only for GK104+ chips only).
// _DWCF_AND_DMI      Enable  DWCF and DMI watermark based mclk switching (Applicable only for GK104+ chips only).
// _MID_DWCF_AND_DMI  Enable  MID FRAME, DWCF and DMI watermark based mclk switching i.e all watermarks mentioned
//                    are used for window of opportunity calculation for mclk switch (Applicable only for GK104+ chips only).
// _VRR               Enable VRR based mclk switch mechanism (Applicable only for GK104+ chips only)
// _OSM               Enable One shot mode based mclk switch (Applicable only for TU10X+ chips only)
//
// _ADDITIONAL_DELAY: Bug 518879/573829: Additional delay (in usec) to add to MCLK switch sequence for testing.
// _REPLACEMENT_DELAY: Delay (in usec) to replace mclk switch with. A value of 0 means allow regular mclk switch to happen.
//

#define NV_REG_STR_RM_LPWR_FSM_STATE                          "RMElpgStateOnInit"
#define NV_REG_STR_RM_LPWR_FSM_STATE_ON_INIT                   1:0
#define NV_REG_STR_RM_LPWR_FSM_STATE_ON_INIT_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_LPWR_FSM_STATE_ON_INIT_ENABLE           (0x00000001)
#define NV_REG_STR_RM_LPWR_FSM_STATE_ON_INIT_DISABLE          (0x00000003)
// Type Dword
// The default is to enable LPWR FSMs On Init. USe this regkey to override
// the default behavior. Note that this is different from RMElpg which
// is to control (per engine) if LPWR FSM is actually supported.
// Encoding
// ENABLE   enables the feature
// DISABLE  disables the feature

#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS                               "RmPgCtrlParameters"
// Type DWORD
// Overrides default settings for MSCG.
//
// DEFAULT  Takes default driver setting for feature
// DISABLE  Disables the feature
// ENABLE   Enables the feature
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SYSCLK_SLOWDOWN                  1:0
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SYSCLK_SLOWDOWN_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SYSCLK_SLOWDOWN_DISABLE          (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SYSCLK_SLOWDOWN_ENABLE           (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_CG                               3:2
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_CG_DEFAULT                       (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_CG_DISABLE                       (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_CG_ENABLE                        (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_RPG                              5:4
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_RPG_DEFAULT                      (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_RPG_DISABLE                      (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_RPG_ENABLE                       (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_GSP                              7:6
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_GSP_DEFAULT                      (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_GSP_DISABLE                      (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_GSP_ENABLE                       (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SWASR                            9:8
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SWASR_DEFAULT                    (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SWASR_DISABLE                    (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SWASR_ENABLE                     (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_ISO_STUTTER                      13:12
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_ISO_STUTTER_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_ISO_STUTTER_DISABLE              (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_ISO_STUTTER_ENABLE               (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_DISPLAY                          15:14
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_DISPLAY_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_DISPLAY_DISABLE                  (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_DISPLAY_ENABLE                   (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_FB_TRAINING                      17:16
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_FB_TRAINING_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_FB_TRAINING_DISABLE              (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_FB_TRAINING_ENABLE               (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_PG_ENG_GR                        19:18
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_PG_ENG_GR_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_PG_ENG_GR_DISABLE                (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_PG_ENG_GR_ENABLE                 (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_RPPG                             21:20
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_RPPG_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_RPPG_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_RPPG_ENABLE                      (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_MSCG_WITH_IMMED_FLIP             23:22
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_MSCG_WITH_IMMED_FLIP_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_MSCG_WITH_IMMED_FLIP_DISABLE     (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_MSCG_WITH_IMMED_FLIP_ENABLE      (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_NVDCLK_SLOWDOWN                  25:24
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_NVDCLK_SLOWDOWN_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_NVDCLK_SLOWDOWN_DISABLE          (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_NVDCLK_SLOWDOWN_ENABLE           (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SEC2_RTOS                        27:26
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SEC2_RTOS_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SEC2_RTOS_DISABLE                (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_SEC2_RTOS_ENABLE                 (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_PERF                             29:28
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_PERF_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_PERF_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_PERF_ENABLE                      (0x00000003)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_UNUSED_1                         31:30
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_UNUSED_1_DEFAULT                 (0x00000000)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_UNUSED_1_DISABLE                 (0x00000001)
#define NV_REG_STR_RM_PGCTRL_MS_PARAMETERS_UNUSED_1_ENABLE                  (0x00000003)

// Type Dword
// Disable MSCG from RM side
#define NV_REG_STR_RM_DWB_MSCG                                              "RmDwbMscg"
#define NV_REG_STR_RM_DWB_MSCG_DISABLE                                      0:0
#define NV_REG_STR_RM_DWB_MSCG_DISABLE_NO                                   (0x00000000)
#define NV_REG_STR_RM_DWB_MSCG_DISABLE_YES                                  (0X00000001)


// TYPE DWORD
// This regkey enables/disables MSCG Configuration feature
// The feature should only work with _MSCG_WITH_IMMED_FLIP_ENABLE in regkey above.
// By default the feature is enabled for Turing and later GPU. Using this regkey
// can override for testing and verification purpose.
//   _WITH_VSYNC: Enable MSCG-configuration based on VSYNC state
//   _WITH_FRL  : Enable MSCG-configuration based on FRL engagement.
//                This only works if _WITH_VSYNC_TRUE.
//
//                    |   VSYNC ON   |  VSYNC OFF with FRL  |  VSYNC OFF Without FRL
//  ----------------------------------------------------------------------------------
//  _WITH_VSYNC_FALSE |  NO CHANGE   |        NO CHANGE     |         NO CHANGE
//  ----------------------------------------------------------------------------------
//  _WITH_VSYNC_TRUE  |  NO CHANGE   |    MSCG DISABLED     |     MSCG DISABLED
//  _WITH_FRL_FALSE   |              |                      |
//  ----------------------------------------------------------------------------------
//  _WITH_VSYNC_TRUE  |  NO CHANGE   |        NO CHANGE     |     MSCG DISABLED
//  _WITH_FRL_TRUE    |              |                      |
//  ----------------------------------------------------------------------------------
//
#define NV_REG_STR_RM_ENABLE_MSCG_CONFIG                             "RMEnableMSCGConfig"
#define NV_REG_STR_RM_ENABLE_MSCG_CONFIG_WITH_VSYNC                          0:0
#define NV_REG_STR_RM_ENABLE_MSCG_CONFIG_WITH_VSYNC_TRUE             (0x00000001)
#define NV_REG_STR_RM_ENABLE_MSCG_CONFIG_WITH_VSYNC_FALSE            (0x00000000)
#define NV_REG_STR_RM_ENABLE_MSCG_CONFIG_WITH_FRL                            1:1
#define NV_REG_STR_RM_ENABLE_MSCG_CONFIG_WITH_FRL_TRUE               (0x00000001)
#define NV_REG_STR_RM_ENABLE_MSCG_CONFIG_WITH_FRL_FALSE              (0x00000000)


#define NV_REG_STR_RM_PGCTRL_MS_ABORT_TIMEOUT                         "RmPgCtrlAbortTimeout"
// Type Dword
// Override default Abort timeout of MSCG in PMU.  Measured in microseconds.
// Not scaled for emulation

#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS                     "RmLpwrCtrlMsLtcParameters"
// Type DWORD
// Overrides default settings for MSCG.
//
// DEFAULT  Takes default driver setting for feature
// DISABLE  Disables the feature
// ENABLE   Enables the feature
#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS_GSP                 1:0
#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS_GSP_DEFAULT         (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS_GSP_DISABLE         (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS_GSP_ENABLE          (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS_PERF                3:2
#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS_PERF_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS_PERF_DISABLE        (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_LTC_PARAMETERS_PERF_ENABLE         (0x00000003)

#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS             "RmLpwrCtrlMsDifrSwAsrParameters"
// Type DWORD
// Overrides default settings for MSCG.
//
// DEFAULT  Takes default driver setting for feature
// DISABLE  Disables the feature
// ENABLE   Enables the feature
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_SWASR                  1:0
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_SWASR_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_SWASR_DISABLE          (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_SWASR_ENABLE           (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_FB_TRAINING            3:2
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_FB_TRAINING_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_FB_TRAINING_DISABLE    (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_FB_TRAINING_ENABLE     (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_DISPLAY                5:4
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_DISPLAY_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_DISPLAY_DISABLE        (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_DISPLAY_ENABLE         (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_ISO_STUTTER            7:6
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_ISO_STUTTER_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_ISO_STUTTER_DISABLE    (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_ISO_STUTTER_ENABLE     (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_SEC2                   9:8
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_SEC2_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_SEC2_DISABLE           (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_SEC2_ENABLE            (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_GSP                    11:10
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_GSP_DEFAULT            (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_GSP_DISABLE            (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_GSP_ENABLE             (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_HSHUB                  13:12
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_HSHUB_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_HSHUB_DISABLE          (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_SW_ASR_PARAMETERS_HSHUB_ENABLE           (0x00000003)

#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS                  "RmLpwrCtrlMsDifrCgParameters"
// Type DWORD
// Overrides default settings for MSCG.
//
// DEFAULT  Takes default driver setting for feature
// DISABLE  Disables the feature
// ENABLE   Enables the feature
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_CG                         1:0
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_CG_DEFAULT                 (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_CG_DISABLE                 (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_CG_ENABLE                  (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_ISO_STUTTER                3:2
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_ISO_STUTTER_DEFAULT        (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_ISO_STUTTER_DISABLE        (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_ISO_STUTTER_ENABLE         (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_RPPG                       5:4
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_RPPG_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_RPPG_DISABLE               (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_RPPG_ENABLE                (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_PSI                        7:6
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_PSI_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_PSI_DISABLE                (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_PSI_ENABLE                 (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_SYSCLK_SLOWDOWN            9:8
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_SYSCLK_SLOWDOWN_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_SYSCLK_SLOWDOWN_DISABLE    (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_SYSCLK_SLOWDOWN_ENABLE     (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_NVDCLK_SLOWDOWN            11:10
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_NVDCLK_SLOWDOWN_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_NVDCLK_SLOWDOWN_DISABLE    (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_MS_DIFR_CG_PARAMETERS_NVDCLK_SLOWDOWN_ENABLE     (0x00000003)


#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS                            "RmPgCtrlDiParameters"
// Type DWORD
// Overrides default settings for PG ENG based Deep Idle.
//
// DEFAULT  Takes default driver setting for feature
// DISABLE  Disables the feature
// ENABLE   Enables the feature
//
// PGENG_FEATURE_STATE    : Defines state of PG ENG based Deep Idle. This is used to disable PG ENG
//                          based Deep Idle and move back to legacy GC5.
// DEEP_L1                : If disabled then DI_ENG based DI will not engage even if DeepL1 is engaged.
//                          DI entry will get trigger by L1.1 or by L1.2.
// L1_SS                  : If disabled then DI_ENG based DI will not engage even if L1.1 or L1.2 is
//                          engaged. DI entry will get triggered by DeepL1.
//

#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_PGENG_FEATURE_STATE              1:0
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_PGENG_FEATURE_STATE_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_PGENG_FEATURE_STATE_DISABLE      (0x00000001)
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_PGENG_FEATURE_STATE_ENABLE       (0x00000003)
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_DEEP_L1                          3:2
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_DEEP_L1_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_DEEP_L1_DISABLE                  (0x00000001)
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_DEEP_L1_ENABLE                   (0x00000003)
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_L1SS                             5:4
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_L1SS_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_L1SS_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_PGCTRL_DI_PARAMETERS_L1SS_ENABLE                      (0x00000003)

#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS                            "RmPgCtrlGrParameters"
// Type DWORD
// Overrides default settings for PGCTRL GR.
//
// DEFAULT  Takes default driver setting for feature
// DISABLE  Disables the feature
// ENABLE   Enables the feature
//

#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_UNUSED                           1:0
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_UNUSED_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_UNUSED_DISABLE                   (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_UNUSED_ENABLE                    (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_NEW_HOST_SEQ                     3:2
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_NEW_HOST_SEQ_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_NEW_HOST_SEQ_DISABLE             (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_NEW_HOST_SEQ_ENABLE              (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG                             5:4
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_ENABLE                      (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_RPPG                             7:6
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_RPPG_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_RPPG_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_RPPG_ENABLE                      (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_PSI                              9:8
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_PSI_DEFAULT                      (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_PSI_DISABLE                      (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_PSI_ENABLE                       (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_PRIV_RING                        11:10
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_PRIV_RING_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_PRIV_RING_DISABLE                (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_PRIV_RING_ENABLE                 (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_UNBIND                           13:12
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_UNBIND_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_UNBIND_DISABLE                   (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_UNBIND_ENABLE                    (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_SAVE_GLOBAL_STATE                15:14
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_SAVE_GLOBAL_STATE_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_SAVE_GLOBAL_STATE_DISABLE        (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_SAVE_GLOBAL_STATE_ENABLE         (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_RESET                            17:16
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_RESET_DEFAULT                    (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_RESET_DISABLE                    (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_RESET_ENABLE                     (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_HW_SEQUENCE                      19:18
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_HW_SEQUENCE_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_HW_SEQUENCE_DISABLE              (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_HW_SEQUENCE_ENABLE               (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_SRAM                        21:20
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_SRAM_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_SRAM_DISABLE                (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_SRAM_ENABLE                 (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_LOGIC                       23:22
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_LOGIC_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_LOGIC_DISABLE               (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_LOGIC_ENABLE                (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_L2RPPG                      25:24
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_L2RPPG_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_L2RPPG_DISABLE              (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_ELPG_L2RPPG_ENABLE               (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_FG_RPPG_EXCLUSION                27:26
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_FG_RPPG_EXCLUSION_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_FG_RPPG_EXCLUSION_DISABLE        (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_FG_RPPG_EXCLUSION_ENABLE         (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_SEC2                             29:28
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_SEC2_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_SEC2_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_SEC2_ENABLE                      (0x00000003)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_GSP                              31:30
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_GSP_DEFAULT                      (0x00000000)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_GSP_DISABLE                      (0x00000001)
#define NV_REG_STR_RM_PGCTRL_GR_PARAMETERS_GSP_ENABLE                       (0x00000003)

#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS                        "RmLpwrCtrlGrRgParameters"
// Type DWORD
// Overrides default settings for LPWR_CTRL GR-RG.
//
// DEFAULT  Takes default driver setting for feature
// DISABLE  Disables the feature
// ENABLE   Enables the feature
//
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_PRIV_RING                        1:0
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_PRIV_RING_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_PRIV_RING_DISABLE                (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_PRIV_RING_ENABLE                 (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_UNBIND                           3:2
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_UNBIND_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_UNBIND_DISABLE                   (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_UNBIND_ENABLE                    (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_SAVE_GLOBAL_STATE                5:4
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_SAVE_GLOBAL_STATE_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_SAVE_GLOBAL_STATE_DISABLE        (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_SAVE_GLOBAL_STATE_ENABLE         (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RESET                            7:6
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RESET_DEFAULT                    (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RESET_DISABLE                    (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RESET_ENABLE                     (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_HW_SEQUENCE                      9:8
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_HW_SEQUENCE_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_HW_SEQUENCE_DISABLE              (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_HW_SEQUENCE_ENABLE               (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_GSP                              11:10
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_GSP_DEFAULT                      (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_GSP_DISABLE                      (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_GSP_ENABLE                       (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_SEC2                             13:12
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_SEC2_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_SEC2_DISABLE                     (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_SEC2_ENABLE                      (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_GPCCS_BS                      15:14
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_GPCCS_BS_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_GPCCS_BS_DISABLE              (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_GPCCS_BS_ENABLE               (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_PERF_CHANGE_SEQ               17:16
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_PERF_CHANGE_SEQ_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_PERF_CHANGE_SEQ_DISABLE       (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_PERF_CHANGE_SEQ_ENABLE        (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_XVE                              19:18
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_XVE_DEFAULT                      (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_XVE_DISABLE                      (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_XVE_ENABLE                       (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_UNUSED                           21:20
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_UNUSED_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_UNUSED_DISABLE                   (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_UNUSED_ENABLE                    (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_GPCCS_BS_PMU                  23:22
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_GPCCS_BS_PMU_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_GPCCS_BS_PMU_DISABLE          (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_GPCCS_BS_PMU_ENABLE           (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_TS_PD                         25:24
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_TS_PD_DEFAULT                 (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_TS_PD_DISABLE                 (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_RG_TS_PD_ENABLE                  (0x00000003)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_NEW_HOST_SEQ                     27:26
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_NEW_HOST_SEQ_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_NEW_HOST_SEQ_DISABLE             (0x00000001)
#define NV_REG_STR_RM_LPWR_CTRL_GR_RG_PARAMETERS_NEW_HOST_SEQ_ENABLE              (0x00000003)

#define NV_REG_STR_RM_LPWR_GR_PG_SW_FILTER_FUNCTION_SUPPORT                       "RmLpwrGrPgSwFilterFunction"
// Type DWORD
// Overrides default settings for SW_FILTER Function for GR-PG Feature.
//
// DEFAULT  Takes default driver setting for feature
// DISABLE  Disables the feature
// ENABLE   Enables the feature
//
#define NV_REG_STR_RM_LPWR_GR_PG_SW_FILTER_FUNCTION_SUPPORT_ENABLE                (0x00000001)
#define NV_REG_STR_RM_LPWR_GR_PG_SW_FILTER_FUNCTION_SUPPORT_DISABLE               (0x00000000)
#define NV_REG_STR_RM_LPWR_GR_PG_SW_FILTER_FUNCTION_SUPPORT_DEFAULT               (0x00000000)


#define NV_REG_STR_DEEPL1_ENTRY_LATENCY         "RMDeepL1EntryLatencyUsec"
// Type DWORD
// Encoding boolean.
// Override the default DeepL1 entry delay setting.

#define NV_REG_STR_ADAPTER_MODE                                  "AdapterType"
// Type DWORD
// Encoding enum
// Defines the mode in which the display adapter is operating
#define NV_REG_STR_ADAPTER_MODE_TCC                               (0x00000002)

#define NV_REG_STR_RM_NVLOG                       "RMNvLog"
// Type DWORD
// Encoding:
//   _BUFFER_FLAGS
//     x: uses NVLOG_BUFFER_FLAGS fields, for main nvlog buffer
//   _BUFFER_SIZE
//     n: Size of main buffer, in kilobytes
//   _RUNTIME_LEVEL
//     n: Minimal print logging level
//   _TIMESTAMP
//     0: No timestamping of log entries
//     1: 32 bit timestamps
//     2: 64 bit timestamps
//     3: 32 bit timestamps, relative to previous log entry
//   _INITED
//     0: not inited
//     1: inited
#define NV_REG_STR_RM_NVLOG_BUFFER_FLAGS                7:0
#define NV_REG_STR_RM_NVLOG_BUFFER_SIZE                23:8    // Buffer size in kilobytes
#define NV_REG_STR_RM_NVLOG_BUFFER_SIZE_DEFAULT  ((NVOS_IS_WINDOWS||NVOS_IS_MACINTOSH)?8:250)
#define NV_REG_STR_RM_NVLOG_BUFFER_SIZE_DISABLE          0     // Disable logging
#define NV_REG_STR_RM_NVLOG_RUNTIME_LEVEL              28:25
#define NV_REG_STR_RM_NVLOG_TIMESTAMP                  30:29
#define NV_REG_STR_RM_NVLOG_TIMESTAMP_NONE               0
#define NV_REG_STR_RM_NVLOG_TIMESTAMP_32                 1
#define NV_REG_STR_RM_NVLOG_TIMESTAMP_64                 2
#define NV_REG_STR_RM_NVLOG_TIMESTAMP_32_DIFF            3
#define NV_REG_STR_RM_NVLOG_INITED                     31:31
#define NV_REG_STR_RM_NVLOG_INITED_NO                    0
#define NV_REG_STR_RM_NVLOG_INITED_YES                   1


#define NV_REG_STR_RM_HDCP_OFFLOAD                       "RMHdcpOffload"
// Type DWORD
// Determines the behavior of HDCP validation. If enabled, HDCP validation
// will be carried out by RM + falcon. If disabled, HDCP validation will be
// done by the video driver.
//
// Encoding
// DEFAULT  behavior remains the default per branch
// ENABLE   enables HDCP validation in RM + falcon
// DISABLE  disables HDCP validation in RM + falcon
#define NV_REG_STR_RM_HDCP_OFFLOAD_INIT                        1:0
#define NV_REG_STR_RM_HDCP_OFFLOAD_INIT_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_HDCP_OFFLOAD_INIT_ENABLE                 (0x00000001)
#define NV_REG_STR_RM_HDCP_OFFLOAD_INIT_DISABLE                (0x00000003)

#define NV_REG_STR_RM_DISABLE_FAN_DIAG                   "RmDisableFanDiag"
#define NV_REG_STR_RM_DISABLE_FAN_DIAG_FALSE             (0x00000000)    // FanDiag is enblaed by default
#define NV_REG_STR_RM_DISABLE_FAN_DIAG_TRUE              (0x00000001)    // FanDiag won't be init-ed
// Type DWORD
// 0 - FanDiag will be initialized for the gpu. (default)
// 1 - FanDiag would stay disabled for the gpu.

#define NV_REG_STR_RM_DISABLE_NONCONTIGUOUS_ALLOCATION          "RMDisableNoncontigAlloc"
#define NV_REG_STR_RM_DISABLE_NONCONTIGUOUS_ALLOCATION_FALSE    (0x00000000)
#define NV_REG_STR_RM_DISABLE_NONCONTIGUOUS_ALLOCATION_TRUE     (0x00000001)
// Type DWORD:
// Encoding -- Boolean
// Disable noncontig vidmem allocation
//

#define NV_REG_STR_SECONDARY_BUS_RESET_ENABLED          "RMSecBusResetEnable"
// Type DWORD
// Encoding boolean
// Default FALSE

#define NV_REG_STR_FORCE_PCIE_CONFIG_SAVE               "RMForcePcieConfigSave"
// Type DWORD
// Encoding boolean
// Default FALSE

#define NV_REG_STR_RM_PCIE_FLR_POLICY                  "RMPcieFLRPolicy"
#define NV_REG_STR_RM_PCIE_FLR_POLICY_DEFAULT          0
#define NV_REG_STR_RM_PCIE_FLR_POLICY_FORCE_DISABLE    1
// Type DWORD
// Regkey to force disable Function Level Reset
// Note that we don't want to provision for force enabling FLR since as per current design -
// For Pre-Turing boards, FLR will be strictly disabled since it's not supported in HW
// Default policy could be different for different boards though

#define NV_REG_STR_RM_PCIE_FLR_DEVINIT_TIMEOUT_SCALE             "RMPcieFlrDevinitTimeout"
#define NV_REG_STR_RM_PCIE_FLR_DEVINIT_TIMEOUT_SCALE_MIN_ALLOWED  1
#define NV_REG_STR_RM_PCIE_FLR_DEVINIT_TIMEOUT_SCALE_MAX_ALLOWED  4
// Type DWORD
// Regkey to change FLR devinit timeout value. Increase in scale value increases
// the timeout value and vice versa.
// Scale value has to be greater than 0 since flr devinit timeout can't be 0
// Scale value for now is limited to 4 which translates to maximum of
// 3.6seconds(900ms*4) timeout value.

#define NV_REG_STR_RM_NUM_AUX_RETRIES_EDID              "RMNumAuxRetriesEdid"
// Type DWORD
// Determines the number of Aux retires to be used when reading EDID.

#define NV_REG_STR_RM_BLACKLIST_ADDRESSES                "RmBlackListAddresses"
// Type BINARY:
// struct
// {
//     NvU64 addresses[NV2080_CTRL_FB_OFFLINED_PAGES_MAX_PAGES];
// };

#ifdef NV_VERIF_FEATURES
#define NV_REG_STR_VERIF_BACK_TO_BACK_INTERRUPTS        "RmVerifBackToBackInt"
// Type DWORD:
// Encoding -- Boolean
// Set to true to enable back to back interrupt verification test
// This option is only valid for MODS NV_VERIF_FEATURES builds
#endif

#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI                          "RM776993"
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_TYPE_1                   0:0
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_TYPE_1_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_TYPE_1_FALSE             (0x00000000)
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_TYPE_1_TRUE              (0x00000001)
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_TYPE_2                   1:1
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_TYPE_2_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_TYPE_2_FALSE             (0x00000000)
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_TYPE_2_TRUE              (0x00000001)
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_LINK_MASK                15:8
#define NV_REG_STR_RM_FORCE_DP_DONGLE_HDMI_LINK_MASK_DEFAULT        (0xFFFFFFFF)
// Type DWORD:
// Treat DisplayPort Dual-Mode adaptor as DP2DVI (type 1) or DP2HDMI (type 2) dongle.
// Bit  0:0  - Force all dongles as type 1 (165 MHz TMDS clock rate).
// Bit  1:1  - Force all dongles as type 2 (300 MHz TMDS clock rate).
// Bit  7:2  - Reserved.
// Bit 15:8  - The linkMask of target links. The dongles on specified links are
//             treated as type 1 or type 2 forcedly and it depends on bit 0 or 1 is set.
// Bit 31:16 - Reserved.
//
// Encoding Bitmask: There are two types of linkMask.
// For Pre-GM20X (with non-split SOR VBIOS), the linkMask is considered as sorSublinkMask here.
// Bit  9:8  - SOR 0 (sublink A & B)
// Bit 11:10 - SOR 1 (sublink A & B)
// Bit 13:12 - SOR 2 (sublink A & B)
// Bit 15:14 - SOR 3 (sublink A & B)
//
// For GM20x+, the linkMask is considered as padLinkMask here.
// Bit  9:8  - Pad Macro 0 (macro sublink 0 & 1)
// Bit 11:10 - Pad Macro 1 (macro sublink 0 & 1)
// Bit 13:12 - Pad Macro 2 (macro sublink 0 & 1)
// Bit 15:14 - Pad Macro 3 (macro sublink 0 & 1)

#define NV_REG_STR_ILLUM_ATTRIB_LOGO_BRIGHTNESS         "RmIllumLogoBrightness"
// Type DWORD:
// contains Logo Illumination Brightness in percent to be used on driver load.

#define NV_REG_STR_ILLUM_ATTRIB_SLI_BRIGHTNESS          "RmIllumSLIBrightness"
// Type DWORD:
// contains SLI Illumination Brightness in percent to be used on driver load.

#define NV_REG_STR_RM_SMMU_CONFIG                   "RMSmmuConfig"
#define NV_REG_STR_RM_SMMU_CONFIG_ALL               31:0
#define NV_REG_STR_RM_SMMU_CONFIG_ALL_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_SMMU_CONFIG_ALL_DISABLE       (0x55555555)
#define NV_REG_STR_RM_SMMU_CONFIG_ALL_ENABLE        (0xaaaaaaaa)
#define NV_REG_STR_RM_SMMU_CONFIG_DISPLAY           1:0
#define NV_REG_STR_RM_SMMU_CONFIG_DISPLAY_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_SMMU_CONFIG_DISPLAY_DISABLE   (0x00000001)
#define NV_REG_STR_RM_SMMU_CONFIG_DISPLAY_ENABLE    (0x00000002)
// AVP is not used by RM/NVMEM from T210 onwards.
// So setting these bits on those chips have no effect.
#define NV_REG_STR_RM_SMMU_CONFIG_AVP               3:2
#define NV_REG_STR_RM_SMMU_CONFIG_AVP_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_SMMU_CONFIG_AVP_DISABLE       (0x00000001)
#define NV_REG_STR_RM_SMMU_CONFIG_AVP_ENABLE        (0x00000002)
#define NV_REG_STR_RM_SMMU_CONFIG_GPU               5:4
#define NV_REG_STR_RM_SMMU_CONFIG_GPU_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_SMMU_CONFIG_GPU_DISABLE       (0x00000001)
#define NV_REG_STR_RM_SMMU_CONFIG_GPU_ENABLE        (0x00000002)
// Type DWORD
// By default, SMMU translation is enabled for most engines in Tegra.
// This regkey will allow for per-engine as well as global SMMU configuration
//
// For per-engine configuration, you can add following bit field defines to this REGKEY
// #define NV_REG_STR_RM_SMMU_CONFIG_XXX                x+1:x
// #define NV_REG_STR_RM_SMMU_CONFIG_XXX_DEFAULT   (0x00000000)
// #define NV_REG_STR_RM_SMMU_CONFIG_XXX_DISABLE   (0x00000001)
// #define NV_REG_STR_RM_SMMU_CONFIG_XXX_ENABLE    (0x00000002)
//
// For disabling SMMU for all engines, set the value NV_REG_STR_RM_SMMU_CONFIG_ALL_DISABLE

#define NV_REG_STR_ENABLE_DYNAMIC_DRAM_RETIREMENT  "RM839040"
// Type DWORD
// Encoding boolean
//
// Override to disable storing bad FB memory pages or row-remappings to InfoROM.
// zero (default) -- Disable Dynamic DRAM retirement.
// nonzero        -- Enable Dynamic DRAM retirement.

#define NV_REG_STR_RM_THERM_POLICY_OVERRIDE                         "RmThermPolicyOverride"
#define NV_REG_STR_RM_THERM_POLICY_OVERRIDE_DISABLE                 0:0
#define NV_REG_STR_RM_THERM_POLICY_OVERRIDE_DISABLE_DEFAULT         0x00000000
#define NV_REG_STR_RM_THERM_POLICY_OVERRIDE_DISABLE_DISABLED        0x00000001
// Type DWORD
// Encoding NvU32
//
// Override to disable all thermal policies on the GPU. This cannot be used
// to enable thermal policies when not specified in the VBIOS, only to
// explicitly disable.
// DISABLE
//   _DEFAULT  - Keep default settings from VBIOS.
//   _DISABLED - Explicitly disable, overriding VBIOS settings.

#define NV_REG_STR_RM_THERM_POLICY_SW_SLOWDOWN_OVERRIDE                   "RmThermPolicySwSlowdownOverride"
#define NV_REG_STR_RM_THERM_POLICY_SW_SLOWDOWN_OVERRIDE_DISABLE           0:0
#define NV_REG_STR_RM_THERM_POLICY_SW_SLOWDOWN_OVERRIDE_DISABLE_DEFAULT   0x00000000
#define NV_REG_STR_RM_THERM_POLICY_SW_SLOWDOWN_OVERRIDE_DISABLE_DISABLED  0x00000001
// Type DWORD
// Encoding NvU32
//
// Override to disable all thermal policy software slowdowns on the GPU.
// DISABLE
//   _DEFAULT  - Keep default settings from VBIOS
//   _DISABLED - Explicitly disable all software slowdown, override VBIOS settings.

#define NV_REG_STR_RM_GPS_ACPI_TYPE                     "RmGpsACPIType"
// Determines interface GPS (OptimusBoost) will use to get CPU control and sensor data.
// 0 - DISABLE
// 1 - Default - use Final GPS client standard

#define NV_REG_STR_RM_GPS_PREFER_INTRINSIC_FUNCS        "RmGpsPreferIntrinsicFuncs"
// Type DWORD
// Encoding Boolean
//
// Prefer use of CPU MSRs and similar interfaces instead of ACPI for handling
// functions such as CPU PL1/PL2 and CPU frequency control

#define NV_REG_STR_RM_GPS_POWER_STEERING                "RmGpsPowerSteeringEnable"
#define NV_REG_STR_RM_GPS_POWER_STEERING_DISABLE        0
#define NV_REG_STR_RM_GPS_POWER_STEERING_ENABLE         1
// Type DWORD
// Can be used to force Power Steering OFF for debug.

#define NV_REG_STR_RM_GPS_POWER_STEERING_TEMP_DELTA  "RmGpsPowerSteeringTempDelta"
// Type DWORD
// Controls the temperature threshold used to activate/deactivate Power Steering.
// Power Steering will be active once GPU temperature will exceed current (dynamic)
// Temperature Controller's target temperature decreased by the amount provided in
// this registry key (...TempDelta). Delta can be both positive and negative.

#define NV_REG_STR_RM_GPS_WEB_POLL                      "RmGpsWebPoll"
#define NV_REG_STR_RM_GPS_WEB_POLL_DEFAULT              (0x00000000)
// Type DWORD
// Set the polling interval (in ms) for the WEB controller
// Explanation on NV_REG_STR_RM_GPS_WEB_POLL_DEFAULT: if we want to set the WEB
// polling interval to a default value, just use NV_REG_STR_RM_GPS_WEB_POLL_DEFAULT.
// Although it is defined to be 0x00000000, the default polling interval is
// SPB_GPS_WEB_DEFAULT_POLLING_INTVL, which is defined in objspbgps.c

// CPU utilization
#define NV_REG_STR_RM_GPS_CPU_UTIL_POLL                 "RmGpsCpuUtilPoll"
// Type DWORD
// 0 - disable the controller
// set the polling interval (in ms) for the CPU utilization controller

#define NV_REG_STR_RM_GPS_UTIL_HYST_HIGH                "RmGpsUtilHystHigh"
// Type DWORD
#define NV_REG_STR_RM_GPS_UTIL_HYST_LOW                 "RmGpsUtilHystLow"
// Type DWORD (signed)
// This two registry keys (RmGpsUtilHystHigh & RmGpsUtilHystLow) define a
// window [(gpuUtil-utilHystLow)..(gpuUtil-utilHystHigh)] in which GPS will
// attempt to maintain CPU utilization.
// Both "high" and "low" deltas are in the range [-100% .. 100%] and
// (RmGpsUtilHystHigh < RmGpsUtilHystLow)
// These are the global overrides, below are the values specific to AC,
// battery, and BatteryBoost modes.

#define NV_REG_STR_RM_GPS_UTIL_HYST_HIGH_AC             "RmGpsUtilHystHighAc"
// Type DWORD (signed)
#define NV_REG_STR_RM_GPS_UTIL_HYST_HIGH_BATT           "RmGpsUtilHystHighBatt"
// Type DWORD (signed)
#define NV_REG_STR_RM_GPS_UTIL_HYST_HIGH_BBOOST         "RmGpsUtilHystHighBBoost"
// Type DWORD (signed)
#define NV_REG_STR_RM_GPS_UTIL_HYST_LOW_AC              "RmGpsUtilHystLowAc"
// Type DWORD (signed)
#define NV_REG_STR_RM_GPS_UTIL_HYST_LOW_BATT            "RmGpsUtilHystLowBatt"
// Type DWORD (signed)
#define NV_REG_STR_RM_GPS_UTIL_HYST_LOW_BBOOST          "RmGpsUtilHystLowBBoost"
// Type DWORD (signed)
// These allow the windows for AC, battery, and BatteryBoost modes to be
// defined separately, and will override the values set by RmGpuUtilHystHigh
// and RmGpuUtilHystLow for those modes.

#define NV_REG_STR_RM_GPS_CPU_FREQ_MIN_MHZ              "RmGpsCpuFreqMinMHz"
// Type DWORD
// Set the minimum CPU frequency limit [MHz].
// We will never cap CPU below this limit.

#define NV_REG_STR_RM_GPS_CPU_FREQ_MAX_MHZ              "RmGpsCpuFreqMaxMHz"
// Type DWORD
// Set the maximum CPU frequency limit [MHz].
// CPU should never exceed this limit while system  is in boosted mode.

#define NV_REG_STR_RM_GPS_GPU_UTIL_MIN_COEFF            "RmGpsGpuUtilMinCoeff"
#define NV_REG_STR_RM_GPS_GPU_UTIL_MAX_COEFF            "RmGpsGpuUtilMaxCoeff"
// Type DWORD
// Coefficients for calculating Effective GPU Utilization on SLI
// Eff_GPU_Util = A*GPU_Util_min + B*GPU_Util_max
// A - RmGpsGpuUtilMinCoeff
// B - RmGpsGpuUtilMaxCoeff
// Range of coefficients is [0,1] and is to be given in FXP20.12 format

#define NV_REG_STR_RM_GPS_PM1_ENABLE                    "RmGPSPM1Enable"
// Type DWORD
// Determines if vP-States higher than TDP will be enabled when GPS constructs.
// 0 - DISABLE
// 1 - Default - Enable

#define NV_REG_STR_RM_GPS_GENOA                    "RmGpsGenoa"
#define NV_REG_STR_RM_GPS_GENOA_DISABLED                0
#define NV_REG_STR_RM_GPS_GENOA_ENABLED                 1
#define NV_REG_STR_RM_GPS_GENOA_GPS_ONLY                2
// Type DWORD
// Genoa System Power Controller
// 0 - Disabled
// 1 - Fully enabled
// 2 - Enable GPS sensors only

#define NV_REG_STR_RM_GSPC_POS_ZERO_ERR_K           "RmGspcPosZeroErrK"
#define NV_REG_STR_RM_GSPC_POS_BP_ERR_K             "RmGspcPosBpErrK"
#define NV_REG_STR_RM_GSPC_POS_BP_ERR_VAL           "RmGspcPosBpErrVal"
#define NV_REG_STR_RM_GSPC_POS_GTBP_ERR_K           "RmGspcPosGtbpErrK"
#define NV_REG_STR_RM_GSPC_NEG_ZERO_ERR_K           "RmGspcNegZeroErrK"
#define NV_REG_STR_RM_GSPC_NEG_BP_ERR_K             "RmGspcNegBpErrK"
#define NV_REG_STR_RM_GSPC_NEG_BP_ERR_VAL           "RmGspcNegBpErrVal"
#define NV_REG_STR_RM_GSPC_NEG_GTBP_ERR_K           "RmGspcNegGtbpErrK"
// Type DWORD
// Genoa System Power Controller
// Control law parameters

#define NV_REG_STR_RM_GSPC_TSP_N_CNT                "RmGspcTspNcnt"
#define NV_REG_STR_RM_GSPC_FRAME_N_CNT              "RmGspcFrameNCnt"
#define NV_REG_STR_RM_GSPC_USE_MEDIAN               "RmGspcUseMedian"
// Type DWORD
// Genoa System Power Controller
// Sensed input parameters

#define NV_REG_STR_RM_GSPC_PERIOD_US                "RmGspcPerioduS"
#define NV_REG_STR_RM_GSPC_STANDBY_CNT              "RmGspcStandbyCnt"
#define NV_REG_STR_RM_GSPC_PARKED_CNT               "RmGspcParkedCnt"
#define NV_REG_STR_RM_GSPC_ENGAGE_CNT               "RmGspcEngageCnt"
#define NV_REG_STR_RM_GSPC_ENGAGE_OUT               "RmGspcEngageOut"
#define NV_REG_STR_RM_GSPC_ALLOW_AC                 "RmGspcAllowAc"
// Type DWORD
// Genoa System Power Controller
// State machine parameters

#define NV_REG_STR_RM_GSPC_GPU_POWER_SRC            "RmGspcGpuPowerSrc"
#define NV_REG_STR_RM_GSPC_GPU_POWER_SRC_CHANNEL    0
#define NV_REG_STR_RM_GSPC_GPU_POWER_SRC_POLICY     1
#define NV_REG_STR_RM_GSPC_GPU_POWER_IDX            "RmGspcGpuPowerIdx"
#define NV_REG_STR_RM_GSPC_DEF_PROS_MW              "RmGspcDefProsmW"
#define NV_REG_STR_RM_GSPC_MIN_PROS_MW              "RmGspcMinProsmW"
#define NV_REG_STR_RM_GSPC_TSP_SMA_WIN_MS           "RmGspcTspSmaWinmS"
#define NV_REG_STR_RM_GSPC_TSP_SMA_QUEUE_MS         "RmGspcTspSmaQueuemS"
#define NV_REG_STR_RM_GSPC_READ_BATTERY             "RmGspcReadBattery"
#define NV_REG_STR_RM_GSPC_ADJUST_PROS              "RmGspcAdjustPros"
// Type DWORD
// Genoa System Power Controller
// Power input parameters
//
// NV_REG_STR_RM_GSPC_GPU_POWER_SRC
// 0 - Use power channel
// 1 - Use power policy

#define NV_REG_STR_RM_GSPC_TSP_LIMIT_MW             "RmGspcTspLimitmW"
#define NV_REG_STR_RM_GSPC_MIN_FT_US                "RmGspcMinFtuS"
#define NV_REG_STR_RM_GSPC_MAX_FT_US                "RmGspcMaxFtuS"
// Type DWORD
// Genoa System Power Controller
// Target parameters


#define NV_REG_STR_RM_CLK2_ENABLE                       "RmClk2Enable"
// Type DWORD
// Each bit enables Clocks 2.0 for a particular clock domain
// 0x00000000 - Disable for all clock domain
// 0xffffffff - Enable for all clock domains
// NV2080_CTRL_CLK_DOMAIN_xxx - Enable for specified clock domain(s)
// See sdk/nvidia/inc/ctrl/ctrl2080/ctrl2080clk.h for bit maps.
// Bits corresponding to domains that are not supported are ignored.

#define NV_REG_STR_RM_ENABLE_NOISE_AWARE_PLL             "RmEnableNoiseAwarePll"
#define NV_REG_STR_RM_ENABLE_NOISE_AWARE_PLL_DISABLE     0x00000000
#define NV_REG_STR_RM_ENABLE_NOISE_AWARE_PLL_ENABLE      0xFFFFFFFF
// Type DWORD
// Enable/Disable the noise aware feature for PLLs
// Supported only for GPCPLL, LTCPLL, XBARPLL and SYSPLL as of now.
// Bits are set for a particular PLL as per NV2080_CTRL_CLK_SOURCE_xxx bit position
// See sdk/nvidia/inc/ctrl/ctrl2080/ctrl2080clk.h for bit maps.
// Default - whatever noise-aware pll vbios table sets.
// 0x00000000 - Disable noise aware PLL feature for all applicable PLLs
// 0xffffffff - Enable noise aware PLL feature for all applicable PLLs(If vbios table enables as well)
// Bits corresponding to PLLs that are not supported are ignored.
// Bit value 0 indicates NAPLL is disabled for the PLL corresponding to that bit.
// And bit value 1 indicates otherwise.

#define NV_REG_STR_RM_PER_PLL_PROGRAMMING                "RmPerPllProgramming"
#define NV_REG_STR_RM_PER_PLL_PROGRAMMING_DISABLE        0x00000000
#define NV_REG_STR_RM_PER_PLL_PROGRAMMING_ENABLE         0xFFFFFFFF
#define NV_REG_STR_RM_PER_PLL_PROGRAMMING_DEFAULT        NV_REG_STR_RM_PER_PLL_PROGRAMMING_ENABLE
// Type DWORD
// Per-Pll Programming
// Currently it is only applicable to GPC2CLK domain but later
// we might have this feature for other clock domains as well and
// this single regkey can be used for all of them.
// 0x00000000 - Disable for all clock domains
// 0xffffffff - Enable for all clock domains
// NV2080_CTRL_CLK_DOMAIN_xxx - Enable for specified clock domain(s)
// See sdk/nvidia/inc/ctrl/ctrl2080/ctrl2080clk.h for bit maps.
// Bits corresponding for domains that are not supported are ignored.

#define NV_REG_STR_RM_NAPLL_CAL_VOLT_OFFSET              "RmNapllCalVoltOffset"
// Type DWORD
// Offset(in uV, can be negative) to NAPLL calibration voltage

#define NV_REG_STR_RM_DFS_COEFF                         "RmDfsCoeff"
#define NV_REG_STR_RM_DFS_COEFF_CALC_IN_RM              0x00000000
#define NV_REG_STR_RM_DFS_COEFF_USE_VBIOS_VALUES        0xFFFFFFFF
#define NV_REG_STR_RM_DFS_COEFF_DEFAULT                 NV_REG_STR_RM_DFS_COEFF_CALC_IN_RM
// Type DWORD
// Supported only for GPCPLL, LTCPLL, XBARPLL and SYSPLL as of now.
// Bits are set for a particular PLL as per NV2080_CTRL_CLK_SOURCE_xxx bit position
// See sdk/nvidia/inc/ctrl/ctrl2080/ctrl2080clk.h for bit maps.
// 0x00000000 - Calculate in RM for all clock sources
// 0xffffffff - Get from noise-aware pll table from vbios for all clock sources.
// Bits corresponding to PLLs that are not supported are ignored.

#define NV_REG_STR_RM_DFS_COEFF_SLOPE                   "RmDfsCoeffSlope"
// Type DWORD
// Slope(can be negative) for dfs_coeff (actual value * 10000, ex: -956000)
// For when we support NAPLL on LTC/SYS and XBAR too, the same slope will be
// used for all PLLs.

#define NV_REG_STR_RM_DFS_COEFF_INTERCEPT               "RmDfsCoeffIntercept"
// Type DWORD
// Intercept for dfs_coeff (actual value * 10000, ex: 1250000)
// For when we support NAPLL on LTC/SYS and XBAR too, the same intercept will be
// used for all PLLs.

#define NV_REG_STR_RM_CLK_SECOND_VCO                "RmSecondVco"
#define NV_REG_STR_RM_CLK_SECOND_VCO_DISABLE        0x00000000
#define NV_REG_STR_RM_CLK_SECOND_VCO_ENABLE         0xffffffff
#define NV_REG_STR_RM_CLK_SECOND_VCO_DEFAULT        NV_REG_STR_RM_CLK_SECOND_VCO_ENABLE
//Type DWORD
// Disable second VCO.
// Supported only for GPCPLL, LTCPLL, XBARPLL and SYSPLL as of now.
// Bits are set for a particular PLL as per NV2080_CTRL_CLK_SOURCE_xxx bit position
// See sdk/nvidia/inc/ctrl/ctrl2080/ctrl2080clk.h for bit maps.
// 0x00000000 - Disable for all clock sources
// 0xffffffff - Enable for all clock sources (If vbios table enables as well)
// Bits corresponding to PLLs that are not supported are ignored.
// Bit value 0 indicates NAPLL is disabled for the PLL corresponding to that bit.
// And bit value 1 indicates otherwise.

#define NV_REG_STR_RM_CLK_NDIV_SLIDING             "RmNdivSliding"
#define NV_REG_STR_RM_CLK_NDIV_SLIDING_DISABLE     0x00000000
#define NV_REG_STR_RM_CLK_NDIV_SLIDING_ENABLE      0xFFFFFFFF
// Type DWORD
// Enable/Disable Ndiv sliding for PLLs
// For this regkey to be used, RMPowerFeature2 corresponding to NDIV sliding
// feature(9:8) should have a value of 2.
// Supported only for GPCPLL, LTCPLL, XBARPLL and SYSPLL as of now.
// Bits are set for a particular PLL as per NV2080_CTRL_CLK_SOURCE_xxx bit position
// See sdk/nvidia/inc/ctrl/ctrl2080/ctrl2080clk.h for bit maps.
// Default - whatever vbios sets
// 0x00000000 - Disable ndiv sliding for all applicable PLLs
// 0xffffffff - Enable ndiv sliding for all applicable PLLs
// Bits corresponding to PLLs that are not supported are ignored.
// Bit value 0 indicates ndiv sliding is disabled for the PLL corresponding to that bit.
// And bit value 1 indicates otherwise.

#define NV_REG_STR_RM_CLK_NDIV_EFF_LIMIT               "RmClkNdivEffLimit"
// Type DWORD
// Lower limit for Ndiv_eff during gpc2clk freq change sequence pre/post volt change

#if defined(DEVELOP) || defined(DEBUG) || defined(NV_MODS)
#define NV_REG_STR_RM_CLK_NDIV_CLAMP_DELTA             "RmClkNdivClampDelta"
// Type DWORD
// Ndiv clamp delta required during voltage switch.

#endif // DEVELOP || DEBUG || NV_MODS

#define NV_REG_STR_RM_BLOB_DATA_OVERRIDE                              "RmBlobData"
// Type: Binary
// Used to override the blob parameter values form the SBIOS.

#define NV_REG_STR_RM_GPS_PS_ENABLE_PER_CPU_CORE_DPC            "RmGpsPsEnablePerCpuCoreDpc"
#define NV_REG_STR_RM_GPS_PS_ENABLE_PER_CPU_CORE_DPC_DISABLE     0
#define NV_REG_STR_RM_GPS_PS_ENABLE_PER_CPU_CORE_DPC_ENABLE      1
// Type DWORD
// This is for the GPS power steering to use per core DPC threads
// to accumulate CPU counters
// 0 - Disables GPS Power steering per core DPC thread
// 1 - Default- Enables GPS Power steering per core DPC thread

#define NV_REG_STR_RM_GPS_CPU_C0_THRESHOLD               "RmGpsCpuC0Threshold"
// Type DWORD
// Set the CPU C0 residency threshold value
// the range is [0% - 100%] and RM default is 20%

#define NV_REG_STR_RM_ALTERNATE_L2_ARBITRATION_CYA              "RMAltL2ArbCYA"
// Type DWORD
// A zero value will use the default L2 arbitration scheme
// A non-zero value will use the alternate L2 arbitration scheme
// See bug 881757
#define NV_REG_STR_RM_ALTERNATE_L2_ARBITRATION_CYA_DISABLE      0
#define NV_REG_STR_RM_ALTERNATE_L2_ARBITRATION_CYA_ENABLE       1
#define NV_REG_STR_RM_ALTERNATE_L2_ARBITRATION_CYA_DEFAULT      NV_REG_STR_RM_ALTERNATE_L2_ARBITRATION_CYA_DISABLE

#define NV_REG_STR_RM_PCIE_LINK_SPEED                                     "RMPcieLinkSpeed"
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN2                          1:0
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN2_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN2_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN2_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN3                          3:2
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN3_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN3_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN3_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN4                          5:4
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN4_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN4_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN4_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN5                          7:6
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN5_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN5_ENABLE                   (0x00000001)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN5_DISABLE                  (0x00000002)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_LOCK_AT_LOAD                        31:31
#define NV_REG_STR_RM_PCIE_LINK_SPEED_LOCK_AT_LOAD_DISABLE                (0x00000000)
#define NV_REG_STR_RM_PCIE_LINK_SPEED_LOCK_AT_LOAD_ENABLE                 (0x00000001)
// Type DWORD:
// Note: The GEN2/3 controls in NV_XVE_VSEC_NVIDIA_SPECIFIC_FEATURES_HIERARCHY are removed from Hopper and future chips.
// NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN2_DEFAULT - RM will allow or disallow Gen2 based on NV_XVE_VSEC_NVIDIA_SPECIFIC_FEATURES_HIERARCHY, set by VBIOS.
// NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN2_ENABLE - RM will allow Gen2, bypassing NV_XVE_VSEC_NVIDIA_SPECIFIC_FEATURES_HIERARCHY VBIOS checks.
// NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN2_DISABLE - RM will disallow Gen2, bypassing NV_XVE_VSEC_NVIDIA_SPECIFIC_FEATURES_HIERARCHY VBIOS checks.
// NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN3_DEFAULT - RM will allow or disallow Gen3 based on NV_XVE_VSEC_NVIDIA_SPECIFIC_FEATURES_HIERARCHY, set by VBIOS.
// NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN3_ENABLE - RM will allow Gen3, bypassing NV_XVE_VSEC_NVIDIA_SPECIFIC_FEATURES_HIERARCHY VBIOS checks.
// NV_REG_STR_RM_PCIE_LINK_SPEED_ALLOW_GEN3_DISABLE - RM will disallow Gen3, bypassing NV_XVE_VSEC_NVIDIA_SPECIFIC_FEATURES_HIERARCHY VBIOS checks.
// NV_REG_STR_RM_PCIE_LINK_SPEED_LOCK_AT_LOAD_DISABLE - RM will allow link pseed to be set during p-state changes as usual.
// NV_REG_STR_RM_PCIE_LINK_SPEED_LOCK_AT_LOAD_ENABLE - RM will train to the highest-supported link speed during driver load and remain there forever.

#define NV_REG_STR_RM_DISABLE_HIGHER_GEN_SPEEDS_DURING_GEN_SPEED_SWITCH          "RMPcieStickyGenSpeed"
#define NV_REG_STR_RM_DISABLE_HIGHER_GEN_SPEEDS_DURING_GEN_SPEED_SWITCH_DEFAULT  0x1
#define NV_REG_STR_RM_DISABLE_HIGHER_GEN_SPEEDS_DURING_GEN_SPEED_SWITCH_TRUE     0x1
#define NV_REG_STR_RM_DISABLE_HIGHER_GEN_SPEEDS_DURING_GEN_SPEED_SWITCH_FALSE    0x0
// Type DWORD
// Only for GH100 bringup, to control disabling of higher gen speeds during gen speed switch
// NV_REG_STR_RM_DISABLE_HIGHER_GEN_SPEEDS_DURING_GEN_SPEED_SWITCH_DEFAULT  - Allow disabling of higher gen speeds
// NV_REG_STR_RM_DISABLE_HIGHER_GEN_SPEEDS_DURING_GEN_SPEED_SWITCH_TRUE     - Allow disabling of higher gen speeds
// NV_REG_STR_RM_DISABLE_HIGHER_GEN_SPEEDS_DURING_GEN_SPEED_SWITCH_FALSE    - Disallow disabling of higher gen speeds

#define NV_REG_STR_RM_LTR_L1_2_THRESHOLD                                 "RMPcieLtrL12ThresholdOverride"
#define NV_REG_STR_RM_LTR_L1_2_THRESHOLD_OVERRIDE                        1:0
#define NV_REG_STR_RM_LTR_L1_2_THRESHOLD_OVERRIDE_ENABLED                0X00000000
#define NV_REG_STR_RM_LTR_L1_2_THRESHOLD_OVERRIDE_DISABLED               0X00000001
#define NV_REG_STR_RM_LTR_L1_2_THRESHOLD_VALUE                           11:2
#define NV_REG_STR_RM_LTR_L1_2_THRESHOLD_SCALE                           14:12
// Type DWORD:
// Only for debug, NOT to be distributed outside nvidia
// Even without applying this regkey, RM will NOT program the L1_2 threshold value and scale programmed by sbios as per spec
// NV_REG_STR_RM_LTR_L1_2_THRESHOLD_OVERRIDE_DISABLED - RM will NOT program the L1_2 threshold value and scale programmed by sbios
// NV_REG_STR_RM_LTR_L1_2_THRESHOLD_OVERRIDE_ENABLED  - RM will program the L1_2 threshold value and scale as programmed by regkey
// NV_REG_STR_RM_LTR_L1_2_THRESHOLD_VALUE             - LTR L1.2 threshold value to be overridden
// NV_REG_STR_RM_LTR_L1_2_THRESHOLD_SCALE             - LTR L1.2 threshold scale to be overridden

#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE                                  "RMPcieLtrOverride"
#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ALLOW_LTR                        1:0
#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ALLOW_LTR_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ALLOW_LTR_ENABLE                 (0x00000001)
#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ALLOW_LTR_DISABLE                (0x00000002)
#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE_SNOOP_LAT_VALUE                  11:2
#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE_SNOOP_LAT_SCALE                  14:12
#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE_NO_SNOOP_LAT_VALUE               24:15
#define NV_REG_STR_RM_PCIE_LTR_OVERRIDE_NO_SNOOP_LAT_SCALE               27:25
// Type DWORD:
// NV_REG_STR_RM_PCIE_LTR_OVERRIDE_DEFAULT   - RM will continue with default settings.
// NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ENABLE    - RM will enable sending HW LTR messages or SW ACPI method using values provided by regkey and override any other source.
// NV_REG_STR_RM_PCIE_LTR_OVERRIDE_DISABLE   - RM will disable sending HW LTR messages or SW ACPI method.
// NV_REG_STR_RM_PCIE_LTR_SNOOP_LAT_VALUE    - Snoop Latency Value used to override when using NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ENABLE
// NV_REG_STR_RM_PCIE_LTR_SNOOP_LAT_SCALE    - Snoop Latency Scale used to override when using NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ENABLE
// NV_REG_STR_RM_PCIE_LTR_NO_SNOOP_LAT_VALUE - No Snoop Latency Value used to override when using NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ENABLE
// NV_REG_STR_RM_PCIE_LTR_NO_SNOOP_LAT_SCALE - No Snoop Latency Scale used to override when using NV_REG_STR_RM_PCIE_LTR_OVERRIDE_ENABLE

#define NV_REG_STR_RM_VPR_CYA_VALUE0                            "RMVprCyaValue0"
// Type DWORD
// Override value for VPR CYA register
#define NV_REG_STR_RM_VPR_CYA_VALUE1                            "RMVprCyaValue1"
// Type DWORD
// Override value for VPR CYA register

#define NV_REG_STR_RM_HDMI_N_LOOKUP_WAR_INTERVAL_MS     "RmHdmiNLookupWarIntervalMs"
// Type DWORD
// Timer interval in milliseconds between each execution of the N-lookup WAR routine.
// A value of 0 disables the WAR.

#define NV_REG_STR_RM_STEREO_PAIR_FLIP                  "RmStereoPairFlip"
// Type DWORD
// Encoding: Boolean.  Forces swapgroup stereo flips into the pre-kepler
// STEREO_FLIP_MODE PAIR_FLIP mode.

#define NV_REG_STR_GPIO_PMU_MUTEX_TIMEOUT_US            "RMGpioPmuMutexTimeoutus"
// Type: Dword
// Specify the timeout (in us) RM will use when acquiring the GPIO PMU mutex.
// This overrides the default RM value.

#define NV_REG_STR_I2C_PMGR_MUTEX_TIMEOUT_US            "RMI2cPmgrMutexTimeoutus"
// Type: Dword
// Specify the timeout (in us) RM will use when acquiring the I2C PMGR mutex.
// This overrides the default RM value.

#define NV_REG_STR_RM_DEFER_INITIAL_PSTATE_WAR_BUG_988798               "RMWarBug988798"
// Type DWORD
// Encoding: Boolean
// 0x1: Enable WAR for bug 988798 (we defer Pstate change till first Modeset after bootup or PM)
// 0x0: Disable WAR for bug 988798
#define NV_REG_STR_RM_DEFER_INITIAL_PSTATE_WAR_BUG_988798_ENABLE        1
#define NV_REG_STR_RM_DEFER_INITIAL_PSTATE_WAR_BUG_988798_DISABLE       0

#define NV_REG_STR_TIME_SWAP_RDY_HI_MODIFY_LSR_MIN_TIME             "TSwapRdyHiLsrMinTime"
#define NV_REG_STR_TIME_SWAP_RDY_HI_MODIFY_LSR_MIN_TIME_DEFAULT     250 // 250 micro seconds
// Type: DWORD
// Encoding:
// To modify LSR_MIN_TIME parameter according to the time
// period for which swap lock window will remain HIGH for QSYNC III
// i.e. P2060 during swap barrier.

#define NV_REG_STR_TIME_SWAP_RDY_HI_MODIFY_SWAP_LOCKOUT_START           "TSwapRdyHiSwapLockoutStart"
#define NV_REG_STR_TIME_SWAP_RDY_HI_MODIFY_SWAP_LOCKOUT_START_DEFAULT   250 // 250 micro seconds
// Type: DWORD
// Encoding:
// To modify SWAP_LOCKOUT_START parameter according to the time
// period for which swap lock window will remain HIGH for QSYNC III.
//

#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP  "RmThermProviderAutoDetectSkip"
// Selectively skip autodetect of classes of thermal providers.
// Type DWORD
// Encoding:
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_NVINT                  0:0
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_NVINT_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_NVINT_SKIP             (0x00000001)
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_AD1032_COMPAT          1:1
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_AD1032_COMPAT_DEFAULT  (0x00000000)
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_AD1032_COMPAT_SKIP     (0x00000001)
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_ADT7473                2:2
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_ADT7473_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_ADT7473_SKIP           (0x00000001)
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_NVSYSCON               3:3
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_NVSYSCON_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_NVSYSCON_SKIP          (0x00000001)
#define NV_REG_STR_RM_THERM_PROVIDER_AUTODETECT_SKIP_ALL                    (0xFFFFFFFF)

// Type DWORD
// Enable/disable S4 surprise removal support.
// If this is present and set to 0x1 then S4 surprise removal support is present
#define NV_REG_STR_RM_S4_SURPRISE_REMOVAL_SUPPORT                           "RMSupportS4SurpriseRemoval"
#define NV_REG_STR_RM_S4_SURPRISE_REMOVAL_SUPPORT_ENABLED                   (0x1)
#define NV_REG_STR_RM_S4_SURPRISE_REMOVAL_SUPPORT_DISABLED                  (0x0)

#define NV_REG_STR_RM_GR_BALANCING_MODE                                     "RmGrBalancingMode"
// Type DWORD
// On floorswept configurations, selectively choose disable balancing the TPC configuration
// or the primitive workload
// Encoding --
#define NV_REG_STR_RM_GR_BALANCING_MODE_SKIP_TABLE                          1:0
#define NV_REG_STR_RM_GR_BALANCING_MODE_SKIP_TABLE_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_GR_BALANCING_MODE_SKIP_TABLE_ENABLE                   (0x00000000)
#define NV_REG_STR_RM_GR_BALANCING_MODE_SKIP_TABLE_DISABLE                  (0x00000001)
#define NV_REG_STR_RM_GR_BALANCING_MODE_SKIP_TABLE_FORCED                   (0x00000002)
#define NV_REG_STR_RM_GR_BALANCING_MODE_PD_WORKLOAD                         3:2
#define NV_REG_STR_RM_GR_BALANCING_MODE_PD_WORKLOAD_DEFAULT                 (0x00000000)
#define NV_REG_STR_RM_GR_BALANCING_MODE_PD_WORKLOAD_ENABLE                  (0x00000000)
#define NV_REG_STR_RM_GR_BALANCING_MODE_PD_WORKLOAD_DISABLE                 (0x00000001)
#define NV_REG_STR_RM_GR_BALANCING_MODE_PD_WORKLOAD_FORCED                  (0x00000002)
#define NV_REG_STR_RM_GR_BALANCING_MODE_SKIP_MASK                           15:8
#define NV_REG_STR_RM_GR_BALANCING_MODE_SKIP_MASK_DEFAULT                   (0x00000000)

#define NV_REG_STR_RM_GR_BALANCING_MODE_DEFAULT                             (0x00000000)

// Type DWORD
// This Regkey programs the given PBDMA_TIMEOUT to NV_PPBDMA_TIMEOUT register.
// If regkey present and set to 0x1 then it will Disable the PBDMA TIMEOUT
// If its not present or 0x0, by default it overrides the PBDMA_TIMEOUT value to 0xffff.
// TBD : Remove this Regkey after Bug 1169646 fix
//
// NOTE: This bug also affects GM10X. see bug 1396640
// Do not remove this regkey until 1396640 is fixed.
#define NV_REG_STR_RM_1165534_PPBDMA_TIMEOUT                             "RmPbdmaTimeout"
#define NV_REG_STR_RM_1165534_PPBDMA_TIMEOUT_PERIOD                       31:0
#define NV_REG_STR_RM_1165534_PPBDMA_TIMEOUT_PERIOD_DEFAULT               (0x00000000)
#define NV_REG_STR_RM_1165534_PPBDMA_TIMEOUT_PERIOD_DISABLE               (0x00000001)
#define NV_REG_STR_RM_1165534_PPBDMA_TIMEOUT_PERIOD_MAX                   (0xffffffff)


// Type DWORD
// For bug 200340374 [RFE][OCA][DX Telemetry] Enable detection of backend (host) semaphore deadlocks in OCA TDR dumps.
// The point here is, on Windows, anyway OS will issue a TDR and request an engine reset after waiting for 2 seconds
// for a buffer to complete. So when we have a semaphore deadlock for a period specified here,
// NV_PPBDMA_INTR_0_ACQUIRE_PENDING will be set, if this reg key is present and non-zero.
//
// If the reg key is present and has a non-zero value, it represents the PBDMA acquire timeout period
// in millisecond to be programmed via NV_PPBDMA_ACQUIRE register.
// If it is not present or 0 is found in either field, RM will use its own default value.
#define NV_REG_STR_RM_PPBDMA_ACQUIRE_TIMEOUT                             "RmPbdmaAcquireTimeout"

// Type DWORD
// This Regkey to decide if we want to disable checks for fake LVDS entry added to support
// HP DC Calibration toool
#define NV_REG_STR_RM_1295474_CHECK_FAKE_LVDS_ENTRY                      "RmDisableFakeEntryCheck"
#define NV_REG_STR_RM_1295474_CHECK_FAKE_LVDS_ENTRY_DISABLE                        0:0
#define NV_REG_STR_RM_1295474_CHECK_FAKE_LVDS_ENTRY_DISABLE_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_1295474_CHECK_FAKE_LVDS_ENTRY_DISABLE_NO             (0x00000000)
#define NV_REG_STR_RM_1295474_CHECK_FAKE_LVDS_ENTRY_DISABLE_YES            (0x00000001)

#define NV_REG_STR_REPLAYABLE_FAULTS_DEFAULT                            "RmReplayableFaultsDefault"
// Type DWORD
// Controls the default setting for whether channels have replayable faults
// enabled. Per-channel settings will take precedence over this.
//
// Encoding
// DEFAULT - Use RM's default value
// DISABLED - Change the default to disabled (no replayable faults)
// ENABLED - Change the default to enabled.
#define NV_REG_STR_REPLAYABLE_FAULTS_DEFAULT_DEFAULT                     0x00000000
#define NV_REG_STR_REPLAYABLE_FAULTS_DEFAULT_DISABLED                    0x00000001
#define NV_REG_STR_REPLAYABLE_FAULTS_DEFAULT_ENABLED                     0x00000002


#define NV_REG_STR_RM_DEFAULT_PB_TIMESLICE                               "RmDefaultPbTimeslice"
#define NV_REG_STR_RM_DEFAULT_PB_TIMESLICE_DISABLE                        (0x00000000)
// Type DWORD
// Sets the default PBDMA timeslice value in microseconds.  If 0 timeslicing
// will be disabled.

// Type DWORD
// This Regkey overrides the maximum pixel clock supported for distributed
// rendering. To be used only for testing purposes, not production.
// The unix is in Mhz.
#define NV_REG_STR_RM_CLK_CAP_DIST_RENDER_MAX                             "RmDistRenderMax"

// Type DWORD
// This Regkey enables Dual MIO by default.
#define NV_REG_STR_RM_DUAL_MIO_INIT                                       "RmDualMIOInit"
#define NV_REG_STR_RM_DUAL_MIO_INIT_DEFAULT                               (0x00000000)
#define NV_REG_STR_RM_DUAL_MIO_INIT_DISABLE                               (0x00000000)
#define NV_REG_STR_RM_DUAL_MIO_INIT_ENABLE                                (0x00000001)

// Type DWORD
// Regkey to force disable execution of Falcon compaction script
#define NV_REG_STR_RM_GC6_COMPACTION_OVERRIDE                             "RmGc6CompactionOverride"
#define NV_REG_STR_RM_GC6_COMPACTION_OVERRIDE_DEFAULT                     (0x00000000)
#define NV_REG_STR_RM_GC6_COMPACTION_OVERRIDE_ENABLED                     (0x00000000)
#define NV_REG_STR_RM_GC6_COMPACTION_OVERRIDE_DISABLED                    (0x00000001)

// Type DWORD
// See Bug 968413
// This regkey overrides the bypass setting of discovery of the size of the ctxsw image
// This should only be used during bring-up

#define NV_REG_STR_RM_BYPASS_CTXSW_IMAGE_SIZE_DISCOVERY                    "RMBypassCtxswSizeDiscovery"
#define NV_REG_STR_RM_BYPASS_CTXSW_IMAGE_SIZE_DISCOVERY_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_BYPASS_CTXSW_IMAGE_SIZE_DISCOVERY_ENABLED              (0x00000001)
#define NV_REG_STR_RM_BYPASS_CTXSW_IMAGE_SIZE_DISCOVERY_DISABLED             (0x00000000)

#define NV_REG_STR_INTERRUPT_ESCAPES                                      "RmInterruptEscapes"
// Type DWORD
// send interrupt enable/disable are directed to HW escape calls.
//
// Encoding
// DISABLED - Change the default to disabled (default)
// ENABLED - Change the default to enabled
#define NV_REG_STR_INTERRUPT_ESCAPES_DISABLED                             0x00000000
#define NV_REG_STR_INTERRUPT_ESCAPES_ENABLED                              0x00000001

// Type DWORD
// This regkey forces for Maxwell+ that on FB Unload we wait for FB pull before issuing the
// L2 clean. WAR for bug 1032432
#define NV_REG_STR_RM_L2_CLEAN_FB_PULL                                    "RmL2CleanFbPull"
#define NV_REG_STR_RM_L2_CLEAN_FB_PULL_ENABLED                            (0x00000000)
#define NV_REG_STR_RM_L2_CLEAN_FB_PULL_DISABLED                           (0x00000001)
#define NV_REG_STR_RM_L2_CLEAN_FB_PULL_DEFAULT                            (0x00000000)

// Type DWORD
// This regkey overrides the default use case to optimize the GPU for.
// This regkey should not be used with the RMFermiBigPageSize regkey.
// This regkey should only be set by the RM.
#define NV_REG_STR_RM_OPTIMIZE_COMPUTE_OR_SPARSE_TEX    "RMOptimizeComputeOrSparseTex"
#define NV_REG_STR_RM_OPTIMIZE_COMPUTE_OR_SPARSE_TEX_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_OPTIMIZE_COMPUTE_OR_SPARSE_TEX_COMPUTE              (0x00000001)
#define NV_REG_STR_RM_OPTIMIZE_COMPUTE_OR_SPARSE_TEX_SPARSE_TEX           (0x00000002)

#define NV_REG_STR_RM_FAN_2X_OVERRIDE                                     "RmFan2XOverride"
#define NV_REG_STR_RM_FAN_2X_OVERRIDE_POR                                 1:0
#define NV_REG_STR_RM_FAN_2X_OVERRIDE_POR_DEFAULT                         0x0
#define NV_REG_STR_RM_FAN_2X_OVERRIDE_POR_DISABLE                         0x1
#define NV_REG_STR_RM_FAN_2X_OVERRIDE_POR_ENABLE                          0x2
// Type DWORD
// Overrides Fan 2.0 functionality
// 0 - Use default POR for fan control.
// 1 - Disable Fan 2.0 and fallback to Fan 1.0 or legacy fan control. Once
//      Fan 2.0 becomes a de-facto standard, setting this option would
//      disable RM/PMU fan control so there will be no change in fan speed.
// 2 - Enable Fan 2.0 if VBIOS tables are present. If VBIOS tables aren't
//      populated, setting this option would disable RM/PMU fan control so
//      there will be no change in fan speed.
//

// Type DWORD
// This Regkey controls inforom's garbage cleaning. To be used only for testing
// purposes, not production.
// NO       - Enable deferred garbage cleaning. (default)
// YES      - Disable garbage cleaning completely.
// DEFERRED - Disable deferred garbage cleaning.
//
#define NV_REG_STR_RM_INFOROM_DISABLE_GC                     "RmDisableInforomGC"
#define NV_REG_STR_RM_INFOROM_DISABLE_GC_NO                  (0x00000000)
#define NV_REG_STR_RM_INFOROM_DISABLE_GC_YES                 (0x00000001)
#define NV_REG_STR_RM_INFOROM_DISABLE_GC_DEFERRED            (0x00000002)

// Type DWORD
// This Regkey controls inforom black box data recording. This can be used to
// restrict access to BBX.
// 0               - Enable BBX. (Default)
// COMPLETELY      - Enable/Disable BBX access (read/write).
// WRITE_BY_RM     - Enable/Disable writes by RM itself.
// WRITE_BY_CLIENT - Enable/Disable writes by clients to RM.
// PERIODIC FLUSH  - Enable/Disable periodic flush to inforom (Also enables/disables Power data collection)
//
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX                  "RmDisableInforomBBX"
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_NO                        (0x00000000)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_YES                       (0x00000001)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_COMPLETELY                         0:0
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_COMPLETELY_NO             (0x00000000)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_COMPLETELY_YES            (0x00000001)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_WRITE_BY_RM                        1:1
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_WRITE_BY_RM_NO            (0x00000000)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_WRITE_BY_RM_YES           (0x00000001)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_WRITE_BY_CLIENT                    2:2
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_WRITE_BY_CLIENT_NO        (0x00000000)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_WRITE_BY_CLIENT_YES       (0x00000001)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_PERIODIC_FLUSH                     3:3
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_PERIODIC_FLUSH_YES        (0x00000000)
#define NV_REG_STR_RM_INFOROM_DISABLE_BBX_PERIODIC_FLUSH_NO         (0x00000001)

// Type: DWORD
//   The rate at which the lifetime data about the GPU is written into the BlackBox Recorder (BBX) object
//   in INFOROM (in seconds)
#define NV_REG_STR_RM_INFOROM_BBX_WRITE_PERIODICITY                 "RMInforomBBXWritePeriodicity"
#define NV_REG_STR_RM_INFOROM_BBX_WRITE_PERIODICITY_DEFAULT         600 // 600 seconds (10min)

// Type: DWORD
//   The minimum duration the driver must run before writing to the BlackBox Recorder (BBX) object
//   on driver exit (in seconds)
//   DEFAULT - The default value and the minimum value allowed
//
#define NV_REG_STR_RM_INFOROM_BBX_WRITE_MIN_DURATION                "RMInforomBBXWriteMinDuration"
#define NV_REG_STR_RM_INFOROM_BBX_WRITE_MIN_DURATION_DEFAULT        30 // 30 seconds

// Type: DWORD
// This regkey controls InfoROM NVLINK recording. This can be used to disable
// logging of NVLINK data.
// FATAL_ERROR_LOGGING  - Enable/disable logging of NVLINK fatal errors (default
//                        enabled)
#define NV_REG_STR_RM_INFOROM_DISABLE_NVLINK             "RmDisableInforomNvlink"
#define NV_REG_STR_RM_INFOROM_DISABLE_NVLINK_FATAL_ERROR_LOGGING                     0:0
#define NV_REG_STR_RM_INFOROM_DISABLE_NVLINK_FATAL_ERROR_LOGGING_NO         (0x00000000)
#define NV_REG_STR_RM_INFOROM_DISABLE_NVLINK_FATAL_ERROR_LOGGING_YES        (0x00000001)
#define NV_REG_STR_RM_INFOROM_DISABLE_NVLINK_CORRECTABLE_ERROR_LOGGING               1:1
#define NV_REG_STR_RM_INFOROM_DISABLE_NVLINK_CORRECTABLE_ERROR_LOGGING_NO   (0x00000000)
#define NV_REG_STR_RM_INFOROM_DISABLE_NVLINK_CORRECTABLE_ERROR_LOGGING_YES  (0x00000001)


//
// TYPE DWORD
// This regkey overrides the LTC fuse settings on FMODEL since fuses are not
// supported on FMODEL but HW would like to test extended memory with LTC
// floorsweeping.
//
#define NV_REG_STR_RM_ROP_L2_FUSE_MASK_FOR_FMODEL                         "RMROPL2FuseMaskForFModel"
#define NV_REG_STR_RM_ROP_L2_FUSE_MASK_FOR_FMODEL_MASK                    31:0
#define NV_REG_STR_RM_ROP_L2_FUSE_MASK_FOR_FMODEL_IDX(i)                  (i):(i)
#define NV_REG_STR_RM_ROP_L2_FUSE_MASK_FOR_FMODEL_IDX__SIZE_1             32
#define NV_REG_STR_RM_ROP_L2_FUSE_MASK_FOR_FMODEL_IDX_ENABLE              0x00000000
#define NV_REG_STR_RM_ROP_L2_FUSE_MASK_FOR_FMODEL_IDX_DISABLE             0x00000001

//
// Type DWORD
// The MMU WAR for "bubbles" HW deadlock: Bug 1325336, 1317235
//
#define NV_REG_STR_RM_1325336                                             "RMFC3GrHangBug1325336"
#define NV_REG_STR_RM_1325336_DISABLED                                    (0x00000000)
#define NV_REG_STR_RM_1325336_ENABLED                                     (0x00000001)

//
// TYPE DWORD
// Creates ACR region with the parameters specified in the this Reg key. To create
//      specific region, refer to ACR_REGION_1 and ACR_REGION2
// ACR_REGION_SIZE : Size needed for ACR region
//                   This request automatically sets the ACR_READ_MASK to 0x7
//                   and ACR_WRITEMASK To 0x4. these are the default values.
//                   client can override it using -acr_readmask and -acr_writemask
//                   arguments.
// ACR_REGION_READMASK: Specify the read mask of Priv Levels.
// ACR_REGION_WRITEMASK : Specify the write mask of priv level
// ACR_REGION_MEMALIGN : Alignment of the memory. Currently we support 4KB Alignment
//                       only.
//
#define NV_REG_STR_RM_CREATE_ACR_REGION_1                                  "RMCreateAcrRegion1"
#define NV_REG_STR_RM_CREATE_ACR_REGION_2                                  "RMCreateAcrRegion2"
#define NV_REG_STR_RM_CREATE_ACR_REGION_SIZE                               15:0
#define NV_REG_STR_RM_CREATE_ACR_REGION_READMASK                           18:16
#define NV_REG_STR_RM_CREATE_ACR_REGION_WRITEMASK                          21:19
#define NV_REG_STR_RM_CREATE_ACR_REGION_MEMALIGN                           31:22

#define NV_REG_STR_RM_EXECUTE_ACR_ON_SEC2                                  "RMAcrExecuteOnSec2"
#define NV_REG_STR_RM_EXECUTE_ACR_ON_SEC2_ENABLED                          1
#define NV_REG_STR_RM_EXECUTE_ACR_ON_SEC2_DISABLED                         0

//
// TYPE DWORD
// Enables the GA100 RISC-V LS implementation by forcing
// alternate ACR and SEC2 binaries to load.
//
#define NV_REG_STR_RM_ENABLE_RISCV_LS                                      "RmEnableRiscvLs"
#define NV_REG_STR_RM_ENABLE_RISCV_LS_FALSE                                0
#define NV_REG_STR_RM_ENABLE_RISCV_LS_TRUE                                 1

#define NV_REG_STR_RM_SLI_GPU_BOOST_SYNC_OVERRIDE                          "RmSliGpuBoostSyncOverride"
#define NV_REG_STR_RM_SLI_GPU_BOOST_SYNC_OVERRIDE_POR                      1:0
#define NV_REG_STR_RM_SLI_GPU_BOOST_SYNC_OVERRIDE_POR_DEFAULT              0x0
#define NV_REG_STR_RM_SLI_GPU_BOOST_SYNC_OVERRIDE_POR_DISABLE              0x1
#define NV_REG_STR_RM_SLI_GPU_BOOST_SYNC_OVERRIDE_POR_ENABLE               0x2

//
// TYPE DWORD
// Disable CE copy path for shadow memory
// Fallback to RM copy
// Default state is enabled
//
#define NV_REG_STR_RM_ACR_USE_CE_FOR_SHADOW_COPY                        "RMAcrUseCeForShadowCopy"
#define NV_REG_STR_RM_ACR_USE_CE_FOR_SHADOW_COPY_STATE                  0:0
#define NV_REG_STR_RM_ACR_USE_CE_FOR_SHADOW_COPY_STATE_DISABLE          0
#define NV_REG_STR_RM_ACR_USE_CE_FOR_SHADOW_COPY_STATE_ENABLE           1

// Type DWORD
// Overrides SLI GPU Boost synchronization functionality
// 0 - Use default POR for SLI GPU Boost synchronization.
// 1 - Disable SLI GPU Boost synchronization.
// 2 - Enable SLI GPU Boost synchronization.
//

#define NV_REG_STR_RM_SLI_GPU_BOOST_SYNC_HYSTERESIS_US                     "RmSliGpuBoostSyncHysteresisUs"
#define NV_REG_STR_RM_SLI_GPU_BOOST_SYNC_HYSTERESIS_US_ZER0                0
#define NV_REG_STR_RM_SLI_GPU_BOOST_SYNC_HYSTERESIS_US_DEFAULT             10000000
// Type DWORD
// Encoding: Hysteresis value (in us) that is used by SLI GPU Boost
// synchronization hysteresis algorithm.
//

//
// Control the state of Sync Gpu Boost feature, overriding any PORs
// Type: DWORD
//
#define NV_REG_STR_RM_SYNC_GPU_BOOST_OVERRIDE           "RmSyncGpuBoostOverride"
#define NV_REG_STR_RM_SYNC_GPU_BOOST_OVERRIDE_DISABLE    0x0
#define NV_REG_STR_RM_SYNC_GPU_BOOST_OVERRIDE_ENABLE     0x1

//
// TYPE DWORD
// Disables LSFM management of selected falcons
// Specific falcon(s) are chosen by setting corresponding NVBIT(LSF_FALCON_ID)s
// using LSF_FALCON_IDs in drivers/resman/arch/nvalloc/common/inc/rmlsfm.h
//
#define NV_REG_STR_RM_LSFM_DISABLE_MASK                                    "RMLSFMDisableMask"
#define NV_REG_STR_RM_LSFM_DISABLE_MASK_NONE                               (0x00000000)
#define NV_REG_STR_RM_LSFM_DISABLE_MASK_ALL                                (0xFFFFFFFF)

//
// TYPE DWORD
// To enable LSFM feature.
// Once LSFM WPR blobs version is supported, OBJACR will load corresponding PKC-LS images.
//
#define NV_REG_STR_RM_LSFM_FEATURE                                       "RmLSFMFeature"
#define NV_REG_STR_RM_LSFM_FEATURE_WPR_BLOB_VERSION                       0:0
#define NV_REG_STR_RM_LSFM_FEATURE_WPR_BLOB_VERSION_UNSUPPORT             0
#define NV_REG_STR_RM_LSFM_FEATURE_WPR_BLOB_VERSION_SUPPORT               1

//
// TYPE DWORD
// Disables Access Controlled Regions
//
#define NV_REG_STR_RM_DISABLE_ACR                                          "RMDisableAcr"
#define NV_REG_STR_RM_DISABLE_ACR_FALSE                                    (0x00000000)
#define NV_REG_STR_RM_DISABLE_ACR_TRUE                                     (0x00000001)

//
// TYPE DWORD
// Enable ACR RISCV partition on GSP
//
#define NV_REG_STR_RM_ENABLE_ACR_RISCV                                     "RMEnableAcrRiscv"
#define NV_REG_STR_RM_ENABLE_ACR_RISCV_FALSE                               (0x00000000)
#define NV_REG_STR_RM_ENABLE_ACR_RISCV_TRUE                                (0x00000001)

//
// TYPE DWORD
// Enable ACR RISCV partition on GSP
//
#define NV_REG_STR_RM_DISABLE_RESIDENT_GSP_IMAGE                             "RmDisableResidentGspImage"
#define NV_REG_STR_RM_DISABLE_RESIDENT_GSP_IMAGE_FALSE                       (0x00000000)
#define NV_REG_STR_RM_DISABLE_RESIDENT_GSP_IMAGE_TRUE                        (0x00000001)

//
// TYPE DWORD
// Skip GR Reset when INST_SYS mode is used
// Bug: 1589428
//
#define NV_REG_STR_RM_SKIP_GR_RESET_FOR_INST_SYS                           "RMSkipGrResetForInstSys"
#define NV_REG_STR_RM_SKIP_GR_RESET_FOR_INST_SYS_FALSE                     (0x00000000)
#define NV_REG_STR_RM_SKIP_GR_RESET_FOR_INST_SYS_TRUE                      (0x00000001)

//
// TYPE DWORD
// Disables HDCP22 feature
//
#define NV_REG_STR_RM_DISABLE_HDCP22                                          "RmDisableHdcp22"
#define NV_REG_STR_RM_DISABLE_HDCP22_FALSE                                    (0x00000000)
#define NV_REG_STR_RM_DISABLE_HDCP22_TRUE                                     (0x00000001)

//
// TYPE DWORD
// Force enable Access Controlled Regions (ACR) in SW. Only needed for RTL & Tegra.
// ACR is enabled in SW by default in all platforms, except RTL.
// In Tegra, we also use this argument to enable VPR & WPR SoC fuses in development environments,
// namely EMU, RTL, verif-silicon. In Tegra, GPU HW won't initialize without enabling WPR/VPR fuses.
//
#define NV_REG_STR_RM_ENABLE_ACR                                           "RMEnableAcr"
#define NV_REG_STR_RM_ENABLE_ACR_FALSE                                     (0x00000000)
#define NV_REG_STR_RM_ENABLE_ACR_TRUE                                      (0x00000001)

//
// TYPE DWORD
// Sets the DEBUG CTRL register's dummy page size
// Primarily used for testing different dummy page sizes for
// sparse textures. The override for big page size will only work
// if the GPU supports that big page size.
//
#define NV_REG_STR_RM_SET_MMU_DEBUG_PAGE_SIZE                               "RMSetMmuDummyPageSize"
#define NV_REG_STR_RM_SET_MMU_DEBUG_PAGE_SIZE_4k                            0x00000000
#define NV_REG_STR_RM_SET_MMU_DEBUG_PAGE_SIZE_64k                           0x00000001
#define NV_REG_STR_RM_SET_MMU_DEBUG_PAGE_SIZE_128k                          0x00000002

#if defined(DEVELOP) || defined(DEBUG) || defined(NV_MODS)
//
// TYPE DWORD
// This setting will override the BAR1 Big page size
// This is used for interop testing for MODS
//
#define NV_REG_STR_RM_SET_BAR1_ADDRESS_SPACE_BIG_PAGE_SIZE                  "RMSetBAR1AddressSpaceBigPageSize"
#define NV_REG_STR_RM_SET_BAR1_ADDRESS_SPACE_BIG_PAGE_SIZE_64k              (64 * 1024)
#define NV_REG_STR_RM_SET_BAR1_ADDRESS_SPACE_BIG_PAGE_SIZE_128k             (128 * 1024)
#endif //DEVELOP || DEBUG || NV_MODS

//
// TYPE DWORD
// This setting will disable big page size per address space
//
#define NV_REG_STR_RM_DISABLE_BIG_PAGE_PER_ADDRESS_SPACE                     "RmDisableBigPagePerAddressSpace"
#define NV_REG_STR_RM_DISABLE_BIG_PAGE_PER_ADDRESS_SPACE_FALSE               (0x00000000)
#define NV_REG_STR_RM_DISABLE_BIG_PAGE_PER_ADDRESS_SPACE_TRUE                (0x00000001)

#define NV_REG_STR_FORCE_GR_UCODE_LOAD                                     "RMForceGrUcodeLoad"
#define NV_REG_STR_FORCE_GR_UCODE_LOAD_DISABLE                             0x0
#define NV_REG_STR_FORCE_GR_UCODE_LOAD_ENABLE                              0x1
// Type DWORD
// Encoding -- 0 -- Disable
//          -- 1 -- Enable

#define NV_REG_STR_VGPU_GP_IN_BAR0             "RMVGPUGpInBAR0"
// Type DWORD:
// Encoding -- Boolean
// Enables/Disables the features of keeping Get/Put pointer for vGPU
// send and receive ring inside BAR0
//
#define NV_REG_STR_VGPU_GP_IN_BAR0_ENABLE      0x00000001
#define NV_REG_STR_VGPU_GP_IN_BAR0_DISABLE     0x00000000

#define NV_REG_STR_VMWARE_DEV_GPU_SUPPORT        "RMVMwareDevGPUEnable"
// Type DWORD:
// Encoding -- Boolean
// Enable/Disable the GPU support based on Customer need. Keeping this
// closed source regkey.
#define NV_REG_STR_VMWARE_DEV_GPU_SUPPORT_ENABLE   0x00000001
#define NV_REG_STR_VMWARE_DEV_GPU_SUPPORT_DISABLE  0x00000000

#define NV_REG_STR_SIMICS_FULLSTACK           "RMSimicsFullstack"
// Type DWORD:
// Encoding -- Boolean
// Enable/Disable Simics full-stack verification platform support
#define NV_REG_STR_SIMICS_FULLSTACK_ENABLE    0x00000001
#define NV_REG_STR_SIMICS_FULLSTACK_DISABLE   0x00000000

#define NV_REG_STR_OVERRIDE_GPU_NUMA_NODE_ID    "RMOverrideGpuNumaNodeId"
// Type DWORD:
// Encoding -- NvS32
// Override GPU NUMA Node ID assigned by OS

#define NV_REG_STR_RM_REPLAY_CE_WAR_1453179          "RMClearReplayCEWAR"
// Type: DWORD
// Enables/Disables the WAR for bug 1453179 where we clear the replay and CE count
// Enabled by default
//
#define NV_REG_STR_RM_REPLAY_CE_WAR_1453179_ENABLE        0x00000001
#define NV_REG_STR_RM_REPLAY_CE_WAR_1453179_DISABLE       0x00000000

#define NV_REG_PROCESS_NONSTALL_INTR_IN_LOCKLESS_ISR  "RMProcessNonStallIntrInLocklessIsr"

// Type: DWORD
// Enables/Disables processing of non-stall interrupts in lockless ISR for
// Linux only.
// Non-stall interrupts are processed by the function
// intrServiceNonStall_HAL(pIntr,pGpu, TRUE /* bProcess*/); where bProcess is TRUE which
// means that event list will be traversed to notify clients registered for it.
// Disabled by default
//

#define NV_REG_PROCESS_NONSTALL_INTR_IN_LOCKLESS_ISR_DISABLE      0x00000000
#define NV_REG_PROCESS_NONSTALL_INTR_IN_LOCKLESS_ISR_ENABLE       0x00000001

//
// Type: DWORD
// Enable/Disable the WAR for bug 1482987 where we clear the EDC/Replay feature
// for 8L substrate
//
#define NV_REG_STR_RM_8L_SUBSTRATE_WAR_1482987              "RM1482987"
#define NV_REG_STR_RM_8L_SUBSTRATE_WAR_1482987_ENABLE        0x00000000
#define NV_REG_STR_RM_8L_SUBSTRATE_WAR_1482987_DISABLE       0x00000001

//
// Type: DWORD
// Enable/Disable the Locked Clocks Mode if chip supports this mode.
//
#define NV_REG_STR_RM_FORCE_LOCKED_CLOCKS_MODE              "RMForceLockedClocksMode"
#define NV_REG_STR_RM_FORCE_LOCKED_CLOCKS_MODE_ENABLE        0x00000001
#define NV_REG_STR_RM_FORCE_LOCKED_CLOCKS_MODE_DISABLE       0x00000000
#define NV_REG_STR_RM_FORCE_LOCKED_CLOCKS_MODE_DEFAULT      NV_REG_STR_RM_FORCE_LOCKED_CLOCKS_MODE_DISABLE

#define NV_REG_STR_RM_FORCE_NETLIST_NUMBER    "RMForceNetlistNumber"
// Type DWORD
// If set, forces a netlist number. This is needed because on emulation
// netlists that are composed of hierarchical gates only, the register that
// exposes the netlist number to RM does not exist. However, RM has to know
// what the netlist number is in order to align certain code paths with
// appropriate netlist snaps. Therefore, this regkey should be used on those
// netlists only that do not expose a netlist number.
//

#if defined(NV_MODS)
#define NV_REG_STR_RM_FORCE_DR_SYNC_ADVANCE    "RMForceDrSyncAdvance"
// Type DWORD
// Forces the value for DR sync advance
// Encoding : Value is used to update DR sync advance.
#endif  // defined(NV_MODS)

//
// Type DWORD
// For GM10X and later, controls execution of RM initiated devinit.
//
#define NV_REG_STR_RM_EXECUTE_DEVINIT_ON_PMU                 "RMExecuteDevinitOnPmu"
#define NV_REG_STR_RM_EXECUTE_DEVINIT_ON_PMU_FALSE           (0x00000000)
#define NV_REG_STR_RM_EXECUTE_DEVINIT_ON_PMU_TRUE            (0x00000001)

//
// Type DWORD
// To force a FB kind for all mapping.
// Note that this will take effect only based on the surface type.
// For e.g. A compressed kind can only be forced on a compressed surface.
//
#define NV_REG_STR_RM_FORCE_PTE_KIND                 "RMForcePteKind"
#define NV_REG_STR_RM_FORCE_PTE_KIND_DEFAULT         (0x00000000)
#define NV_REG_STR_RM_FORCE_PTE_KIND_C32_MS4_2CBR    (0x00000001)
#define NV_REG_STR_RM_FORCE_PTE_KIND_C32_MS4_2CBA    (0x00000002)
#define NV_REG_STR_RM_FORCE_PTE_KIND_C32_MS4_2CRA    (0x00000003)
#define NV_REG_STR_RM_FORCE_PTE_KIND_C32_MS4_2BRA    (0x00000004)
#define NV_REG_STR_RM_FORCE_PTE_KIND_GENERIC_MEMORY  (0x00000005)

//
// TYPE DWORD
// Enables/Disables the use of Aggressive GC6
//
#define NV_REG_STR_RM_USE_AGGRESSIVE_GC6                     "RMUseAggressiveGC6"
#define NV_REG_STR_RM_USE_AGGRESSIVE_GC6_NO                  (0x00000000)
#define NV_REG_STR_RM_USE_AGGRESSIVE_GC6_YES                 (0x00000001)
// Encoding 0 --> Do not use Aggressive GC6 (default)
//          1 --> Use Aggressive GC6

//
// TYPE DWORD
// This regkey can be used to enable logging of the WARP_ESR_PC to MODS during
// an SM exception.
//
// DEFAULT - Use the default setting for logging of the WARP_ESR_PC.
// YES     - Enable logging of the WARP_ESR_PC to MODS.
//
#define NV_REG_STR_RM_LOG_WARP_ESR_PC_TO_MODS           "RMLogWarpEsrPcToMods"
#define NV_REG_STR_RM_LOG_WARP_ESR_PC_TO_MODS_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_LOG_WARP_ESR_PC_TO_MODS_YES       (0x00000001)

//
// TYPE DWORD
// This regkey can be used to ignore upper memory on GM20X and later. If there
// is upper memory but this regkey is set to _YES, then RM will only expose the
// lower memory to clients.
//
// DEFAULT - Use the default setting of upper memory on GM20X-and-later.
// YES     - Ignore upper memory on GM20X-and-later.
//
#define NV_REG_STR_RM_IGNORE_UPPER_MEMORY           "RMIgnoreUpperMemory"
#define NV_REG_STR_RM_IGNORE_UPPER_MEMORY_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_IGNORE_UPPER_MEMORY_YES       (0x00000001)

// Type: DWORD
// Force enables pass-through.
// Disabled by default
//
#define NV_REG_STR_RM_FORCE_ENABLE_HYPERVISOR          "ForceEnableHypervisor"

//
// TYPE DWORD
// This regkey can be used to disable a single head multiple streams GM20x
// features (single head dual SST/MST)
//
// DEFAULT              - Default none disabled
// ENABLE_DUAL_SST      - This bit tells whether to enable single head dual SST feature or not
// ENABLE_DUAL_MST      - This bit tells whether to enable single head dual MST feature or not
//
#define NV_REG_STR_RM_ENABLE_SINGLE_HEAD_MULTI_DISPLAY              "RMEnableSingleHeadMultiDisplay"
#define NV_REG_STR_RM_ENABLE_SINGLE_HEAD_MULTI_DISPLAY_SST          0:0
#define NV_REG_STR_RM_ENABLE_SINGLE_HEAD_MULTI_DISPLAY_SST_DEFAULT  (0x00000000)
#define NV_REG_STR_RM_ENABLE_SINGLE_HEAD_MULTI_DISPLAY_SST_YES      (0x00000001)
#define NV_REG_STR_RM_ENABLE_SINGLE_HEAD_MULTI_DISPLAY_MST          1:1
#define NV_REG_STR_RM_ENABLE_SINGLE_HEAD_MULTI_DISPLAY_MST_DEFAULT  (0x00000000)
#define NV_REG_STR_RM_ENABLE_SINGLE_HEAD_MULTI_DISPLAY_MST_YES      (0x00000001)

#define NV_REG_STR_RM_ENABLE_SINGLE_HEAD_MULTI_DISPLAY_DEFAULT      (0x00000000)

//
// TYPE DWORD
// This regkey can be used to enable HDMI 2.0
//
// DEFAULT  - Default value whether to Enable feature HDMI 2.0
// YES      - Enable feature HDMI 2.0
//
#define NV_REG_STR_RM_ENABLE_HDMI_2            "RMEnableHdmi2"
#define NV_REG_STR_RM_ENABLE_HDMI_2_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_ENABLE_HDMI_2_YES        (0x00000001)

//
// TYPE DWORD
// Size of the PSDL license that will be set using RMPsdlCert
// This is not required if -psdl_cert MODS arg is used
//
#define NV_REG_STR_RM_PSDL_CERT_SIZE                "RMPsdlCertSize"

//
// TYPE DWORD
// Exit status of acrHandlePsdl_GM200
// This registry key will be written by RM and used by RMTEST
// This is not required if -psdl_cert is not used
//
#define NV_REG_STR_RM_PSDL_STATUS                   "RMPsdlCertStatus"

//
// TYPE BINARY
// Holds the PSDL license to help lower priv level on
// certain priv level mask registers.
//
#define NV_REG_STR_RM_PSDL_CERT                     "RMPsdlCert"

//
// TYPE DWORD
// Size of the HULK license that will be set using RMHulkCert
// This is not required if -hulk_cert MODS arg is used
//
#define NV_REG_STR_RM_HULK_CERT_SIZE                "RMHulkCertSize"

//
// TYPE BINARY
// Holds the HULK license to help lower priv level on
// certain priv level mask registers.
//
#define NV_REG_STR_RM_HULK_CERT                     "RMHulkCert"

// Type DWORD
// 0 - Do not suppress HULK binary errors (default value)
// 1 - Ignore HULK binary errors
#define NV_REG_STR_RM_IGNORE_HULK_ERRORS                    "RmIgnoreHulkErrors"
#define NV_REG_STR_RM_IGNORE_HULK_ERRORS_FALSE              (0x00000000)
#define NV_REG_STR_RM_IGNORE_HULK_ERRORS_TRUE               (0x00000001)

//
// Type DWORD
// Disable features for which suicide bits are set is HULK license
//
// BIT 0: Disable VPR  if set to 0x1
// BIT 1: Disable WPR  if set to 0x1
// BIT 2: Disable HDCP if set to 0x1
//
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES                 "RmHulkDisableFeatures"
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_VPR             0:0
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_VPR_FALSE       (0x00000000)
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_VPR_TRUE        (0x00000001)
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_WPR             1:1
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_WPR_FALSE       (0x00000000)
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_WPR_TRUE        (0x00000001)
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_HDCP            2:2
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_HDCP_FALSE      (0x00000000)
#define NV_REG_STR_RM_HULK_DISABLE_FEATURES_HDCP_TRUE       (0x00000001)

// Type DWORD
// 0 - Vbios Data Runtime Security feature supported
// 1 - Vbios Data Runtime Security feature not supported
#define NV_REG_STR_RM_VRDS_SUPPORTED                        "RmVrdsSupported"
#define NV_REG_STR_RM_VRDS_SUPPORTED_FALSE                  (0x00000000)
#define NV_REG_STR_RM_VRDS_SUPPORTED_TRUE                   (0x00000001)

//
// Type DWORD
// Overrides HDA options.
// Work  only for GM20X_and_later chips for audio falcon
//
// BIT 0:
// Addressing mode is been handled by this.
// 0 - Default case which is Virtual Addressing Mode
// 1 - Physical Addressing Mode.
//
#define NV_REG_STR_RM_HDA                       "RmHdaOverride"
#define NV_REG_STR_RM_HDA_UCODE_ADDRMODE        0:0
#define NV_REG_STR_RM_HDA_UCODE_ADDRMODE_VIRT   (0x00000000)
#define NV_REG_STR_RM_HDA_UCODE_ADDRMODE_PHYS   (0x00000001)

//
// Type DWORD
//
// NV_REG_STR_RM_PRIV_SECURITY_REGISTERS:
// For GM20X, to enable priv security registers on INT and CS SKUs.
// Later SKUs, this will be enabled by default.
//
// NV_REG_STR_RM_PRIV_SECURITY_DISABLE:
// Disable priv security.
// Only available in Tegra development environments,
// namely RTLSIM, EMULATION and SILICON development boards, in debug mode.
// Not supported in FMODEL & SILICON production boards.
//
// NV_REG_STR_RM_PRIV_SECURITY_MODE:
// Enable priv security in debug mode.
// Only available in Tegra development environments in debug mode.
// No supported in FMODEL & SILICON production boards.
//
#define NV_REG_STR_RM_PRIV_SECURITY                        "RMPrivSecurity"
#define NV_REG_STR_RM_PRIV_SECURITY_REGISTERS              0:0
#define NV_REG_STR_RM_PRIV_SECURITY_REGISTERS_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_PRIV_SECURITY_REGISTERS_DISABLED     (0x00000000)
#define NV_REG_STR_RM_PRIV_SECURITY_REGISTERS_ENABLED      (0x00000001)
#define NV_REG_STR_RM_PRIV_SECURITY_DISABLE                2:1
#define NV_REG_STR_RM_PRIV_SECURITY_DISABLE_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_PRIV_SECURITY_DISABLE_FALSE          (0x00000001)
#define NV_REG_STR_RM_PRIV_SECURITY_DISABLE_TRUE           (0x00000002)
#define NV_REG_STR_RM_PRIV_SECURITY_MODE                   4:3
#define NV_REG_STR_RM_PRIV_SECURITY_MODE_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_PRIV_SECURITY_MODE_PROD              (0x00000001)
#define NV_REG_STR_RM_PRIV_SECURITY_MODE_DEBUG             (0x00000002)

//
// TYPE DWORD
// This regkey can be used to disable optimal power consumption for padlink CML buffer.
//
// DEFAULT  - Keep the feature enabled by default
// YES      - Disable the feature
//
#define NV_REG_STR_RM_DISABLE_OPTIMAL_POWER_FOR_PADLINK_PLL            "RMDisableOptimalPowerForPadlinkPll"
#define NV_REG_STR_RM_DISABLE_OPTIMAL_POWER_FOR_PADLINK_PLL_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_DISABLE_OPTIMAL_POWER_FOR_PADLINK_PLL_YES        (0x00000001)

//
// TYPE DWORD
// This regkey can be used to override the MIO PAD preAmp value to be written into
// NV_PMGR_PAD_MIOA_PREAMP, NV_PMGR_PAD_MIOB_PREAMP
//
// Encoding : DWORD value
//
#define NV_REG_STR_RM_PAD_MIO_PREAMP                                    "RmPadMIOPreAmp"

//
// TYPE DWORD
// This regkey can be used to override the MIO PAD deEmp value to be written into
// NV_PMGR_PAD_MIOA_DEEMP, NV_PMGR_PAD_MIOB_DEEMP
//
// Encoding : DWORD value
// Default value: 0 (Disable)
//
#define NV_REG_STR_RM_PAD_MIO_DEEMP                                    "RmPadMIODeEmp"


//
// TYPE DWORD
// This regkey can be used to have RM never power off the MIOs, i.e. leave them on.
//
// Encoding : DWORD value
// Default value: 0 (Disable)
//
#define NV_REG_STR_RM_NO_MIO_POWER_OFF                                  "RmMIONoPowerOff"

//
// Type DWORD
// Controls enable of PMA memory management instead of existing legacy
// RM FB heap manager.
//
#define NV_REG_STR_RM_ENABLE_PMA                "RMEnablePMA"
#define NV_REG_STR_RM_ENABLE_PMA_YES            (0x00000001)
#define NV_REG_STR_RM_ENABLE_PMA_NO             (0x00000000)

//
// Type DWORD
// Controls enable of Address Tree memory tracking instead of regmap
// for the PMA memory manager.
//
#define NV_REG_STR_RM_ENABLE_ADDRTREE       "RMEnableAddrtree"
#define NV_REG_STR_RM_ENABLE_ADDRTREE_YES   (0x00000001)
#define NV_REG_STR_RM_ENABLE_ADDRTREE_NO    (0x00000000)

//
// Type DWORD
// Controls management of client page tables by PMA on MODS.
// Default enable. MODS will use regkey to override to disable feature.
//
#define NV_REG_STR_RM_ENABLE_PMA_MANAGED_PTABLES           "RMEnablePmaManagedPtables"
#define NV_REG_STR_RM_ENABLE_PMA_MANAGED_PTABLES_YES       (0x00000001)
#define NV_REG_STR_RM_ENABLE_PMA_MANAGED_PTABLES_NO        (0x00000000)
#define NV_REG_STR_RM_ENABLE_PMA_MANAGED_PTABLES_DEFAULT   (0x00000001)

//
// Type DWORD
// Use this regkey to force RM to pick a P2P type. HW has to support the picked TYPE to take effect.
// e.g., TYPE_BAR1P2P will not work if HW does not support it. A call to create NV50_P2P object will
// will fail in such a case.
//
// TYPE_DEFAULT let RM to choose a P2P type. The priority is:
//              C2C > NVLINK > BAR1P2P > mailbox P2P
//
// TYPE_C2C to use C2C P2P if it supports
// TYPE_NVLINK to use NVLINK P2P, including INDIRECT_NVLINK_P2P if it supports
// TYPE_BAR1P2P to use BAR1 P2P if it supports
// TYPE_MAILBOXP2P to use mailbox p2p if it supports
//
#define NV_REG_STR_RM_FORCE_P2P_TYPE                           "RMForceP2PType"
#define NV_REG_STR_RM_FORCE_P2P_TYPE_DEFAULT                   (0x00000000)
#define NV_REG_STR_RM_FORCE_P2P_TYPE_MAILBOXP2P                (0x00000001)
#define NV_REG_STR_RM_FORCE_P2P_TYPE_BAR1P2P                   (0x00000002)
#define NV_REG_STR_RM_FORCE_P2P_TYPE_NVLINK                    (0x00000003)
#define NV_REG_STR_RM_FORCE_P2P_TYPE_C2C                       (0x00000004)
#define NV_REG_STR_RM_FORCE_P2P_TYPE_MAX                       NV_REG_STR_RM_FORCE_P2P_TYPE_C2C

//
// Type DWORD
// NVLINK control overrides.
//
// FORCE_DISABLE: Force disable NVLINK when the current default is ON (POR)
//
// TRAIN_AT_LOAD : Force train links during driver load
//
// FORCE_AUTOCONFIG : Force autoconfig training regardless of chiplib forced config links
//
// FORCE_ENABLE: Force enable NVLINK when the current default is OFF (bringup etc.)
//
// PARALLEL_TRAINING: Have the GPU endpoint parallelize link training
#define NV_REG_STR_RM_NVLINK_CONTROL                                "RMNvLinkControl"
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_DISABLE                  0:0
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_DISABLE_NO               (0x00000000)
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_DISABLE_YES              (0x00000001)
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_DISABLE_DEFAULT          (NV_REG_STR_RM_NVLINK_CONTROL_FORCE_DISABLE_NO)
#define NV_REG_STR_RM_NVLINK_CONTROL_TRAIN_AT_LOAD                  1:1
#define NV_REG_STR_RM_NVLINK_CONTROL_TRAIN_AT_LOAD_NO               (0x00000000)
#define NV_REG_STR_RM_NVLINK_CONTROL_TRAIN_AT_LOAD_YES              (0x00000001)
#define NV_REG_STR_RM_NVLINK_CONTROL_TRAIN_AT_LOAD_DEFAULT          (NV_REG_STR_RM_NVLINK_CONTROL_TRAIN_AT_LOAD_NO)
#define NV_REG_STR_RM_NVLINK_CONTROL_SKIP_TRAIN                     2:2
#define NV_REG_STR_RM_NVLINK_CONTROL_SKIP_TRAIN_NO                  (0x00000000)
#define NV_REG_STR_RM_NVLINK_CONTROL_SKIP_TRAIN_YES                 (0x00000001)
#define NV_REG_STR_RM_NVLINK_CONTROL_SKIP_TRAIN_DEFAULT             (NV_REG_STR_RM_NVLINK_CONTROL_SKIP_TRAIN_NO)
#define NV_REG_STR_RM_NVLINK_CONTROL_RESERVED_0                     7:3
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_AUTOCONFIG               8:8
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_AUTOCONFIG_NO            (0x00000000)
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_AUTOCONFIG_YES           (0x00000001)
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_AUTOCONFIG_DEFAULT       (NV_REG_STR_RM_NVLINK_CONTROL_FORCE_AUTOCONFIG_NO)
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_ENABLE                   31:31
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_ENABLE_NO                (0x00000000)
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_ENABLE_YES               (0x00000001)
#define NV_REG_STR_RM_NVLINK_CONTROL_FORCE_ENABLE_DEFAULT           (NV_REG_STR_RM_NVLINK_CONTROL_FORCE_ENABLE_NO)

#ifdef NV_VERIF_FEATURES

//
// Type DWORD
// Force enable NVLink core lib to enable full link training on RTL sims
//

#define NV_REG_STR_RM_NVLINK_FORCE_CORE_LIB_RTL                 "RMNvlinkForceCoreLibRtlsim"
#define NV_REG_STR_RM_NVLINK_FORCE_CORE_LIB_RTL_ENABLE          0:0
#define NV_REG_STR_RM_NVLINK_FORCE_CORE_LIB_RTL_ENABLE_NO       (0x00000000)
#define NV_REG_STR_RM_NVLINK_FORCE_CORE_LIB_RTL_ENABLE_YES      (0x00000001)

#endif

//
// TYPE DWORD
// This regkey controls the atomics mode MMU expects for GPU initiated atomics to system
// memory.
//
// "NvLinkSelectAtomicsConfig" is migrated to "RMSysmemSelectAtomicsConfig"
// Refer Bug 200644357 filed for the migration.
//
// CONFIG_PCIE force enables both the PCIe config setting AtomicOpReqEnable in Device
// Control 2 and the MODE_PCIE setting in MMU without checking the completer
// side atomic capabilities.
//
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG "RMSysmemSelectAtomicsConfig"
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_L2       0x0
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_POWER    0x1
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_XAVIER   0x2
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_RMW      0x3
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_READ     0x4
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_PCIE     0x5
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_DEFAULT  0x100

//
// TYPE DWORD
// This regkey overrides the supported PCIe requester atomic operations in MMU
// when PCIe atomics to Sysmem feature is enabled.
// Note: Keep this definition in the same order as PCIE_REQ_ATOMICS_* in bif.h
// which is also same as NV_PFB_PRI_MMU_ATOMICS_CTRL_PCIE_OP_* in dev_fb.h
//
#define NV_REG_STR_RM_SYSMEM_OVERRIDE_PCIE_REQ_ATOMIC_OPS "RMSysmemOverridePcieReqAtomicOps"
#define NV_REG_STR_RM_SYSMEM_OVERRIDE_PCIE_REQ_ATOMIC_OPS_FETCHADD32 NVBIT(0)
#define NV_REG_STR_RM_SYSMEM_OVERRIDE_PCIE_REQ_ATOMIC_OPS_FETCHADD64 NVBIT(1)
#define NV_REG_STR_RM_SYSMEM_OVERRIDE_PCIE_REQ_ATOMIC_OPS_SWAP32     NVBIT(2)
#define NV_REG_STR_RM_SYSMEM_OVERRIDE_PCIE_REQ_ATOMIC_OPS_SWAP64     NVBIT(3)
#define NV_REG_STR_RM_SYSMEM_OVERRIDE_PCIE_REQ_ATOMIC_OPS_CAS32      NVBIT(4)
#define NV_REG_STR_RM_SYSMEM_OVERRIDE_PCIE_REQ_ATOMIC_OPS_CAS64      NVBIT(5)
#define NV_REG_STR_RM_SYSMEM_OVERRIDE_PCIE_REQ_ATOMIC_OPS_CAS128     NVBIT(6)

//
// TYPE DWORD
// This regkey controls what kind of atomics mode MMU expects for GPU initiated
// atomics to system memory.
//
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_NCOH "RMSysmemSelectAtomicsConfigNcoh"
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_NCOH_L2         0
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_NCOH_SYSCOH     1
#define NV_REG_STR_RM_SYSMEM_SELECT_ATOMICS_CONFIG_NCOH_DEFAULT    0x100

//
// TYPE DWORD
// This regkey manually enables or disabled caching of peer traffic in L2.
// 0 - DEFAULT behaviour i.e. ENABLED for SLI config (Volta+) & DISABLED
//     for non-SLI config
// 1 - force ENABLED
// 2 - force DISABLED
// Note: Enabling this will cause degraded performance for compute and improved
//       performance for things such as AFR rendering in GeForce.
//
//
#define NV_REG_STR_RM_NVLINK_PEER_THROUGH_L2             "NvLinkPeerThroughL2"
#define NV_REG_STR_RM_NVLINK_PEER_THROUGH_L2_DEFAULT     0
#define NV_REG_STR_RM_NVLINK_PEER_THROUGH_L2_ENABLED     1
#define NV_REG_STR_RM_NVLINK_PEER_THROUGH_L2_DISABLED    2

//
// Type DWORD
// NVLINK Enable Links Overrides
// Note that this control does not force enable links, rather, it should be
// used to disable or mask off SW discovered links supported by the HW.
//
// NOTE: THIS REGKEY HAS BEEN DEPRECATED IN RM, since it does NOT work
//       with NVLink auto-configuration. Instead, please move to using
//       the new regkey NV_REG_STR_RM_NVLINK_DISABLE_LINKS
//
#define NV_REG_STR_RM_NVLINK_ENABLE                          "RMNvLinkEnable"
#define NV_REG_STR_RM_NVLINK_ENABLE_IDX(i)                   (i):(i)
#define NV_REG_STR_RM_NVLINK_ENABLE_IDX__SIZE                32
#define NV_REG_STR_RM_NVLINK_ENABLE_IDX_TRUE                 (0x00000001)
#define NV_REG_STR_RM_NVLINK_ENABLE_IDX_FALSE                (0x00000000)

//
// Type DWORD
// NVLink Disable Link Overrides
// The supplied value is ANDed with the set of discovered
// (not necessarily connected) links to remove unwanted links.
//    A value of DISABLE_ALL removes/disables all links on this device.
//    A value of DISABLE_NONE removes no links.
//    If not present, this regkey has no effect.
//
#define NV_REG_STR_RM_NVLINK_DISABLE_LINKS                    "RMNvLinkDisableLinks"
#define NV_REG_STR_RM_NVLINK_DISABLE_LINKS_DISABLE_ALL        (0xFFFFFFFF)
#define NV_REG_STR_RM_NVLINK_DISABLE_LINKS_DISABLE_NONE       (0x00000000)

#ifdef NV_VERIF_FEATURES
//
// Type DWORD
// NVLINK Switch Links
// This control denotes which links are Switch links when a forced config is
// in effect. Links tagged as Switch links will have a Switch device associated
// with them in the NVLink APIs.
//
#define NV_REG_STR_RM_NVLINK_SWITCH_LINKS                    "RMNvLinkSwitchLinks"
#define NV_REG_STR_RM_NVLINK_SWITCH_LINKS_IDX(i)             (i):(i)
#define NV_REG_STR_RM_NVLINK_SWITCH_LINKS__SIZE              32
#define NV_REG_STR_RM_NVLINK_SWITCH_LINKS_TRUE               (0x00000001)
#define NV_REG_STR_RM_NVLINK_SWITCH_LINKS_FALSE              (0x00000000)
#endif

//
// Type DWORD
// Enable/Disable NVLINK in NISO HUB
//
#define NV_REG_STR_RM_NVLINK_NISOHUB                         "RMNvLinkNisohub"
#define NV_REG_STR_RM_NVLINK_NISOHUB_ENABLE                  0:0
#define NV_REG_STR_RM_NVLINK_NISOHUB_ENABLE_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_NVLINK_NISOHUB_ENABLE_YES              (0x00000001)

//
// Type DWORD
// Override _USE_NVLINK field of
// NV_PFB_FBHUB_NUM_ACTIVE_LTCS
//
#define NV_REG_STR_RM_NVLINK_USE_PEER                        "RMNvLinkUsePeer"
#define NV_REG_STR_RM_NVLINK_USE_PEER_IDX(i)                 (i):(i)
#define NV_REG_STR_RM_NVLINK_USE_PEER_IDX__SIZE              8
#define NV_REG_STR_RM_NVLINK_USE_PEER_IDX_TRUE               (0x00000001)
#define NV_REG_STR_RM_NVLINK_USE_PEER_IDX_FALSE              (0x00000000)

//
// Type DWORD
// Control UPHY Init sequence. Use this only on fullchip RTL sims
//
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL                      "RMNvlinkUPHYInitControl"
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_LANE_INIT            0:0
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_LANE_INIT_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_LANE_INIT_ENABLED    (0x00000001)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_LANE_INIT_DISABLED   (0x00000000)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_TX_EQ                1:1
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_TX_EQ_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_TX_EQ_ENABLED        (0x00000001)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_TX_EQ_DISABLED       (0x00000000)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_LINK_TRAIN           2:2
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_LINK_TRAIN_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_LINK_TRAIN_ENABLED   (0x00000001)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_LINK_TRAIN_DISABLED  (0x00000000)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_POWER_DOWN           3:3
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_POWER_DOWN_DEFAULT   (0x00000001)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_POWER_DOWN_ENABLED   (0x00000001)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_POWER_DOWN_DISABLED  (0x00000000)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_UPHY_VER             4:4
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_UPHY_VER_DEFAULT     (0x00000001)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_UPHY_VER_041         (0x00000000)
#define NV_REG_STR_RM_NVLINK_UPHY_INIT_CONTROL_UPHY_VER_060         (0x00000001)

//
// Type DWORD
// P2P Loopback over NVLINK will be enabled by default if RM
// detects loopback links. For P2P over PCIE, force disable
// P2P loopback over NVLINK using the following regkey
//
#define NV_REG_STR_RM_NVLINK_DISABLE_P2P_LOOPBACK                   "RMNvLinkDisableP2PLoopback"
#define NV_REG_STR_RM_NVLINK_DISABLE_P2P_LOOPBACK_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_NVLINK_DISABLE_P2P_LOOPBACK_TRUE              (0x00000001)
#define NV_REG_STR_RM_NVLINK_DISABLE_P2P_LOOPBACK_FALSE             (0x00000000)

//
// Type DWORD
// Set the near end loopback mode using the following regkey
// Currently, three modes - NEA, NEDR, NEW
//
#define NV_REG_STR_RM_NVLINK_SET_LOOPBACK_MODE                      "RMNvLinkSetLoopbackMode"
#define NV_REG_STR_RM_NVLINK_SET_LOOPBACK_MODE_DEFAULT              (0x00000000)
#define NV_REG_STR_RM_NVLINK_SET_LOOPBACK_MODE_NEA                  (0x00000001)
#define NV_REG_STR_RM_NVLINK_SET_LOOPBACK_MODE_NEDR                 (0x00000002)
#define NV_REG_STR_RM_NVLINK_SET_LOOPBACK_MODE_NEDW                 (0x00000003)

//
// Type DWORD
// Override the nvlink refclk source
//
#define NV_REG_STR_RM_NVLINK_SELECT_REFCLK                          "RMNvLinkSelectRefclk"
#define NV_REG_STR_RM_NVLINK_SELECT_REFCLK_TYPE                     1:0
#define NV_REG_STR_RM_NVLINK_SELECT_REFCLK_TYPE_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_NVLINK_SELECT_REFCLK_TYPE_PEX                 (0x00000001)
#define NV_REG_STR_RM_NVLINK_SELECT_REFCLK_TYPE_NVHS                (0x00000002)
#define NV_REG_STR_RM_NVLINK_SELECT_REFCLK_TYPE_RESERVED            (0x00000003)

//
// Type DWORD
// Override the nvlink refclk rate and corresponding speed settings
// This regkey takes higher preference over RMNvLinkSelectRefclk
//
#define NV_REG_STR_RM_NVLINK_REFCLK_RATE                            "RMNvLinkRefclkRate"
#define NV_REG_STR_RM_NVLINK_REFCLK_RATE_VAL                        1:0
#define NV_REG_STR_RM_NVLINK_REFCLK_RATE_VAL_DEFAULT                (0x00000000)
#define NV_REG_STR_RM_NVLINK_REFCLK_RATE_VAL_100                    (0x00000001)
#define NV_REG_STR_RM_NVLINK_REFCLK_RATE_VAL_133                    (0x00000002)
#define NV_REG_STR_RM_NVLINK_REFCLK_RATE_VAL_RESERVED               (0x00000003)

//
// Type DWORD
// Knob to change NVLink link speed
// __LAST is same as highest supported speed
// NOTE:
//   NVLINK_SPEED_CONTROL_SPEED_25G is exactly 25.00000Gbps on Pascal
//   NVLINK_SPEED_CONTROL_SPEED_25G is exactly 25.78125Gbps on Volta and later
//   NVLINK_SPEED_CONTROL_SPEED_2500000G is exactly 25.00000Gbps on all chips
//
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL                          "RMNvLinkSpeedControl"
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED                     4:0
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_DEFAULT             (0x00000000)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_16G                 (0x00000001)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_19_2G               (0x00000002)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_20G                 (0x00000003)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_21G                 (0x00000004)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_22G                 (0x00000005)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_23G                 (0x00000006)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_24G                 (0x00000007)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_25G                 (0x00000008)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_25_78125G           (0x00000008)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_25_00000G           (0x00000009)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_16_14583G           (0x0000000A)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_26_56250G           (0x0000000B)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_27_34375G           (0x0000000C)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_28_12500G           (0x0000000D)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_32G                 (0x0000000E)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_40G                 (0x0000000F)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_50_00000G           (0x00000010)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_53_12500G           (0x00000011)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_100_00000G          (0x00000012)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_106_25000G          (0x00000013)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED_FAULT               (0x00000014)
#define NV_REG_STR_RM_NVLINK_SPEED_CONTROL_SPEED__LAST               (0x00000014)

//
// Type DWORD
// Knob to change NVLink TXTRAIN settings
// NOTE: These are only valid GA100+
//
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL                                     "RMNvLinkTxTrainControl"
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_FOM_FORMAT                          2:0
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_FOM_FORMAT_DEFAULT                  0x00000000
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_FOM_FORMAT_FOMA                     0x00000001
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_FOM_FORMAT_FOMB                     0x00000002
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_FOM_FORMAT_FOMC                     0x00000004
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM              10:3
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_DEFAULT      0x00000000
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_A0           0x00000001
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_A1           0x00000002
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_A2           0x00000004
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_A3           0x00000008
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_A4           0x00000010
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_A5           0x00000020
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_A6           0x00000040
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_OPTIMIZATION_ALGORITHM_A7           0x00000080
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_ADJUSTMENT_ALGORITHM                15:11
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_ADJUSTMENT_ALGORITHM_DEFAULT        0x00000000
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_ADJUSTMENT_ALGORITHM_B0             0x00000001
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_ADJUSTMENT_ALGORITHM_B1             0x00000002
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_ADJUSTMENT_ALGORITHM_B2             0x00000004
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_ADJUSTMENT_ALGORITHM_B3             0x00000008
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_MINIMUM_TRAIN_TIME_MANTISSA         19:16
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_MINIMUM_TRAIN_TIME_MANTISSA_DEFAULT 0x00000000
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_MINIMUM_TRAIN_TIME_EXPONENT         23:20
#define NV_REG_STR_RM_NVLINK_TXTRAIN_CONTROL_MINIMUM_TRAIN_TIME_EXPONENT_DEFAULT 0x00000000

//
// Type DWORD
// Knob to control NVLink MINION
//
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL                          "RMNvLinkMinionControl"
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_ENABLE                   3:0
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_ENABLE_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_ENABLE_FORCE_ON          (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_ENABLE_FORCE_OFF         (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_PHY_CONFIG               7:4
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_PHY_CONFIG_DEFAULT       (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_PHY_CONFIG_ENABLE        (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_PHY_CONFIG_DISABLE       (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_DL_STATUS                11:8
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_DL_STATUS_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_DL_STATUS_ENABLE         (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_DL_STATUS_DISABLE        (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_INITNEGOTIATE            15:12
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_INITNEGOTIATE_DEFAULT    (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_INITNEGOTIATE_ENABLE     (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_INITNEGOTIATE_DISABLE    (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_INITOPTIMIZE             19:16
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_INITOPTIMIZE_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_INITOPTIMIZE_ENABLE      (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_INITOPTIMIZE_DISABLE     (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_CACHE_SEEDS              23:20
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_CACHE_SEEDS_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_CACHE_SEEDS_ENABLE       (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_CACHE_SEEDS_DISABLE      (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_BOOT_CORE                27:24
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_BOOT_CORE_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_BOOT_CORE_RISCV          (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_BOOT_CORE_FALCON         (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_BOOT_CORE_RISCV_MANIFEST (0x00000003)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_BOOT_CORE_NO_MANIFEST    (0x00000004)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_ALI_TRAINING             30:28
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_ALI_TRAINING_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_ALI_TRAINING_ENABLE      (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_ALI_TRAINING_DISABLE     (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_GFW_BOOT                 31:31
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_GFW_BOOT_DEFAULT         (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_GFW_BOOT_DISABLE         (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_CONTROL_GFW_BOOT_ENABLE          (0x00000001)

//
// Type DWORD
// Knob to control NVLink MINION SIMMODE
//
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL                       "RMNvLinkMinionSimModeControl"
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_MODE                  3:0
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_MODE_DEFAULT          (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_MODE_FAST             (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_MODE_MEDIUM           (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_MODE_SLOW             (0x00000003)
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_SHORT_ALARMS          6:4
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_SHORT_ALARMS_DEFAULT  (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_SHORT_ALARMS_ENABLED  (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_SHORT_ALARMS_DISABLED (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_SIMMODE_CONTROL_SHORT_ALARMS_RESERVED 7:7


// Type DWORD
// Knob to control NVLink MINION SMF Settings
//
#define NV_REG_STR_RM_NVLINK_MINION_SMF_SETTINGS                        "RMNvLinkMinionSmfSettings"
#define NV_REG_STR_RM_NVLINK_MINION_SMF_SETTINGS_MODE                   3:0
#define NV_REG_STR_RM_NVLINK_MINION_SMF_SETTINGS_MODE_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_SMF_SETTINGS_MODE_FAST              (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_SMF_SETTINGS_MODE_MEDIUM            (0x00000002)
#define NV_REG_STR_RM_NVLINK_MINION_SMF_SETTINGS_MODE_SLOW              (0x00000003)
#define NV_REG_STR_RM_NVLINK_MINION_SMF_SETTINGS_MODE_MEDIUM_SERIAL     (0x00000004)

// Type DWORD
// Knob to control UPHY Table select via MINION
//
#define NV_REG_STR_RM_NVLINK_MINION_UPHY_TABLES                        "RMNvLinkMinionUphyTables"
#define NV_REG_STR_RM_NVLINK_MINION_UPHY_TABLES_MODE                   1:0
#define NV_REG_STR_RM_NVLINK_MINION_UPHY_TABLES_MODE_DEFAULT           (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_UPHY_TABLES_MODE_SHORT             (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_UPHY_TABLES_MODE_FAST              (0x00000002)

//
// Type DWORD
// Knob to control NVLink Verbose Prints
//
#define NV_REG_STR_RM_NVLINK_VERBOSE_MASK_CONTROL                   "RMNvLinkverboseControlMask"
#define NV_REG_STR_RM_NVLINK_VERBOSE_MASK_CONTROL_REGINIT           0:0
#define NV_REG_STR_RM_NVLINK_VERBOSE_MASK_CONTROL_REGINIT_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_NVLINK_VERBOSE_MASK_CONTROL_REGINIT_ON        (0x00000001)
#define NV_REG_STR_RM_NVLINK_VERBOSE_MASK_CONTROL_REGINIT_OFF       (0x00000000)

#ifdef NV_VERIF_FEATURES
//
// Type DWORD
// Knob to control RM writing to BUFFER_READY in supporting devices
//
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY                      "RMNvLinkSkipBufferReady"
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_TLC                  0:0
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_TLC_NO               (0x00000000)
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_TLC_YES              (0x00000001)
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_TLC_DEFAULT          (NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_TLC_NO)
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_MIF                  1:1
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_MIF_NO               (0x00000000)
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_MIF_YES              (0x00000001)
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_MIF_DEFAULT          (NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_MIF_NO)
#define NV_REG_STR_RM_NVLINK_SKIP_BUFFER_READY_RESERVED_0           31:2
#endif // NV_VERIF_FEATURES

//
// Type DWORD
// Knob to control RM use of NVLink counters
// Note:
//   ENABLE is required to enable counting.  Client APIs can override.
//   DUMP does not require ENABLE, it simply dumps the counters at unload.
//
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL                        "RMNvLinkCounterControl"
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_ENABLE                 0:0
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_ENABLE_NO              (0x00000000)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_ENABLE_YES             (0x00000001)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_ENABLE_DEFAULT         (NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_ENABLE_NO)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_DUMP                   1:1
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_DUMP_NO                (0x00000000)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_DUMP_YES               (0x00000001)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_DUMP_DEFAULT           (NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_DUMP_NO)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_RESERVED_0             3:2
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_UNIT                   5:4
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_UNIT_CYCLES            (0x00000000)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_UNIT_PACKETS           (0x00000001)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_UNIT_FLITS             (0x00000002)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_UNIT_BYTES             (0x00000003)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_UNIT_DEFAULT           (NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_UNIT_CYCLES)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_RESERVED_1             7:6
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER             15:8
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER_NONE        (0x00000000)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER_HEAD        (0x00000001)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER_AE          (0x00000002)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER_BE          (0x00000004)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER_DATA        (0x00000008)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER_IDLE        (0x00000010)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER_DEFAULT     (NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_FLITFILTER_NONE)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_ENABLE       16:16
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_ENABLE_NO    (0x00000000)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_ENABLE_YES   (0x00000001)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_ENABLE_DEFAULT (NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_ENABLE_NO)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER              19:17
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_CYCLES_IN_L1                                               (0x00000000)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_CYCLES_IN_L1_WITH_LOCAL_ACTIVE_DESIRED                     (0x00000001)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_CYCLES_IN_ACTIVE_WITH_LOCAL_L1_DESIRED_ONLY                (0x00000002)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_CYCLES_IN_ACTIVE_WITH_REMOTE_L1_DESIRED_ONLY               (0x00000003)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_CYCLES_IN_ACTIVE_WITH_BOTH_LOCAL_AND_REMOTE_L1_DESIRED     (0x00000004)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_ENTRIES_INTO_L1                                            (0x00000007)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_DEFAULT      (NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_L1_FILTER_CYCLES_IN_L1)
#define NV_REG_STR_RM_NVLINK_COUNTER_CONTROL_RESERVED_2             31:20

//
// Type DWORD
// Knob to control NVLink Link Power States
//
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL                            "RMNvLinkControlLinkPM"
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_SINGLE_LANE_MODE           1:0
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_SINGLE_LANE_MODE_DEFAULT   (0x00000000)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_SINGLE_LANE_MODE_ENABLE    (0x00000001)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_SINGLE_LANE_MODE_DISABLE   (0x00000002)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_PROD_WRITES                3:2
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_PROD_WRITES_DEFAULT        (0x00000000)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_PROD_WRITES_ENABLE         (0x00000001)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_PROD_WRITES_DISABLE        (0x00000002)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_L1_MODE                    5:4
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_L1_MODE_DEFAULT            (0x00000000)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_L1_MODE_ENABLE             (0x00000001)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_L1_MODE_DISABLE            (0x00000002)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_L2_MODE                    7:6
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_L2_MODE_DEFAULT            (0x00000000)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_L2_MODE_ENABLE             (0x00000001)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_L2_MODE_DISABLE            (0x00000002)
#define NV_REG_STR_RM_NVLINK_LINK_PM_CONTROL_RESERVED                   31:8

//
// Type DWORD
// Knob to turn on/off NVLink Receiver Detect
// Note: This regkey turns off protections in Minion ucode
//       See RMNvLinkMinionDisableProtections below
//
#define NV_REG_STR_RM_NVLINK_DISABLE_RXDET                             "RMNvLinkDisableRxdet"
#define NV_REG_STR_RM_NVLINK_DISABLE_RXDET_TRUE                        (0x00000001)
#define NV_REG_STR_RM_NVLINK_DISABLE_RXDET_FALSE                       (0x00000000)
#define NV_REG_STR_RM_NVLINK_DISABLE_RXDET_DEFAULT                     (NV_REG_STR_RM_NVLINK_DISABLE_RXDET_FALSE)

//
// Type DWORD
// Knob to skip restore of NVLink state on L2 exit
//
#define NV_REG_STR_RM_NVLINK_DISABLE_RESTORE_STATE                     "RMNvLinkDisableRestoreState"
#define NV_REG_STR_RM_NVLINK_DISABLE_RESTORE_STATE_TRUE                (0x00000001)
#define NV_REG_STR_RM_NVLINK_DISABLE_RESTORE_STATE_FALSE               (0x00000000)
#define NV_REG_STR_RM_NVLINK_DISABLE_RESTORE_STATE_DEFAULT             (NV_REG_STR_RM_NVLINK_DISABLE_RESTORE_STATE_FALSE)

//
// Type DWORD
// Knob to turn off protections in Minion ucode
//    For eg: Minion will not fault on INITLANEENABLE even if RXDET has failed
// Note: This regkey is not supported on production parts
//
#define NV_REG_STR_RM_NVLINK_MINION_DISABLE_PROTECTIONS                "RMNvLinkMinionDisableProtections"
#define NV_REG_STR_RM_NVLINK_MINION_DISABLE_PROTECTIONS_TRUE           (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_DISABLE_PROTECTIONS_FALSE          (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_DISABLE_PROTECTIONS_DEFAULT        (NV_REG_STR_RM_NVLINK_MINION_DISABLE_PROTECTIONS_FALSE)

//
// Type DWORD
// Knob to check if sideload of Minion ucode requested
//
// Note: This regkey is not supported on production parts
//
#define NV_REG_STR_RM_NVLINK_MINION_SIDELOAD                           "RMNvLinkMinionSideLoad"
#define NV_REG_STR_RM_NVLINK_MINION_SIDELOAD_TRUE                      (0x00000001)
#define NV_REG_STR_RM_NVLINK_MINION_SIDELOAD_FALSE                     (0x00000000)
#define NV_REG_STR_RM_NVLINK_MINION_SIDELOAD_DEFAULT                   (NV_REG_STR_RM_NVLINK_MINION_SIDELOAD_FALSE)


//
// Type DWORD
// Knob to force lane disable and shutdown during driver unload
//     The regkey will also cause a toggle of link reset on driver load
//     The regkey should not be used in S/R paths
//
#define NV_REG_STR_RM_NVLINK_FORCE_LANESHUTDOWN                        "RMNvLinkForceLaneshutdown"
#define NV_REG_STR_RM_NVLINK_FORCE_LANESHUTDOWN_TRUE                   (0x00000001)
#define NV_REG_STR_RM_NVLINK_FORCE_LANESHUTDOWN_FALSE                  (0x00000000)
#define NV_REG_STR_RM_NVLINK_FORCE_LANESHUTDOWN_DEFAULT                (NV_REG_STR_RM_NVLINK_FORCE_LANESHUTDOWN_FALSE)

#if defined(NV_MODS)
//
// Type DWORD
// SSG Control (supported only on MODS)
//
#define NV_REG_STR_RM_NVLINK_SSG_CONTROL                                "RMNvlinkSSGControl"
#define NV_REG_STR_RM_NVLINK_SSG_CONTROL_BREAK_AFTER_UPHY_INIT          0:0
#define NV_REG_STR_RM_NVLINK_SSG_CONTROL_BREAK_AFTER_UPHY_INIT_NO       (0x00000000)
#define NV_REG_STR_RM_NVLINK_SSG_CONTROL_BREAK_AFTER_UPHY_INIT_YES      (0x00000001)
#define NV_REG_STR_RM_NVLINK_SSG_CONTROL_BREAK_AFTER_DLPL_INIT          1:1
#define NV_REG_STR_RM_NVLINK_SSG_CONTROL_BREAK_AFTER_DLPL_INIT_NO       (0x00000000)
#define NV_REG_STR_RM_NVLINK_SSG_CONTROL_BREAK_AFTER_DLPL_INIT_YES      (0x00000001)
#endif // NV_MODS

//
// Type DWORD
// For links that are SYSMEM, use this device type for force configs
// Choose the value from NV2080_CTRL_NVLINK_DEVICE_INFO_DEVICE_TYPE_*
//
#define NV_REG_STR_RM_NVLINK_SYSMEM_DEVICE_TYPE                         "RMNvLinkForcedSysmemDeviceType"

#ifdef NV_VERIF_FEATURES

#define NV_REG_STR_RM_PREEMPTION_TEST_OPTIONS                                       "RMPreemptionTestOptions"
#define NV_REG_STR_RM_PREEMPTION_TEST_OPTIONS_CONTROL                               1:0
#define NV_REG_STR_RM_PREEMPTION_TEST_OPTIONS_CONTROL_NONE                          (0x00000000)
#define NV_REG_STR_RM_PREEMPTION_TEST_OPTIONS_CONTROL_SKIP_SAVE_RESET_RESTORE       (0x00000001)

#endif

// Type Dword
// When present and set to 1:       RM ignores VBIOS disabled DCB entries
// When not present or set to 0:    RM considers  VBIOS disabled DCB entries during devinit and
//                                  updates its internal DCB table.
#if defined(DEVELOP) || defined(DEBUG) || defined(NV_MODS)
#define NV_REG_STR_RM_IGNORE_BIOS_DCB_ENTRIES_DISABLE "RMIgnoreBiosDCBEntriesDisable"
#endif //DEVELOP || DEBUG || NV_MODS

// Type DWORD
// Enabling this allows the driver to skip the MIO PADS toggling for SLI.
// It leaves what the VBIOS had set.
// For debug purposes.
// 0 - Disable (default)
// 1 - Enable
//
#define NV_REG_STR_SKIP_MIO_PADS_TOGGLE_FOR_SLI         "RM200044301"
#define NV_REG_STR_SKIP_MIO_PADS_TOGGLE_FOR_SLI_ENABLE  1
#define NV_REG_STR_SKIP_MIO_PADS_TOGGLE_FOR_SLI_DISABLE 0

// Type Dword
// When present and set to != 0:    RM defaults all contexts to GfxP mode
// When not present or set to 0:    RM relies on clients to setup GfxP mode
#define NV_REG_STR_RM_ENABLE_GFXP_MODE_AS_DEFAULT                                   "RMEnableGfxpModeAsDefault"
#define NV_REG_STR_RM_ENABLE_GFXP_MODE_AS_DEFAULT_DEFAULT                           (0x00000000)
#define NV_REG_STR_RM_ENABLE_GFXP_MODE_AS_DEFAULT_NO                                (0x00000000)
#define NV_REG_STR_RM_ENABLE_GFXP_MODE_AS_DEFAULT_YES                               (0x00000001)

// Type Dword
// When present :    RM will program the GFXP_WFI_TIMEOUT in HW
//   set to 0 will cause HW to not do a WFI at all and instead go stright to GfxP preemption
//   current HW default is 0x800
#define NV_REG_STR_RM_SET_GFXP_WFI_TIMEOUT                                          "RMSetGfxpWfiTimeout"

// Type Dword
// When present and set to != 0:    RM defaults all contexts to GfxP mode
// When not present or set to 0:    RM relies on clients to setup GfxP mode
#define NV_REG_STR_RM_FAIL_ON_NO_GFXP                                               "RMFailOnNoGfxP"
#define NV_REG_STR_RM_FAIL_ON_NO_GFXP_DEFAULT                                       (0x00000000)
#define NV_REG_STR_RM_FAIL_ON_NO_GFXP_NO                                            (0x00000000)
#define NV_REG_STR_RM_FAIL_ON_NO_GFXP_YES                                           (0x00000001)

// Type Dword
// Type DWORD
// Encoding -- Numeric Value representing # of slices in the pool
#define NV_REG_STR_RM_ENABLE_GFXP_POOL_MODE                                         "RMEnableGfxpPoolMode"

// Type Dword
// When present and set to != 0:    RM defaults all contexts to Cilp mode
// When not present or set to 0:    RM relies on clients to setup Cilp mode
#define NV_REG_STR_RM_FAIL_ON_NO_CILP                                               "RMFailOnNoCILP"
#define NV_REG_STR_RM_FAIL_ON_NO_CILP_DEFAULT                                       (0x00000000)
#define NV_REG_STR_RM_FAIL_ON_NO_CILP_NO                                            (0x00000000)
#define NV_REG_STR_RM_FAIL_ON_NO_CILP_YES                                           (0x00000001)

// Type Dword
// When present and set to != 0:    RM defaults all contexts to Ctap mode
// When not present or set to 0:    RM relies on clients to setup Ctap mode
#define NV_REG_STR_RM_FAIL_ON_NO_CTAP                                               "RMFailOnNoCTAP"
#define NV_REG_STR_RM_FAIL_ON_NO_CTAP_DEFAULT                                       (0x00000000)
#define NV_REG_STR_RM_FAIL_ON_NO_CTAP_NO                                            (0x00000000)
#define NV_REG_STR_RM_FAIL_ON_NO_CTAP_YES                                           (0x00000001)

// Type Dword
// When present and set to != 0:    RM tells ucode to skip swdx direct ctxsw
// When not present or set to 0:    RM tells ucode to allow swdx direct ctxsw
#define NV_REG_STR_RM_SWDX_DIRECT_CTXSW_SKIP                                        "RMSwdxDirectCtxswSkip"
#define NV_REG_STR_RM_SWDX_DIRECT_CTXSW_SKIP_DEFAULT                                (0x00000000)
#define NV_REG_STR_RM_SWDX_DIRECT_CTXSW_SKIP_NO                                     (0x00000000)
#define NV_REG_STR_RM_SWDX_DIRECT_CTXSW_SKIP_YES                                    (0x00000001)

// Type Dword
// When present and set to != 0:    RM tells ucode to disable swdx direct ctxsw scrub
// When not present or set to 0:    RM tells ucode to not disable swdx direct ctxsw scrub
#define NV_REG_STR_RM_DISABLE_SWDX_DIRECT_CTXSW_SCRUB                               "RMDisableSwdxDirectCtxswScrub"
#define NV_REG_STR_RM_DISABLE_SWDX_DIRECT_CTXSW_SCRUB_DEFAULT                       (0x00000000)
#define NV_REG_STR_RM_DISABLE_SWDX_DIRECT_CTXSW_SCRUB_NO                            (0x00000000)
#define NV_REG_STR_RM_DISABLE_SWDX_DIRECT_CTXSW_SCRUB_YES                           (0x00000001)

// Type Dword
// When present and set to != 0:    RM tells ucode to disable ramchain scrub
// When not present or set to 0:    RM tells ucode to not disable ramchain scrub
#define NV_REG_STR_RM_DISABLE_RAMCHAIN_SCRUB                                        "RMDisableRamchainScrub"
#define NV_REG_STR_RM_DISABLE_RAMCHAIN_SCRUB_DEFAULT                                (0x00000000)
#define NV_REG_STR_RM_DISABLE_RAMCHAIN_SCRUB_NO                                     (0x00000000)
#define NV_REG_STR_RM_DISABLE_RAMCHAIN_SCRUB_YES                                    (0x00000001)


//
// TYPE DWORD
// BIT 0 - Redaction Enforcement
//     0 - _ENFORCE: Redact NV-Private or HDCP offset transactions.
//     1 - _SKIP:    Keep all trancations in the log.
//     For NV Internal users, set this bit to 1.
// BIT 16:31 - Auxlogger Buffer size
// The size of buffer in the terms of the maximum number of logs to be stored in RM at a time
// Default: 1024 (0x0400)
// Max:     4096 (0x1000)
//
#define NV_REG_STR_RM_DP_AUXLOGGER_CONFIG                             "RmDpAuxloggerConfig"
#define NV_REG_STR_RM_DP_AUXLOGGER_CONFIG_REDACTION                                    0:0
#define NV_REG_STR_RM_DP_AUXLOGGER_CONFIG_REDACTION_SKIP                        0x00000001
#define NV_REG_STR_RM_DP_AUXLOGGER_CONFIG_REDACTION_ENFORCE                     0x00000000
#define NV_REG_STR_RM_DP_AUXLOGGER_CONFIG_REDACTION_DEFAULT                     0x00000001

#define NV_REG_STR_RM_DP_AUXLOGGER_CONFIG_BUFFERSIZE                                 31:16
#define NV_REG_STR_RM_DP_AUXLOGGER_CONFIG_BUFFERSIZE_DEFAULT                    0x00000400
#define NV_REG_STR_RM_DP_AUXLOGGER_CONFIG_BUFFERSIZE_MAXIMUM                    0x00001000


//
// TYPE DWORD
// Defines parameters for flicker control, used in DC balancing on NVSR panel only.
//
// _PRE_FRAME_WEIGHT, _CUR_FRAME_WEIGHT, _THRESHOLD:
//      Parameters to calculate the "target line" for short frame.
//
//      (Details in headHandleNvsrDCBalancing())
//      Target Line = ((previous frame lines * _PRE_FRAME_WEIGHT) +
//                     (Current frame lines * _CUR_FRAME_WEIGHT)) /
//                         (_PRE_FRAME_WEIGHT + CUR_FRAME_WEIGHT)
//
//      Adjustment only happens when current frame line less than
//      (previous frame line * _THRESHOLD/255)
//
// Below parameters are to prevent additional stutter caused by frame extension
//      _MAX_DELAY_TIME:  The max time a frame can be extended.
//
//      _MIN_MARGIN_TIME: The min time to keep before frame ends.
//                        Unit is 0.1ms. Default = (0.2ms) (0x02)
//
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL                              "RmNvsrFlickerControl"
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_PRE_FRAME_WEIGHT                               3:0
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_PRE_FRAME_WEIGHT_DEFAULT                0x00000002
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_CUR_FRAME_WEIGHT                               7:4
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_CUR_FRAME_WEIGHT_DEFAULT                0x00000001
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_THRESHOLD                                     15:8
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_THRESHOLD_DEFAULT                       0x000000E6
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_MAX_DELAY_TIME                               19:16
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_MAX_DELAY_TIME_DEFAULT                  0x0000001E
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_MIN_MARGIN_TIME                              23:20
#define NV_REG_STR_RM_NVSR_FLICKER_CONTROL_MIN_MARGIN_TIME_DEFAULT                 0x00000002

//
// TYPE DWORD
// This registry key is activated only when a GSYNC HULK license is present.
// It allows the driver to bypass the NVSR panel PACD EDID check.
// Default is NV_REG_STR_RM_NVSR_BYPASS_NVSR_PACD_CHECK_NO: do not bypass
//
#define NV_REG_STR_RM_NVSR_BYPASS_NVSR_PACD_CHECK                  "Rm719476"
#define NV_REG_STR_RM_NVSR_BYPASS_NVSR_PACD_CHECK_NO               0
#define NV_REG_STR_RM_NVSR_BYPASS_NVSR_PACD_CHECK_YES              1

#if defined(DEBUG) || defined(DEVELOP)
//
// Type DWORD
//
#define NV_REG_STR_ACPI_DSM_SHIM                 "AcpiDsmShim\0\0"
#define NV_REG_STR_ACPI_DSM_SHIM_REV_ID          15:0
#define NV_REG_STR_ACPI_DSM_SHIM_SUB_FUNC        27:16
#define NV_REG_STR_ACPI_DSM_SHIM_ENABLE          28:28
#define NV_REG_STR_ACPI_DSM_SHIM_ENABLE_DEFAULT  (0x00000000)
#define NV_REG_STR_ACPI_DSM_SHIM_ENABLE_YES      (0x00000001)

//
// Type STRING
//
#define NV_REG_STR_ACPI_DSM_SHIM_GUID            "AcpiDsmShimGuid\0\0"

//
// Type BINARY
//
#define NV_REG_STR_ACPI_DSM_SHIM_ARG             "AcpiDsmShimThirdArgument\0\0"

//
// Type BINARY
//
#define NV_REG_STR_ACPI_DSM_SHIM_RET_DATA        "AcpiDsmShimReturnData\0\0"
#endif

//
// TYPE DWORD
// Set to allow allocation of compression tag line 0. By default RM skips tagline 0.
//
#define NV_REG_STR_RM_ALLOW_COMPTAG_ZERO            "RmAllowComptagZero"
#define NV_REG_STR_RM_ALLOW_COMPTAG_ZERO_DEFAULT    0x00000000
#define NV_REG_STR_RM_ALLOW_COMPTAG_ZERO_FALSE      0x00000000
#define NV_REG_STR_RM_ALLOW_COMPTAG_ZERO_TRUE       0x00000001

#ifdef NV_VERIF_FEATURES
#define NV_REG_STR_RM_NONCONTIG_ALLOC_CONFIG                    "RmNonContigAllocConfig"
#define NV_REG_STR_RM_NONCONTIG_ALLOC_CONFIG_SET_DEFAULT                             1:0
#define NV_REG_STR_RM_NONCONTIG_ALLOC_CONFIG_SET_DEFAULT_FALSE                0x00000000
#define NV_REG_STR_RM_NONCONTIG_ALLOC_CONFIG_SET_DEFAULT_TRUE                 0x00000001
#define NV_REG_STR_RM_NONCONTIG_ALLOC_CONFIG_PAGE_SHUFFLE                            3:2
#define NV_REG_STR_RM_NONCONTIG_ALLOC_CONFIG_PAGE_SHUFFLE_DISABLE             0x00000000
#define NV_REG_STR_RM_NONCONTIG_ALLOC_CONFIG_PAGE_SHUFFLE_ENABLE              0x00000001
#endif

/*!
 * Ignore checking the HW ADC calibration fuse version against the expected
 * value in the VBIOS. This can be used to test early silicon which has not
 * been fused correctly at ATE.
 *
 * Type: DWORD
 *
 * Boolean variable:
 *     0 - Do not ignore the HW ADC calibration fuse version check (DEFAULT behavior)
 *    !0 - Ignore the ADC calibration fuse version check
 */
#define NV_REG_STR_RM_CLK_ADC_CAL_REV_CHECK_IGNORE              "RmClkAdcCalRevCheckIgnore"

/*!
 * Ignore the mismatch seen between revision of ADC temperature error fuse
 * and the expected fuse revision as indicated in the VBIOS. This can be used
 * to test early silicon which has not been fused correctly at ATE or for debug
 * purposes.
 *
 * Type: DWORD
 *
 * Boolean variable:
 *     0 - Do not ignore the ADC temperature error fuse version check (DEFAULT behavior)
 *    !0 - Ignore the mismatch seen for ADC temperature error fuse version check
 */
#define NV_REG_STR_RM_CLK_ADC_TEMP_ERR_REV_CHECK_IGNORE         "RmClkAdcTempErrRevCheckIgnore"

/*!
 * Ignore checking the validity of the target V/F point against the V/F curve
 * This is to allow external RM clients to set higher frequency at a particular
 * voltage OR lower voltage for a particular frequency.
 *
 * Type: DWORD
 *
 * Boolean variable:
 *     0 - Do not ignore the V/F point check (DEFAULT behavior)
 *    !0 - Ignore the V/F point check
 */
#define NV_REG_STR_RM_VF_POINT_CHECK_IGNORE               "RmVFPointCheckIgnore"

/*!
 * TYPE: DWORD
 * Disable dynramp and pldivsliding for GP100 silicon testing when needed.
 * See bug http://nvbugs/200096511 for more details.
 */
#if defined(DEVELOP) || defined(DEBUG) || defined(NV_MODS)
#define NV_REG_STR_RM_CLK_DISABLE_DYNRAMP       "RmClkDynrampDisable"
#define NV_REG_STR_RM_CLK_DISABLE_DYNRAMP_DEFAULT       0x00000000
#define NV_REG_STR_RM_CLK_DISABLE_DYNRAMP_FALSE         0x00000000
#define NV_REG_STR_RM_CLK_DISABLE_DYNRAMP_TRUE          0x00000001
#endif  // DEVELOP || DEBUG || NV_MODS


/*!
* TYPE: DWORD
* Disable Quadro Sync Firmware Revision Checking, for testing new versions,
* and to allow customers to use whatever version actually works for them.
*/
#define NV_REG_STR_RM_QSYNC_FW_REV_CHECK       "QuadroSyncFirmwareRevisionCheckDisable"
#define NV_REG_STR_RM_QSYNC_FW_REV_CHECK_DEFAULT          0x00000000
#define NV_REG_STR_RM_QSYNC_FW_REV_CHECK_ENABLE           0x00000000
#define NV_REG_STR_RM_QSYNC_FW_REV_CHECK_DISABLE          0x00000001


/*!
 * Type DWORD(Boolean)
 * Disable the power-off-dram-pll-when-unused feature
 * Applicable for only GDDR5 and GDDR5X ram types on GP20X and later
 * By default this feature will be driven as per the VBIOS settings in Performance Memory Clock Table Header
 * Regkey value of:
 * 0 - Disables this feature
 */
#define NV_REG_STR_RM_CLK_POWER_OFF_DRAM_PLL_WHEN_UNUSED                      "RmClkPowerOffDramPllWhenUnused"
#define NV_REG_STR_RM_CLK_POWER_OFF_DRAM_PLL_WHEN_UNUSED_DISABLE               0

/*!
 * Type DWORD(Boolean)
 * Enable WCK STOP CLKS for link training while switching to P5 MCLK frequencies
 * Applicable for only GDDR5 and GDDR5X ram types on GP10x.
 * By default WCK stop clocks will be disabled for P5 link training.
 * Regkey value of:
 * 1 - Enables this feature
 */
#define NV_REG_STR_RM_MCLK_P5_LINK_TRAINING_WCK_STOP_CLKS                              "RmMClkP5LinkTrainingWckStopClks"
#define NV_REG_STR_RM_MCLK_P5_LINK_TRAINING_WCK_STOP_CLKS_DEFAULT                       0
#define NV_REG_STR_RM_MCLK_P5_LINK_TRAINING_WCK_STOP_CLKS_DISABLE                       0
#define NV_REG_STR_RM_MCLK_P5_LINK_TRAINING_WCK_STOP_CLKS_ENABLE                        1

//
// TYPE DWORD
// Set to provide HyperV host support
//
#define NV_REG_STR_RM_GRID_SUPPORT_HYPERV_HOST                     "GridSupportHypervHost"
#define NV_REG_STR_RM_GRID_SUPPORT_HYPERV_HOST_DISABLED                         0x00000000
#define NV_REG_STR_RM_GRID_SUPPORT_HYPERV_HOST_ENABLED                          0x00000001

//
// TYPE DWORD
// Set to provide GRID GPUP profile
//
#define NV_REG_STR_RM_GRID_GPUP_PROFILE_TYPE                        "GridGpupProfileType"
#define NV_REG_STR_RM_GRID_GPUP_PROFILE_TYPE_COMPUTE                            0x00000000
#define NV_REG_STR_RM_GRID_GPUP_PROFILE_TYPE_QUADRO                             0x00000001

//
// TYPE DWORD
// Set to supported GRID licensed features
//
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES                   "GridLicensedFeatures"
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_DISABLED                      0x00000000
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_QUADRO                               0:0
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_QUADRO_DISABLED               0x00000000
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_QUADRO_ENABLED                0x00000001
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_VGPU                                 1:1
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_VGPU_DISABLED                 0x00000000
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_VGPU_ENABLED                  0x00000001
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_GEFORCE                              2:2
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_GEFORCE_DISABLED              0x00000000
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_GEFORCE_ENABLED               0x00000001
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_COMPUTE                              3:3
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_COMPUTE_DISABLED              0x00000000
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_COMPUTE_ENABLED               0x00000001
#if (defined(RMCFG_FEATURE_VIRTUALIZATION) && RMCFG_FEATURE_VIRTUALIZATION)
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_VGPU_BLOCKED                         4:4
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_VGPU_BLOCKED_DISABLED         0x00000000
#define NV_REG_STR_RM_GRID_LICENSED_FEATURES_VGPU_BLOCKED_ENABLED          0x00000001
#endif

//
// TYPE DWORD
// Set to support CSP specific GRID drivers
//
#define NV_REG_STR_RM_GRID_BUILD_CSP                                      "GridSwPkg"
#define NV_REG_STR_RM_GRID_BUILD_CSP_NONE                                  0x00000000
#define NV_REG_STR_RM_GRID_BUILD_CSP_AWS                                   0x00000001
#define NV_REG_STR_RM_GRID_BUILD_CSP_ALIYUN                                0x00000002
#define NV_REG_STR_RM_GRID_BUILD_CSP_AZURE                                 0x00000003
//#define NV_REG_STR_RM_GRID_BUILD_CSP_TENCENT_CLOUD                       0x00000004  Deprecated

//
// TYPE DWORD
// Set to provide support for Quadro on GRID
//
#define NV_REG_STR_RM_GRID_SUPPORT_QUADRO                         "GridSupportQuadro"
#define NV_REG_STR_RM_GRID_SUPPORT_QUADRO_DISABLED                         0x00000000
#define NV_REG_STR_RM_GRID_SUPPORT_QUADRO_ENABLED                          0x00000001

//
// TYPE DWORD
// Set to provide ECC state in guest
// Used for vGPU
// The value default is set if ECC is enabled in USM profile.
//
#define NV_REG_STR_RM_GUEST_ECC_STATE                               "RMGuestECCState"
#define NV_REG_STR_RM_GUEST_ECC_STATE_DISABLED                             0x00000000
#define NV_REG_STR_RM_GUEST_ECC_STATE_ENABLED                              0x00000001
#define NV_REG_STR_RM_GUEST_ECC_STATE_DEFAULT                              0x00000001

// Type DWORD
// Contains the Unrestricted(Grid Unlicensed) state timeout value in mins
#define NV_REG_STR_RM_GRID_UNLICENSED_UNRESTRICTED_STATE_TIMEOUT            "UnlicensedUnrestrictedStateTimeout"
#define NV_REG_STR_RM_GRID_UNLICENSED_UNRESTRICTED_STATE_TIMEOUT_UNICODE   L"UnlicensedUnrestrictedStateTimeout"

// Type DWORD
// Contains the Restricted 1(Grid Unlicensed) state timeout value in mins.
#define NV_REG_STR_RM_GRID_UNLICENSED_RESTRICTED_1_STATE_TIMEOUT            "UnlicensedRestricted1StateTimeout"
#define NV_REG_STR_RM_GRID_UNLICENSED_RESTRICTED_1_STATE_TIMEOUT_UNICODE   L"UnlicensedRestricted1StateTimeout"

//
// TYPE DWORD
// This regkey allows to change the state of NVENC sessions stats reporting.
// Note : Currently only used and works for Grid.
// 0 - Disable NVENC session stats reporting.
// 1 - Enable NVENC session stats reporting.
//
#define NV_REG_STR_RM_NVENC_SESSION_STATS_REPORTING_STATE                  "EncSessionStatsReportingState"
#define NV_REG_STR_RM_NVENC_SESSION_STATS_REPORTING_STATE_DISABLED         0x00000000
#define NV_REG_STR_RM_NVENC_SESSION_STATS_REPORTING_STATE_ENABLED          0x00000001

// Type Dword
// When present and set to != 0:    RM will skip 2d/3d bundle init
// When not present or set to 0:    RM does full bundle init
#define NV_REG_STR_RM_SKIP_2D_3D_BUNDLE_INIT                     "RMSkip2d3dBundleInit"
#define NV_REG_STR_RM_SKIP_2D_3D_BUNDLE_INIT_DEFAULT                       (0x00000000)
#define NV_REG_STR_RM_SKIP_2D_3D_BUNDLE_INIT_NO                            (0x00000000)
#define NV_REG_STR_RM_SKIP_2D_3D_BUNDLE_INIT_YES                           (0x00000001)

//
// TYPE DWORD
// Force enables GRID_DISPLAYLESS class / code path.
// NOTE: This regkey only works on GPUs without DISP_ENGINE.
// !!Not intended for production use!!
// Encoding boolean
// 0 - Do Nothing (Default behaviour)
// 1 - Force enable GRID_DISPLAYLESS class / code path.
//
#define NV_REG_STR_FORCE_GRID_DISPLAYLESS                        "RmForceGridDisplayless"
#define NV_REG_STR_FORCE_GRID_DISPLAYLESS_YES                    0x00000001
#define NV_REG_STR_FORCE_GRID_DISPLAYLESS_NO                     0x00000000
#define NV_REG_STR_FORCE_GRID_DISPLAYLESS_DEFAULT                NV_REG_STR_FORCE_GRID_DISPLAYLESS_NO

// Regkey to disable the SW WAR added for BUG_1758527
//
#define NV_REG_STR_RM_DISABLE_WAR_1758527                       "RmDisableWar1758527"
#define NV_REG_STR_RM_DISABLE_WAR_1758527_FALSE                 0x00000000
#define NV_REG_STR_RM_DISABLE_WAR_1758527_TRUE                  0x00000001

//
// TYPE DWORD
// For GM10X and later, controls selection of SEC ucode binary for
// debug fused boards.
//
#define NV_REG_STR_RM_SEC2_USE_DEBUG_FUSE_ONLY_BINARY             "RMSec2UseDebugFuseOnlyBinary"
#define NV_REG_STR_RM_SEC2_USE_DEBUG_FUSE_ONLY_BINARY_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_SEC2_USE_DEBUG_FUSE_ONLY_BINARY_FALSE        (0x00000000)
#define NV_REG_STR_RM_SEC2_USE_DEBUG_FUSE_ONLY_BINARY_TRUE         (0x00000001)

//
// TYPE DWORD
// Controls selection of PR4.4 ucode binaries for Ampere
//
// This allows us to check in a temporary ucode that needs to be available
// in builds but not ready for widespread use.
//
// This should only be used as a development feature. It is not intended to be used in
// production.
//
#define NV_REG_STR_RM_USE_PR44_ALT_UCODE_IMAGE             "RMUseAltPR44UcodeImage"
#define NV_REG_STR_RM_USE_PR44_ALT_UCODE_IMAGE_DEFAULT      (0x00000000)
#define NV_REG_STR_RM_USE_PR44_ALT_UCODE_IMAGE_FALSE        (0x00000000)
#define NV_REG_STR_RM_USE_PR44_ALT_UCODE_IMAGE_TRUE         (0x00000001)

// TYPE Dword
// Determines whether or not RM reserved space should be increased.
// 1 - Increases RM reserved space
// 0 - (default) Keeps RM reserved space as it is.

#define NV_REG_STR_BUG_1698088_WAR                            "RMBug1698088War"
#define NV_REG_STR_BUG_1698088_WAR_ENABLE                     0x00000001
#define NV_REG_STR_BUG_1698088_WAR_DISABLE                    0x00000000
#define NV_REG_STR_BUG_1698088_WAR_DEFAULT                    NV_REG_STR_BUG_1698088_WAR_DISABLE

// Type DWORD
// Encoding boolean
// This regkey will convert SPLIT_RAIL_SINGLE_STEP to
// SPLIT_RAIL_MULTI_STEP VOLT_POLICY. It has no effect if Voltage Policy Table
// in the VBIOS doesn't describe SPLIT_RAIL_SINGLE_STEP VOLT_POLICY.
// The intended use case of this regkey is to WAR CS qual where they need a way
// to add delay while switching the rail voltages without flashing a new VBIOS
// for SPLIT_RAIL_MULTI_STEP VOLT_POLICY. SPLIT_RAIL_SINGLE_STEP VOLT_POLICY
// doesn't require intermediate voltage switches and hence for qualifiying the
// split rail min and max voltage delta constraints CS will use
// SPLIT_RAIL_MULTI_STEP VOLT_POLICY.
//
// THIS REGKEY WON'T WORK BEFORE PASCAL AS SPLIT RAIL ITSELF ISN'T SUPPORTED!
//
// 1 - Enables the WAR
// 0 - Disables the WAR (default)
#define NV_REG_STR_RM_CONVERT_SPLIT_RAIL_SINGLE_STEP_TO_MULTI_STEP_WAR          "RMConvertSplitRailSingleStepToMultiStepWAR"
#define NV_REG_STR_RM_CONVERT_SPLIT_RAIL_SINGLE_STEP_TO_MULTI_STEP_WAR_ENABLE   0x00000001
#define NV_REG_STR_RM_CONVERT_SPLIT_RAIL_SINGLE_STEP_TO_MULTI_STEP_WAR_DISABLE  0x00000000
#define NV_REG_STR_RM_CONVERT_SPLIT_RAIL_SINGLE_STEP_TO_MULTI_STEP_WAR_DEFAULT  NV_REG_STR_RM_CONVERT_SPLIT_RAIL_SINGLE_STEP_TO_MULTI_STEP_WAR_DISABLE

// Type DWORD
// Encoding boolean
// This regkey disable preosapps,
// which can be used to remove the sysmem allocation in this case
#define NV_REG_STR_RM_DISABLE_PREOSAPPS "RmDisablePreosapps"

// Type DWORD
// Encoding boolean
// This regkey disable vbiosHandleHulk_HAL,
// which can be used to remove the sysmem allocation in this case
#define NV_REG_STR_RM_DISABLE_FWSECLIC "RmDisableFwseclic"

// Temporary regkey
// TYPE Dword
// This regkey is to program L2 sector promotion value for GDDR5x.
#define NV_REG_STR_RM_GDDR5X_L2_VIDMEM_PROMOTE            "RMG5xL2VidmemPromote"
#define NV_REG_STR_RM_GDDR5X_L2_VIDMEM_PROMOTE_DEFAULT    0x15511554

// This regkey is to disable coherent path CPU->Nvlink/C2C->FB and force BAR path.
#define NV_REG_STR_RM_FORCE_BAR_PATH            "RMForceBarPath"
// Type DWORD
// Encoding 0 (default) - Enable Coherent C2C/NvLink Path
//          1           - Force BAR Path

// This regkey is to fail RM load if C2C is down/not present in self hosted mode.
#define NV_REG_STR_RM_FAIL_ON_C2C_ABSENCE        "RMFailOnC2CAbsence"
// Type DWORD
// Encoding 0 (default) - RM load continues with BAR path if C2C is down/not present.
//          1           - Fail RM load if C2C is down/not present in self hosted mode.

// TYPE Dword
// Encoding boolean
// This regkey is to force enable/disable the WAR for Host preemption bug in PASCAL (1748740)
// The WAR is enabled by default on Windows platforms.
// 1 - Enable the feature
// 0 - Disable the feature.
#define NV_REG_STR_RM_HOST_BUG_1748740_WAR              "RMHostBug1748740War"
#define NV_REG_STR_RM_HOST_BUG_1748740_WAR_ENABLE       0x00000001
#define NV_REG_STR_RM_HOST_BUG_1748740_WAR_DISABLE      0x00000000

//
// TYPE DWORD
// This regkey can be used to enable logging of VEID info associated with
// with subcontext aware engines, allowing MODS interrupt checking
//
// NO      - Disable logging of the VEID to MODS (default).
// YES     - Enable logging of the VEID to MODS.
//
#define NV_REG_STR_RM_LOG_VEID_TO_MODS           "RMLogVeidToMods"
#define NV_REG_STR_RM_LOG_VEID_TO_MODS_NO        (0x00000000)
#define NV_REG_STR_RM_LOG_VEID_TO_MODS_YES       (0x00000001)

#define NV_REG_STR_PER_SUBCTX_CONTEXT_HEADER_ENABLE  "RmPerSubctxContextHeaderEnable"
// Type Dword
// Encoding Numeric Value
// Value can be used to set context switching mode on supported chips:
//    0 -> disable
//    1 -> enable

// TYPE Dword
// Encoding boolean
// This regkey will disable Boost during GPU state load feature if present
// bug 1755145
// 1 - Disable the feature
// 0 - (default) Enable the feature.
#define NV_REG_STR_RM_DISABLE_GPU_STATE_LOAD_BOOST             "RMDisableGpuStateLoadBoost"
#define NV_REG_STR_RM_DISABLE_GPU_STATE_LOAD_BOOST_TRUE         0x00000001
#define NV_REG_STR_RM_DISABLE_GPU_STATE_LOAD_BOOST_FALSE        0x00000000
#define NV_REG_STR_RM_DISABLE_GPU_STATE_LOAD_BOOST_DEFAULT      0x00000000

// TYPE Dword
// Encoding boolean
// This regkey will disable FB Address retraining if present
// bug 1762394
// 1 - Disable the feature
// 0 - (default) Enable the feature.
#define NV_REG_STR_RM_DISABLE_FB_ADDRESS_RETRAINING            "RMDisableFbAddressRetraining"
#define NV_REG_STR_RM_DISABLE_FB_ADDRESS_RETRAINING_TRUE        0x00000001
#define NV_REG_STR_RM_DISABLE_FB_ADDRESS_RETRAINING_FALSE       0x00000000
#define NV_REG_STR_RM_DISABLE_FB_ADDRESS_RETRAINING_DEFAULT     0x00000000

// This regkey disables the WARs required for Bug 1761410 and Bug 1760281:
// 1 - Disable the WAR
// 0 - (default) Enable the WAR
#define NV_REG_STR_RM_DISABLE_WAR_BUG_1761410                   "RMDisableWarBug1761410"
#define NV_REG_STR_RM_DISABLE_WAR_BUG_1761410_TRUE              0x00000001
#define NV_REG_STR_RM_DISABLE_WAR_BUG_1761410_FALSE             0x00000000
#define NV_REG_STR_RM_DISABLE_WAR_BUG_1761410_DEFAULT           0x00000000

// TYPE Dword
// Encoding boolean
// This regkey disables illegal compstat access interrupt
// 1 - Disable illegal compstat access interrupt
// 0 - (default) Maintain init value
#define NV_REG_STR_RM_DISABLE_INTR_ILLEGAL_COMPSTAT_ACCESS            "RMDisableIntrIllegalCompstatAccess"
#define NV_REG_STR_RM_DISABLE_INTR_ILLEGAL_COMPSTAT_ACCESS_TRUE       0x1
#define NV_REG_STR_RM_DISABLE_INTR_ILLEGAL_COMPSTAT_ACCESS_DEFAULT    0x0

// TYPE Dword
// Encoding boolean
// Regkey based solution to disabled the RM fix by default and to enable it only when user sets the regkey.
// 1 - Disable the WAR
// 0 - (default) Enable the WAR
#define NV_REG_STR_RM_BUG_1771163_WAR                            "RMBug1771163War"
#define NV_REG_STR_RM_BUG_1771163_WAR_TRUE                       0x00000001
#define NV_REG_STR_RM_BUG_1771163_WAR_FALSE                      0x00000000
#define NV_REG_STR_RM_BUG_1771163_WAR_DEFAULT                    0x00000000

// TYPE Dword
// Encoding boolean
// Regkey based solution to disable inline serving of disp interrupt during pstate switch.
// 1 - Disable inline servicing
// 0 - (default) Enable inline servicing
#define NV_REG_STR_RM_SERVICE_INLINE_DISP_INTR_BUG_1778552_WAR                     "RmBug1778552War"
#define NV_REG_STR_RM_SERVICE_INLINE_DISP_INTR_BUG_1778552_WAR_DISABLE             0x00000001
#define NV_REG_STR_RM_SERVICE_INLINE_DISP_INTR_BUG_1778552_WAR_ENABLE              0x00000000
#define NV_REG_STR_RM_SERVICE_INLINE_DISP_INTR_BUG_1778552_WAR_DEFAULT             0x00000000

// TYPE Dword
// Encoding boolean
// Regkey based solution to serialize VBlank Aggressive Handling in Top Half using spinlock
// 2 - Enable serialization of aggressive vblank callbacks when HMD is active
//
//
// 1 - Enable serialization of aggressive vblank callbacks in all scenarios
// (even when a HMD is not active)
//
// 0 - (default) Disable WAR
// This regkey settings are enabled when Aggressive Vblanks are enabled,
// if RmDisableAggressiveVblank is set to disable then these regkeys do not have any affect
#define NV_REG_STR_RM_BUG_2089053_WAR                               "RmBug2089053War"
#define NV_REG_STR_RM_BUG_2089053_WAR_ENABLE_ON_HMD_ACTIVE_ONLY     0x00000002
#define NV_REG_STR_RM_BUG_2089053_WAR_ENABLE_ALWAYS                 0x00000001
#define NV_REG_STR_RM_BUG_2089053_WAR_DISABLE                       0x00000000
#define NV_REG_STR_RM_BUG_2089053_WAR_DEFAULT                       (NV_REG_STR_RM_BUG_2089053_WAR_ENABLE_ALWAYS)


#ifdef NV_VERIF_FEATURES
// Type Dword
// Encoding :
// 0 - RM caluculates and programs ELV_START
// other value - overrides ELV start value with the given value
#define NV_REG_STR_RM_DISPLAY_OVERRIDE_ELV_START            "RMDisplayOverrideElvStart"
#define NV_REG_STR_RM_DISPLAY_OVERRIDE_ELV_START_VALUE      31:0
#define NV_REG_STR_RM_DISPLAY_OVERRIDE_ELV_START_VALUE_RM_PROGRAMMED   0x0
#endif

// Type Dword
// Encoding :
// Regkey based solution to enable the RM WAR for bug 1772047:
// 1 - Enable the WAR
// 0 - (default) Disable the WAR
#define NV_REG_STR_RM_BUG_1772047_WAR                            "RMBug1772047War"
#define NV_REG_STR_RM_BUG_1772047_WAR_TRUE                       0x00000001
#define NV_REG_STR_RM_BUG_1772047_WAR_FALSE                      0x00000000
#define NV_REG_STR_RM_BUG_1772047_WAR_DEFAULT                    0x00000000

// Regkey based solution to adjust the delay after BL_EN deassertion
// based on the panel requirement, as part of WAR for bug 1779636
#define NV_REG_STR_RM_BUG_1779636_SEQ_DELAY                      "RMBug1779636WarSeqDelay"
#define NV_REG_STR_RM_BUG_1779636_SEQ_DELAY_DEFAULT              0x00000032

// Type Dword
// Encoding :
// Regkey based solution to disable modeswitch force bits override from IMP:
// 1 - Disable modeswitch force bits
// 0 - (default) Enable modeswitch force bits
#define NV_REG_STR_RM_DISABLE_IMP_FORCE_BITS                     "RMDisableImpForceBits"
#define NV_REG_STR_RM_DISABLE_IMP_FORCE_BITS_TRUE                0x00000001
#define NV_REG_STR_RM_DISABLE_IMP_FORCE_BITS_FALSE               0x00000000
#define NV_REG_STR_RM_DISABLE_IMP_FORCE_BITS_DEFAULT             0x00000000

// Regkey based solution to enable the RM WAR for bug 1790718:
// 1 - Enable the WAR
// 0 - (default) Disable the WAR
#define NV_REG_STR_RM_BUG_1790718_WAR                         "RMBug1790718War"
#define NV_REG_STR_RM_BUG_1790718_WAR_ENABLE                  0x00000001
#define NV_REG_STR_RM_BUG_1790718_WAR_DISABLE                 0x00000000
#define NV_REG_STR_RM_BUG_1790718_WAR_DEFAULT                 NV_REG_STR_RM_BUG_1790718_WAR_DISABLE

//
// Regkey to configure Per VM RunList.
// Type Dword
//  BIT 0 - Overall PVMRL enable/disable.
//   0 - Disable / Default - 1 HW runlist per engine.
//   1 - Enable            - 1 SW runlist per VM for some engines.
//  BIT 1 - Enable Adaptive Round Robin Scheduler
//   0 - Use Legacy PVMRL
//   1 - Enable Adaptive Round Robin Scheduler
//  BIT 7:4 - PVMRL scheduler to run.
//   0 - vGPU relative / Default - relative to other running vGPUs.
//   1 - pGPU share              - share of the physical GPU.
//  BIT 8:8 - Save TSG offset on runlist preemption
//   0 - Disable / Default - do not save TSG offset, always submit at 0 offset.
//   1 - Enable            - save TSG offset on runlist preemption
//  BIT 9:9 - Regkey based solution to enable or disable PVMRL extra
//  context restore-preempt-save cycle prevention (enabled by default) for Bug :2844454
//   0 - Enable / Default - Allow a single cycle for each preemption.
//   1 - Disable          - Normal PVMRL code flow execution (Using extra restore-preempt-save cycle).
//  BIT 21:12 - PVMRL Scheduling frequency.
//   0 - Default timeslice.
//   F - Timeslice = 1000 / F.
//  BIT 23:16 - PVMRL timeslice in ms (Milli-seconds).
//   0 - Default timeslice.
//   T - Timeslice of T ms.
//  BIT 31:24 - ARR Average Factor
//   0 - Default Average Factor
//   F - Average Factor = F
//
#define NV_REG_STR_RM_PVMRL                                       "RmPVMRL"
#define NV_REG_STR_RM_PVMRL_ENABLE                                0:0
#define NV_REG_STR_RM_PVMRL_ENABLE_DEFAULT                        0x00000000
#define NV_REG_STR_RM_PVMRL_ENABLE_NO                             0x00000000
#define NV_REG_STR_RM_PVMRL_ENABLE_YES                            0x00000001
#define NV_REG_STR_RM_PVMRL_ARR_ENABLE                            1:1
#define NV_REG_STR_RM_PVMRL_ARR_ENABLE_DEFAULT                    0x00000000
#define NV_REG_STR_RM_PVMRL_ARR_ENABLE_NO                         0x00000000
#define NV_REG_STR_RM_PVMRL_ARR_ENABLE_YES                        0x00000001
#define NV_REG_STR_RM_PVMRL_SCHED_POLICY                          7:4
#define NV_REG_STR_RM_PVMRL_SCHED_POLICY_DEFAULT                  0x00000000
#define NV_REG_STR_RM_PVMRL_SCHED_POLICY_VGPU_RELATIVE            0x00000000
#define NV_REG_STR_RM_PVMRL_SCHED_POLICY_PGPU_SHARE               0x00000001
#define NV_REG_STR_RM_SCHED_POLICY_WDDM_COMPATIBILITY             0x00000002
// Explicitly out of range of the bitfield, set using NV_REG_STR_RM_PVMRL_USE_GFN_LSTT.
#define NV_REG_STR_RM_PVMRL_SCHED_POLICY_GFN_LSTT                 0x00000010
#define NV_REG_STR_RM_PVMRL_USE_SUBMIT_OFFSET                     8:8
#define NV_REG_STR_RM_PVMRL_USE_SUBMIT_OFFSET_DEFAULT             0x00000000
#define NV_REG_STR_RM_PVMRL_USE_SUBMIT_OFFSET_DISABLED            0x00000000
#define NV_REG_STR_RM_PVMRL_USE_SUBMIT_OFFSET_ENABLED             0x00000001
#define NV_REG_STR_RM_PVMRL_PREVENT_EXTRA_CONTEXT_SWITCH          9:9
#define NV_REG_STR_RM_PVMRL_PREVENT_EXTRA_CONTEXT_SWITCH_DEFAULT  0x00000000
#define NV_REG_STR_RM_PVMRL_PREVENT_EXTRA_CONTEXT_SWITCH_ENABLED  0x00000000
#define NV_REG_STR_RM_PVMRL_PREVENT_EXTRA_CONTEXT_SWITCH_DISABLED 0x00000001
#define NV_REG_STR_RM_PVMRL_FREQUENCY                             21:12
#define NV_REG_STR_RM_PVMRL_TIMESLICE                             23:16
#define NV_REG_STR_RM_PVMRL_AVERAGE_FACTOR                        31:24

#define NV_REG_STR_RM_PVMRL_USE_GFN_LSTT                          "RmPVMRLUseLSTT"
#define NV_REG_STR_RM_PVMRL_USE_GFN_LSTT_ENABLE                   0x00000001
#define NV_REG_STR_RM_PVMRL_USE_GFN_LSTT_DISABLE                  0x00000000
#define NV_REG_STR_RM_PVMRL_USE_GFN_LSTT_DEFAULT                  NV_REG_STR_RM_PVMRL_ALLOW_GFN_LSTT_DISABLE



// Regkey based solution to enable RM WAR for bug 1727078:
// 1 - Enable the WAR
// 0 - Disable the WAR
#define NV_REG_STR_RM_BUG_1727078_WAR                       "RMBug1727078War"
#define NV_REG_STR_RM_BUG_1727078_WAR_ENABLE                0x00000001
#define NV_REG_STR_RM_BUG_1727078_WAR_DISABLE               0x00000000
#define NV_REG_STR_RM_BUG_1727078_WAR_DEFAULT               NV_REG_STR_RM_BUG_1727078_WAR_DISABLE

// TYPE Dword
// This regkey force disabling RM to support all eDP brightness over aux including generic and NVSR
// 1 - Force disabling RM to support eDP brightness over aux
// 0 - (default) Enable RM to support eDP brightness over aux
#define NV_REG_STR_RM_DISABLE_BRIGHTNESS_OVER_AUX           "RMForceDisableBrightnessOverAux"
#define NV_REG_STR_RM_DISABLE_BRIGHTNESS_OVER_AUX_TRUE      0x1
#define NV_REG_STR_RM_DISABLE_BRIGHTNESS_OVER_AUX_FALSE     0x0
#define NV_REG_STR_RM_DISABLE_BRIGHTNESS_OVER_AUX_DEFAULT   0x0

// TYPE Dword
// This regkey force disabling RM to support non-NVSR brightness over aux
// 1 - Force disabling RM to support non-NVSR brightness over aux
// 0 - (default) Enable RM to support non-NVSR brightness over aux
#define NV_REG_STR_RM_DISABLE_NON_NVSR_BRIGHTNESS_OVER_AUX           "RM200297641"
#define NV_REG_STR_RM_DISABLE_NON_NVSR_BRIGHTNESS_OVER_AUX_TRUE      0x1
#define NV_REG_STR_RM_DISABLE_NON_NVSR_BRIGHTNESS_OVER_AUX_FALSE     0x0
#define NV_REG_STR_RM_DISABLE_NON_NVSR_BRIGHTNESS_OVER_AUX_DEFAULT   0x0

// TYPE Dword
// This regkey force the backlight brightness capabilities over AUX
// 1 - Force panel capabilities to support brightness over AUX
// 0 - (default) use capabilities advertised by panel
#define NV_REG_STR_RM_FORCE_BRIGHTNESS_OVER_AUX           "RM3026741"
#define NV_REG_STR_RM_FORCE_BRIGHTNESS_OVER_AUX_TRUE      0x1
#define NV_REG_STR_RM_FORCE_BRIGHTNESS_OVER_AUX_FALSE     0x0
#define NV_REG_STR_RM_FORCE_BRIGHTNESS_OVER_AUX_DEFAULT   0x0

// TYPE Dword
// This regkey force the backlight brightness capabilities over PWM PIN
// 1 - Force panel capabilities to support brightness over PWM Pin
// 0 - (default) use capabilities advertised by panel
#define NV_REG_STR_RM_FORCE_BRIGHTNESS_OVER_PWMPIN           "RMForceEnableBrightnessOverPwmPin"
#define NV_REG_STR_RM_FORCE_BRIGHTNESS_OVER_PWMPIN_TRUE      0x1
#define NV_REG_STR_RM_FORCE_BRIGHTNESS_OVER_PWMPIN_FALSE     0x0
#define NV_REG_STR_RM_FORCE_BRIGHTNESS_OVER_PWMPIN_DEFAULT   0x0

// TYPE Dword
// Regkey based solution to enable RM WAR for bug 200324805:
// 1 - Enable the WAR
// 0 - Disable the WAR
#define NV_REG_STR_RM_BUG_200324805_WAR           "RM200324805"
#define NV_REG_STR_RM_BUG_200324805_WAR_TRUE      0x1
#define NV_REG_STR_RM_BUG_200324805_WAR_FALSE     0x0
#define NV_REG_STR_RM_BUG_200324805_WAR_DEFAULT   0x0

// Type Dword
// Encoding :
// Regkey to disable the feature that uses no PCIE- mappings with Win10 OS RS2
// 1 - Skip PCIE mappings
// 0 - Do not skip PCIE mappings
#define NV_REG_STR_RM_OS_NO_PCIE_MAPPINGS_DISABLE           "RM2953508939"
#define NV_REG_STR_RM_OS_NO_PCIE_MAPPINGS_DISABLE_YES       0x00000001
#define NV_REG_STR_RM_OS_NO_PCIE_MAPPINGS_DISABLE_NO        0x00000000

// Regkey based solution to enable RM WAR for bug 1848110
// 1 - Enable the WAR
// 0 - Disable the WAR
#define NV_REG_STR_RM_BUG_1848110_WAR                       "RMBug1848110War"
#define NV_REG_STR_RM_BUG_1848110_WAR_ENABLE                0x00000001
#define NV_REG_STR_RM_BUG_1848110_WAR_DISABLE               0x00000000
#define NV_REG_STR_RM_BUG_1848110_WAR_DEFAULT               NV_REG_STR_RM_BUG_1848110_WAR_DISABLE

// Type: Dword
// Encoding:
//   USE_DEFAULTS   0   --> No effect.
//   DISABLE        1   --> Disable all SPI related functionality
//                          which is currently limited to InfoROM
#define NV_REG_STR_RM_SPI                                     "RMDisableSpi"
#define NV_REG_STR_RM_SPI_USE_DEFAULTS                        0x00000000
#define NV_REG_STR_RM_SPI_DISABLE                             0x00000001

//
// Type: Dword
// Encoding:
// 1 - Vgpu Gsp Plugin Offload Enabled on supported GPU
// 0 - Vgpu Gsp Plugin Offload Disabled on specific GPU
//
#define NV_REG_STR_RM_SET_VGPU_GSP_PLUGIN_OFFLOAD_MODE            "RMSetVgpuGspPluginOffloadMode"
#define NV_REG_STR_RM_SET_VGPU_GSP_PLUGIN_OFFLOAD_DISABLED        0x00000000
#define NV_REG_STR_RM_SET_VGPU_GSP_PLUGIN_OFFLOAD_ENABLED         0x00000001

//
// Type: Dword
// Encoding:
// 1 - SRIOV Enabled on supported GPU
// 0 - SRIOV Disabled on specific GPU
//
#define NV_REG_STR_RM_SET_SRIOV_MODE                    "RMSetSriovMode"
#define NV_REG_STR_RM_SET_SRIOV_MODE_DISABLED             0x00000000
#define NV_REG_STR_RM_SET_SRIOV_MODE_ENABLED              0x00000001

//
// Type: Dword
// Encoding:
// 1 - SRIOV heavy mode is enabled
// 0 - SRIOV heavy mode is disabled
//
#define NV_REG_STR_RM_SET_SRIOV_HEAVY_MODE              "RMSetSriovHeavyMode"
#define NV_REG_STR_RM_SET_SRIOV_HEAVY_MODE_DISABLED       0x00000000
#define NV_REG_STR_RM_SET_SRIOV_HEAVY_MODE_ENABLED        0x00000001

//
// Type: Dword
// Encoding:
// 0 - client RM allocated context buffer feature is disabled
// 1 - client RM allocated context buffer feature is enabled
//
#define NV_REG_STR_RM_CLIENT_RM_ALLOCATED_CTX_BUFFER            "RMSetClientRMAllocatedCtxBuffer"
#define NV_REG_STR_RM_CLIENT_RM_ALLOCATED_CTX_BUFFER_DISABLED   0x00000000
#define NV_REG_STR_RM_CLIENT_RM_ALLOCATED_CTX_BUFFER_ENABLED    0x00000001

//
// Type: Dword
// Encoding:
// 0 - Iterative MMU Walker is not enabled. Normal recursive implementation is used. (default)
// 1 - Iterative MMU Walker is used
//
#define NV_REG_STR_RM_ITERATIVE_MMU_WALKER           "RMUseIterativeMMUWalker"
#define NV_REG_STR_RM_ITERATIVE_MMU_WALKER_DISABLED   0x00000000
#define NV_REG_STR_RM_ITERATIVE_MMU_WALKER_ENABLED    0x00000001
#define NV_REG_STR_RM_ITERATIVE_MMU_WALKER_DEFAULT    NV_REG_STR_RM_ITERATIVE_MMU_WALKER_DISABLED

//
// Type: Dword
// Encoding:
// 0 - Split VA space management between server/client RM is disabled
// 1 - Split VA space management between server/client RM is enabled
//
#define NV_REG_STR_RM_SPLIT_VAS_MGMT_SERVER_CLIENT_RM              "RMSplitVasMgmtServerClientRm"
#define NV_REG_STR_RM_SPLIT_VAS_MGMT_SERVER_CLIENT_RM_DISABLED                         0x00000000
#define NV_REG_STR_RM_SPLIT_VAS_MGMT_SERVER_CLIENT_RM_ENABLED                          0x00000001

// Type : NvBool
// Encoding:
//    Bit 31..0: Specifies the P2P GFID to skip GFID programming
//
#define NV_REG_STR_RM_ALLOW_DUMMY_P2P_OBJECT            "RMSriovAllowDummyP2PObject"


// Type: Dword
// Encoding: see NV_ARCH_EVENTS
//
#define NV_REG_STR_RM_SUBSCRIBE_TO_ARCH_EVENTS          "RMSubscribeToArchEvents"

//
// Type DWORD:
// _ENABLE:  FUB runs.
// _DISABLE: FUB does not run.
// Default value is _DISABLE.
// Fuse Update Binary is responsible for blowing Field programmable fuses.
//
#define NV_REG_STR_RM_RUN_FUB                 "RMRunFub"
#define NV_REG_STR_RM_RUN_FUB_ENABLE          1
#define NV_REG_STR_RM_RUN_FUB_DISABLE         0
//
// Type DWORD:
// _NO_USE_CASE:                    FUB will not burn any fuse
// _ENABLE_GSYNC:                   FUB will burn FPF fuse for enabling GSYNC.
// _REVOKE_DEVID_BASED_HULK:        FUB will burn FPF fuse to revoke DEVID based HULK license
// _GEFORCE_SKU_RECOVERY:           FUB will burn FPF fuse for GeForce SKU Recovery.
// _GEFORCE_SKU_RECOVERY_GFW_REV:   FUB will burn FPF fuse for GeForce SKU Recovery GFW_REV increment.
// _NVFLASH_REV_FOR_WP_BYPASS:      FUB will burn FPF fuse ROM_REV for WP_BYPASS. But FUB of this use case will not be executed through MODS.
// _GFW_REV_FOR_WP_BYPASS:          FUB will burn FPF fuse GFW_REV for WP_BYPASS. But FUB of this use case will not be executed through MODS.
//_AUTO_QS2_AHESASC                 FUB will burn FPF fuse SEC2_UCODE1_VERSION so that Aheasasc binary of QS1 can not be run on QS2 boards.
//_AUTO_QS2_ASB                     FUB will burn FPF fuse GSP_UCODE1_VERSION so that Asb binary of QS1 can not be run on QS2 boards.
//_AUTO_QS2_NVFLASH                 FUB will burn FPF fuse PMU_UCODE8_VERSION so that NVFLASH binary of QS1 can not be run on QS2 boards.
//_AUTO_QS2_IMAGESELECT             FUB will burn FPF fuse PMU_UCODE11_VERSION so that ImageSelect binary of QS1 can not be run on QS2 boards.
//_AUTO_QS2_HULK                    FUB will burn FPF fuse SEC2_UCODE10_VERSION so that HULK binary of QS1 can not be run on QS2 boards.
//_AUTO_QS2_FWSEC                   FUB will burn FPF fuse GSP_UCODE9_VERSION so that FwSec binary of QS1 can not be run on QS2 boards.
// _COUNT_CHECK:                    Upper limit on use case mask. Set to largest use case.
// Default value is _NO_USE_CASE.
// This mask specifies use case and then FUB will burn corresponding fuse.
// For each use case 1 bit is assigned in mask.
//
#define NV_REG_STR_RM_FUB_USE_CASE_MASK                                       "RMFubUseCaseMask"
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_NONE                                  0x00000000
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_ENABLE_GSYNC                          0x00000001
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_REVOKE_DEVID_BASED_HULK               0x00000002
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_ALLOW_DRAM_CHIPID_READ_HULK           0x00000004
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_REVOKE_DRAM_CHIPID_READ_HULK          0x00000008
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_GEFORCE_SKU_RECOVERY                  0x00000010
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_GEFORCE_SKU_RECOVERY_GFW_REV          0x00000020
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_NVFLASH_REV_FOR_WP_BYPASS             0x00000040
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_GFW_REV_FOR_WP_BYPASS                 0x00000080
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_AUTO_QS2_AHESASC_FUSE                 0x00000100
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_AUTO_QS2_ASB_FUSE                     0x00000200
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_AUTO_QS2_NVFLASH_FUSE                 0x00000400
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_AUTO_QS2_IMAGESELECT_FUSE             0x00000800
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_AUTO_QS2_HULK_FUSE                    0x00001000
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_AUTO_QS2_FWSEC_FUSE                   0x00002000
#define NV_REG_STR_RM_FUB_USE_CASE_MASK_COUNT_CHECK                           0x00002000


//
// Type DWORD
// Regkey to disable CLFC WAR added for bug 1969099
//
#define NV_REG_STR_RM_DISABLE_CLFC_WAR_1969099                   "RmDisableCLFCWar1969099"
#define NV_REG_STR_RM_DISABLE_CLFC_WAR_1969099_FALSE             0x00000000
#define NV_REG_STR_RM_DISABLE_CLFC_WAR_1969099_TRUE              0x00000001

// Regkey based solution to enable RM WAR for bug 1990048
// 1 - Enable the WAR
// 0 - Disable the WAR
#define NV_REG_STR_RM_BUG_1990048_WAR                       "RMBug1990048War"
#define NV_REG_STR_RM_BUG_1990048_WAR_ENABLE                0x00000001
#define NV_REG_STR_RM_BUG_1990048_WAR_DISABLE               0x00000000
#define NV_REG_STR_RM_BUG_1990048_WAR_DEFAULT               NV_REG_STR_RM_BUG_1990048_WAR_DISABLE

//
// Type DWORD:
// _ENABLE:  FWSEC binary executes on SEC2..
// _DISABLE: FWSEC runs on PMU
// Default value is _DISABLE.
//
#define NV_REG_STR_RM_EXECUTE_FWSEC_ON_SEC2                 "RMExecuteFwsecOnSec2"
#define NV_REG_STR_RM_EXECUTE_FWSEC_ON_SEC2_ENABLE          1
#define NV_REG_STR_RM_EXECUTE_FWSEC_ON_SEC2_DISABLE         0

//
// Type DWORD:
// Secure bootflow is needed to bootstrap DEVINIT in LS mode where IFR is suppressed
// This is achieved by executing DEVINIT by SECURE_BOOT command of FWSECLIC
// _ENABLE: Enable Secure boot flow
// _DISABLE: Disable SECURE Boot flow
// default is _DISABLE
#define NV_REG_STR_RM_DEVINIT_BY_SECURE_BOOT                     "RMDevinitBySecureBoot"
#define NV_REG_STR_RM_DEVINIT_BY_SECURE_BOOT_ENABLE              1
#define NV_REG_STR_RM_DEVINIT_BY_SECURE_BOOT_DISABLE             0

// Type: Dword
// LT-tunable PHY-Repeater(LTTPR) miscellaneous configurations
// Encoding:
// BIT 0:0 Enable/disable LTTPR link-train
// BIT 1:1 Disable LTTPR cap probe
//
#define NV_REG_STR_RM_ENABLE_PHY_REPEATER                   "RMEnablePhyRepeater"
#define NV_REG_STR_RM_ENABLE_PHY_REPEATER_TRAIN             0:0
#define NV_REG_STR_RM_ENABLE_PHY_REPEATER_TRAIN_NO          0x00000000
#define NV_REG_STR_RM_ENABLE_PHY_REPEATER_TRAIN_YES         0x00000001
#define NV_REG_STR_RM_ENABLE_PHY_REPEATER_NO_CAP_PROBE      1:1
#define NV_REG_STR_RM_ENABLE_PHY_REPEATER_NO_CAP_PROBE_NO   0x00000000
#define NV_REG_STR_RM_ENABLE_PHY_REPEATER_NO_CAP_PROBE_YES  0x00000001

// Type: Dword
// Encoding:
// Value read from regkey is delay value in milliseconds before
// software touches the gpu on GC6 exit
//
#define NV_REG_STR_RM_BUG_200333878_WAR         "RMBug200333878War"

#ifdef NV_VERIF_FEATURES
// Type: Dword
// This regkey control BAR fault RC handling on verif platforms.
// BAR2 fault RC handling is enabled by default on all platforms for Volta+ chips.
// Some arch BAR2 fault tests need this disabled.
// See bugs 2003548, 1927268
// _NO  - Enable BAR Fault RC
// _YES - Disable BAR2 Fault RC
//
#define NV_REG_STR_RM_DISABLE_RC_ON_BAR_FAULT               "RMDisableRcOnBarFault"
#define NV_REG_STR_RM_DISABLE_RC_ON_BAR_FAULT_NO             0x00000000
#define NV_REG_STR_RM_DISABLE_RC_ON_BAR_FAULT_YES            0x00000001
#endif

// TYPE Dword
// Regkey based solution to enable Zcull equal screen distribution among GPCs.
// The feature is disable by default and could be enabled through the
// following regkey.
// 1 - Enable zcull equal screen distribution
//
#define NV_REG_STR_RM_ZCULL_EQUAL_SCREEN_DIST_ON_FS          "RMZcullEqualScreenDistOnFS"
#define NV_REG_STR_RM_ZCULL_EQUAL_SCREEN_DIST_ON_FS_TRUE     0x00000001
#define NV_REG_STR_RM_ZCULL_EQUAL_SCREEN_DIST_ON_FS_FALSE    0x00000000
#define NV_REG_STR_RM_ZCULL_EQUAL_SCREEN_DIST_ON_FS_DEFAULT  0x00000000

// Type DWORD:
// _NO:  PCIe Gen switch runs on CPU (in RM)
// _YES: PCIe Gen switch runs on PMU (via RPC)
// Value when key not set is _YES.
//
#define NV_REG_STR_RM_PCIE_GEN_SWITCH_ON_PMU                "RMPcieGenSwitchOnPmu"
#define NV_REG_STR_RM_PCIE_GEN_SWITCH_ON_PMU_YES            1
#define NV_REG_STR_RM_PCIE_GEN_SWITCH_ON_PMU_NO             0

// Type DWORD:
// Regkey for setting timeout for ltssm link ready in ms
// Please note that this regkey is only for debug purpose, not to be shared outside Nvidia
// Also, this regkey is not blindly obeyed - PMU applies the MIN/MAX limit
//
#define NV_REG_STR_RM_SET_LINK_READY_TIMEOUT                "RMSetLinkReadyTimeout"
#define NV_REG_STR_RM_SET_LINK_READY_TIMEOUT_DEFAULT        0X00000000

// Type DWORD
// Regkey to enable Pex Power Savings feature, disabled by default
// 'Difference' (used below) means difference between new L1 residency and average of previous five
// Lower limit diff percentage is the minimum difference against which idle threshold would be reduced / increased
// Upper limit diff percentage is a higher difference against which idle threshold would be reduced / increased
// Lower limit new L1 residency is the absolute lower L1 residency value below which idle threshold won't be reduced
// Upper limit new L1 residency is the absolute higher L1 residency value below which idle threshold won't be reduced drastically
#define NV_REG_STR_RM_PEX_POWER_SAVINGS                                      "RMPexPowerSavings"
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_ENGAGE                               0:0
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_ENGAGE_DEFAULT                       0x0
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_ENGAGE_DISABLE                       0x0
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_ENGAGE_ENABLE                        0x1
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_LOWER_LIMIT_DIFF_PERCENTAGE          7:1
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_LOWER_LIMIT_DIFF_PERCENTAGE_INIT     0x5   // 5%
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_UPPER_LIMIT_DIFF_PERCENTAGE          14:8
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_UPPER_LIMIT_DIFF_PERCENTAGE_INIT     0xA   // 10%
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_LOWER_LIMIT_NEW_L1_RESIDENCY         21:15
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_LOWER_LIMIT_NEW_L1_RESIDENCY_INIT    0xF   // 15%
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_UPPER_LIMIT_NEW_L1_RESIDENCY         28:22
#define NV_REG_STR_RM_PEX_POWER_SAVINGS_UPPER_LIMIT_NEW_L1_RESIDENCY_INIT    0x1E  // 30%


// Type DWORD:
// _ENABLED  : Enable Lane Margining
// _DISABLED : Disable Lane Margining
// Value when key is not set is _DISABLED
#define NV_REG_STR_RM_ENABLE_LANE_MARGINING                 "RM200753824"
#define NV_REG_STR_RM_ENABLE_LANE_MARGINING_DEFAULT         0
#define NV_REG_STR_RM_ENABLE_LANE_MARGINING_ENABLED         1
#define NV_REG_STR_RM_ENABLE_LANE_MARGINING_DISABLED        0

//
// Type: DWORD
// Encoding:
// 0 - SMC Disabled on a specific GPU
// 1 - SMC Enabled on a supported GPU
//
#define NV_REG_STR_RM_DEBUG_SET_SMC_MODE            "RMDebugSetSMCMode"
#define NV_REG_STR_RM_DEBUG_SET_SMC_MODE_DISABLED   0
#define NV_REG_STR_RM_DEBUG_SET_SMC_MODE_ENABLED    1

//
// Type: DWORD
// Encoding: A non-zero value will override the maximum number of TPCs allowed
// within all partitions to the given value.
//
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_TPC_PER_GPC    "RMDebugOverrideSMCTpcPerGpc"

//
// Type: DWORD
// Encoding:
// 0 - SMC Dynamic TPC Floorsweeping disabled on a specific GPU
// 1 - SMC Dynamic TPC Floorsweeping enabled on a specific GPU and owned by RM
// 2 - SMC Dynamic TPC Floorsweeping enabled and performed by devinit
//
#define NV_REG_STR_RM_DEBUG_SMC_DYNAMIC_TPC_FS            "RMDebugSMCDynamicTpcFs"
#define NV_REG_STR_RM_DEBUG_SMC_DYNAMIC_TPC_FS_DISABLED                 0
#define NV_REG_STR_RM_DEBUG_SMC_DYNAMIC_TPC_FS_ENABLED_RM_OWN           1
#define NV_REG_STR_RM_DEBUG_SMC_DYNAMIC_TPC_FS_ENABLED_DEVINIT_OWN      2

//
// Type: DWORD
// Encoding: A non-zero value will cause RM to disable sys pipes according to
// each bit set in the mask, with a mask of 0x1 corresponding to GR0. Disabling
// GR0 with this mask is disallowed.
//
#define NV_REG_STR_RM_DEBUG_SMC_SYS_PIPE_MASK_DISABLE    "RMDebugSyspipeMaskDisable"

//
// Type: DWORD
// Encoding:
// 0 - SMC and NvLink-P2P not compatible on a specific GPU
// 1 - SMC and NvLink-P2P are compatible on a specific GPU
//     In Mods  SMC and NvLink/P2P will work on full GPU partition mode
//     In non-Mods environment, NvLink P2P is disabled by default
//
#define NV_REG_STR_RM_DEBUG_SET_SMC_NVLINK_P2P_MODE            "RMDebugSetSMCNvLinkP2PMode"
#define NV_REG_STR_RM_DEBUG_SET_SMC_NVLINK_P2P_MODE_DISABLED   0
#define NV_REG_STR_RM_DEBUG_SET_SMC_NVLINK_P2P_MODE_ENABLED    1

//
// Type: DWORD
// Encoding:
// 0 - Use best-fit swizzid allocator
// 1 - Use greedy swizzid allocator. Only available for GA100 and MODS.
//
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_SWIZZID_ALLOCATOR          "RMDebugOverrideSMCSwizzIdAllocator"
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_SWIZZID_ALLOCATOR_BEST_FIT 0
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_SWIZZID_ALLOCATOR_GREEDY   1

//
// Type: DWORD
// Encoding:
// 0 - Use default VGPU behavior / policy
// 1 - Use MODS VGPU behavior / policy (no compute instances, default gpu instance in guest)
// 2 - Use Prod VGPU behavior / policy (no default gpu instances, full configuration capability in guest)
//
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_VGPU_POLICY                "RMDebugOverrideSMCVGPUPolicy"
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_VPGU_POLICY_DEFAULT        0
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_VGPU_POLICY_LEGACY         1
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_VGPU_POLICY_PROD           2

//
// Type: DWORD
// Encoding:
// 0 - Use logical (HW reordered) gpc order to determine gpcs for partition
// 1 - Use physical (not reordered) gpc order to determine gpcs for partition
// Default is 0
//
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_HW_GPC_REORDER             "RMDebugOverrideSMCHwGpcReorder"
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_HW_GPC_REORDER_LOGICAL     0
#define NV_REG_STR_RM_DEBUG_OVERRIDE_SMC_HW_GPC_REORDER_PHYSICAL    1

// Type Dword
// Encoding Numeric Value
// Overrides the virtual GPC skyline tpc counts
//     RmVgpcSkyline holds the override for vGPC 0 through 7.
#define NV_REG_STR_RM_VGPC_SKYLINE                            "RmVgpcSkyline"
#define NV_REG_STR_RM_VGPC_SKYLINE__SIZE_1                    8
#define NV_REG_STR_RM_VGPC_SKYLINE_NUMTPC(i)                  (3 + (i) * 4):(0 + (i) * 4)

// Type Dword
// Encoding Numeric Value
// Overrides the virtual GPC skyline tpc counts for HALF config
//     RmVgpcSkylineHalf holds the override for vGPC 0 through 7.
#define NV_REG_STR_RM_VGPC_SKYLINE_HALF                       "RmVgpcSkylineHalf"
#define NV_REG_STR_RM_VGPC_SKYLINE_HALF__SIZE_1               8
#define NV_REG_STR_RM_VGPC_SKYLINE_HALF_NUMTPC(i)             (3 + (i) * 4):(0 + (i) * 4)

// Type Dword
// Encoding Numeric Value
// Overrides the virtual GPC skyline tpc counts for QUARTER config
//     RmVgpcSkylineQuarter holds the override for vGPC 0 through 7.
#define NV_REG_STR_RM_VGPC_SKYLINE_QUARTER                    "RmVgpcSkylineQuarter"
#define NV_REG_STR_RM_VGPC_SKYLINE_QUARTER__SIZE_1            8
#define NV_REG_STR_RM_VGPC_SKYLINE_QUARTER_NUMTPC(i)          (3 + (i) * 4):(0 + (i) * 4)

// Type Dword
// Encoding Numeric Value
// Overrides the virtual GPC skyline tpc counts for EIGHTH config
//     RmVgpcSkylineEighth holds the override for vGPC 0 through 7.
#define NV_REG_STR_RM_VGPC_SKYLINE_EIGHTH                     "RmVgpcSkylineEighth"
#define NV_REG_STR_RM_VGPC_SKYLINE_EIGHTH__SIZE_1             8
#define NV_REG_STR_RM_VGPC_SKYLINE_EIGHTH_NUMTPC(i)           (3 + (i) * 4):(0 + (i) * 4)

// Type: DWORD
// Holds the mask of singleton to vGpc, currently 0-16
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK                          "RmVgpcSingletonMask"
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_VGPC_ACTIVE(i)           ((i)):((i))

// Type: DWORD
// Holds the mask of singleton to vGpc in HALF config, currently 0-16
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_HALF                     "RmVgpcSingletonMaskHalf"
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_HALF__SIZE_1             16
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_HALF_VGPC_ACTIVE(i)      ((i)):((i))

// Type: DWORD
// Holds the mask of singleton to vGpc in QUARTER config, currently 0-16
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_QUARTER                  "RmVgpcSingletonMaskQuarter"
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_QUARTER__SIZE_1          16
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_QUARTER_VGPC_ACTIVE(i)   ((i)):((i))

// Type: DWORD
// Holds the mask of singleton to vGpc in EIGHTH config, currently 0-16
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_EIGHTH                   "RmVgpcSingletonMaskEighth"
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_EIGHTH__SIZE_1           16
#define NV_REG_STR_RM_VGPC_SINGLETON_MASK_EIGHTH_VGPC_ACTIVE(i)    ((i)):((i))

//Type: DWORD
// Overrides the skyline instance count for specified SKYLINE override i in
//     the order: FULL to EIGHTH.
#define NV_REG_STR_RM_SKYLINE_INSTANCE_COUNT_MASK                  "RmSkylineInstCount"
#define NV_REG_STR_RM_SKYLINE_INSTANCE_COUNT_MASK__SIZE_1          8
#define NV_REG_STR_RM_SKYLINE_INSTANCE_COUNT_MASK_VAL(i)           (3 + (i * 4)):(0 + (i * 4))

// Type DWORD:
//
// This debug-only regkey enables PDB_PROP_FIFO_USE_PER_RUNLIST_CHANNEL_RAM for
// testing AMPERE+ chips.
// See http://nvbugs/2426546 Implement a per-esched CHID manager for GA100
//
// We expect this to be removed once fifoChidMgr is fully implemented for
// AMPERE+
//
// 0 - No effect (default)
// 1 - Forcibly set PDB_PROP_FIFO_USE_PER_RUNLIST_CHANNEL_RAM for testing.
//
#define NV_REG_STR_RM_DEBUG_OVERRIDE_PER_RUNLIST_CHANNEL_RAM         "RMDebugOverridePerRunlistChannelRam"
#define NV_REG_STR_RM_DEBUG_OVERRIDE_PER_RUNLIST_CHANNEL_RAM_DISABLE 0
#define NV_REG_STR_RM_DEBUG_OVERRIDE_PER_RUNLIST_CHANNEL_RAM_ENABLE  1

// skip clock setup in tegra vbios pass
#define NV_REG_STR_RM_SKIP_TEGRA_CLK_INIT           "RMSkipTegraClkInit"
// Type DWORD
// Encoding: a non-zero value will tell us to skip clock setup in tegra vbios pass

// skip priv ring init in tegra vbios pass
#define NV_REG_STR_RM_SKIP_TEGRA_RING_INIT          "RMSkipTegraRingInit"
// Type DWORD
// Encoding: a non-zero value will tell us to skip priv ring init in tegra vbios pass

//
// Type: DWORD
// This regkey disables GENERIC_MEMORY_COMPRESSIBLE kind, which allows
// post L2 compression.
// Set value to NV_REG_STR_RM_DISABLE_POST_L2_COMPRESSION_YES to disable
//
#define NV_REG_STR_RM_DISABLE_POST_L2_COMPRESSION         "RMDisablePostL2Compression"
#define NV_REG_STR_RM_DISABLE_POST_L2_COMPRESSION_YES     0x00000001

//
// Type: DWORD
// This regkey disables RM WAR for Bug 3046774
// This reg key will only work for verification platforms used by MODS
// Set value to NV_REG_STR_RM_DISABLE_WAR_FOR_BUG_3046774_YES to disable
//
#define NV_REG_STR_RM_DISABLE_WAR_FOR_BUG_3046774        "RMDisableWarForBug3046774"
#define NV_REG_STR_RM_DISABLE_WAR_FOR_BUG_3046774_YES     0x00000001
#define NV_REG_STR_RM_DISABLE_WAR_FOR_BUG_3046774_NO      0x00000000

//
// Type: DWORD
// Encoding:
// 3 - Enable interrupt-based FECS context switch logging with bottom-half/APC fall-back
// 2 - Enable interrupt-based FECS context switch logging without bottom-half/APC fall-back
// 1 - Enable periodic FECS context switch logging
// 0 - Disable FECS context switch logging
//
// Note: Interrupt-based logging and periodic logging are mutually exclusive
//
#define NV_REG_STR_RM_CTXSW_LOG                               "RMCtxswLog"
#define NV_REG_STR_RM_CTXSW_LOG_DISABLE                       0x00000000
#define NV_REG_STR_RM_CTXSW_LOG_ENABLE                        0x00000001
#define NV_REG_STR_RM_CTXSW_LOG_ENABLE_INTR                   0x00000002
#define NV_REG_STR_RM_CTXSW_LOG_ENABLE_INTR_APC               0x00000003
#define NV_REG_STR_RM_CTXSW_LOG_DEFAULT                       NV_REG_STR_RM_CTXSW_LOG_DISABLE

//
// Type: DWORD
//
// This regkey configures the maximum number of records that can be
// processed per DPC when using interrupt-based ctxsw logging
#define NV_REG_STR_RM_CTXSW_LOG_RECORDS_PER_INTR              "RMCtxswLogMaxRecordsPerIntr"
#define NV_REG_STR_RM_CTXSW_LOG_RECORDS_PER_INTR_DEFAULT      0x30

//
// Type: DWORD
// Encoding:
// 0 - Disable more detailed debug INTR logs
// 1 - Enable more detailed debug INTR logs
//
#define NV_REG_STR_RM_INTR_DETAILED_LOGS                      "RMIntrDetailedLogs"
#define NV_REG_STR_RM_INTR_DETAILED_LOGS_DISABLE              0x00000000
#define NV_REG_STR_RM_INTR_DETAILED_LOGS_ENABLE               0x00000001


//
// TYPE DWORD
// This regkey disable VESA DisplayID 2.0 support in RM
// 0 - (default) Enable VESA Display ID 2.0 support
// 1 - Disable VESA Display ID 2.0 support
//
#define NV_REG_STR_RM_DISABLE_VESA_DISPLAYID_20              "RMDisableVESADisplayID20"
#define NV_REG_STR_RM_DISABLE_VESA_DISPLAYID_20_TRUE         0x1
#define NV_REG_STR_RM_DISABLE_VESA_DISPLAYID_20_FALSE        0x0
#define NV_REG_STR_RM_DISABLE_VESA_DISPLAYID_20_DEFAULT      0x0

//
// TYPE DWORD
// This regkey allows ECC and page retirement in SLI for the GPU
// 0 - (default)
// 1 - Allows ECC and page retirement in SLI for the GPU
//
#define NV_REG_STR_RM_ALLOW_ECC_PAGE_RETIREMENT_WITH_SLI         "RMAllowECCPageRetirementSLI"
#define NV_REG_STR_RM_ALLOW_ECC_PAGE_RETIREMENT_WITH_SLI_TRUE    0x1
#define NV_REG_STR_RM_ALLOW_ECC_PAGE_RETIREMENT_WITH_SLI_FALSE   0x0
#define NV_REG_STR_RM_ALLOW_ECC_PAGE_RETIREMENT_WITH_SLI_DEFAULT 0x0

//
// TYPE DWORD
// This regkey allows page retirement for vGPU
// 0 - Page retirement is not allowed for vGPU
// 1 - (Default) Allow page retirement for vGPU
//
#define NV_REG_STR_RM_VGPU_ALLOW_PAGE_RETIREMENT                "RMvGpuAllowPageRetirement"
#define NV_REG_STR_RM_VGPU_ALLOW_PAGE_RETIREMENT_FALSE          0x0
#define NV_REG_STR_RM_VGPU_ALLOW_PAGE_RETIREMENT_TRUE           0x1
#define NV_REG_STR_RM_VGPU_ALLOW_PAGE_RETIREMENT_DEFAULT        0x1

//
// Type: DWORD
// This regkey disables dynamic page offlining feature for MODS
// Set value to NV_REG_STR_RM_DISABLE_DYNAMIC_PAGE_OFFLINING_YES to disable
//
#define NV_REG_STR_RM_DISABLE_DYNAMIC_PAGE_OFFLINING         "RMDisableDynamicPageOfflining"
#define NV_REG_STR_RM_DISABLE_DYNAMIC_PAGE_OFFLINING_YES      0x00000001
#define NV_REG_STR_RM_DISABLE_DYNAMIC_PAGE_OFFLINING_NO       0x00000000

// TYPE DWORD
// This regkey enables NvTelemetry events.
// each bit set indicates an event to be colletcted
//
#define NV_REG_STR_RM_NVTELEMETRY_COLLECTION            "RMNvTelemetryCollection"
#define NVTELEMETRY_CLOCK_CONFIG_EVENT_ENABLE           0x0001
#define NVTELEMETRY_DEBUG_MODE_EVENT_ENABLE             0x0002
#define NVTELEMETRY_FAN_CONFIG_EVENT_ENABLE             0x0004
#define NVTELEMETRY_FRL_EVENT_ENABLE                    0x0008
#define NVTELEMETRY_GC6_FAILURE_EVENT_ENABLE            0x0010
#define NVTELEMETRY_GSYNC_EVENT_ENABLE                  0x0020
#define NVTELEMETRY_HOTPLUG_EVENT_ENABLE                0x0040
#define NVTELEMETRY_INVALID_VBIOS_SIG_EVENT_ENABLE      0x0080
#define NVTELEMETRY_NULL_EVENT_ENABLE                   0x0100
#define NVTELEMETRY_SECONDARY_BUS_RESET_EVENT_ENABLE    0x0200
#define NVTELEMETRY_TDR_EVENT_ENABLE                    0x0400
#define NVTELEMETRY_VOLT_CONFIG_EVENT_ENABLE            0x0800
#define NVTELEMETRY_COLLECTION_DEFAULT                  0x0fff

// TYPE DWORD
// This regkey generates NvTelemetry events for testing.
// it uses the same mask values as NV_REG_STR_RM_NVTELEMETRY_COLLECTION
//
#define NV_REG_STR_RM_NVTELEMETRY_TEST                  "RMNvTelemetryTest"
#define NVTELEMETRY_TEST_DEFAULT                        0x0000

//
// TYPE DWORD
// This regkey disables WAR for Bug 2061688 (WAR disables DS HWW27)
// 0 - (default)
// 1 - Enables USB-C PMU event logging in RM
//
#define NV_REG_STR_RM_DISABLE_WAR_2061688               "RMDisableWAR2061688"
#define NV_REG_STR_RM_DISABLE_WAR_2061688_DISABLE       0x0
#define NV_REG_STR_RM_DISABLE_WAR_2061688_ENABLE        0x1
#define NV_REG_STR_RM_DISABLE_WAR_2061688_DEFAULT       0x0

//
// TYPE DWORD
// This regkey allows USB-C Debug Mode logging
// 0 - (default)
// 1 - Enables USB-C PMU event logging in RM
//
#define NV_REG_STR_RM_USBC_DEBUG_MODE                   "RMUsbcDebugMode"
#define NV_REG_STR_RM_USBC_DEBUG_MODE_DISABLE           0x0
#define NV_REG_STR_RM_USBC_DEBUG_MODE_ENABLE            0x1
#define NV_REG_STR_RM_USBC_DEBUG_MODE_DEFAULT           0x0

//
// TYPE DWORD
// This regkey helps increase the size of RM reserved region.
// Exposed to clients for bug 2404337.
// Note: In GSP builds this key applies to the kernel (CPU) RM only.
//
#define NV_REG_STR_RM_INCREASE_RSVD_MEMORY_SIZE_MB             "RMIncreaseRsvdMemorySizeMB"
#define NV_REG_STR_RM_INCREASE_RSVD_MEMORY_SIZE_MB_DEFAULT     0x0

//
// Type DWORD
// Regkey to disable CLFC feature
// 0 - (default - enabled)
// 1 - Disables CLFC on the GPU
//
#define NV_REG_STR_RM_CLFC_DISABLE                      "RmCLFCDisable"
#define NV_REG_STR_RM_CLFC_DISABLE_FALSE                0x00000000
#define NV_REG_STR_RM_CLFC_DISABLE_TRUE                 0x00000001

//
// Type DWORD:
// Allow setting the SM_SPEED_SELECT/1 through regkeys. This takes effect
// if verif builds only
#define NV_REG_STR_RM_SM_OVERRIDE_SPEED_SELECT                    "RMOverrideSmSpeedSelect"
#define NV_REG_STR_RM_SM_OVERRIDE_SPEED_SELECT_1                  "RMOverrideSmSpeedSelect1"


//
// TYPE DWORD
// This regkey controls following registers:
//
// NV_PTPC_PRI_SM_SCH_MICRO_SCHED_FUSE_SLOWDOWN_JITTER_HMMA16                   20:20
// NV_PTPC_PRI_SM_SCH_MICRO_SCHED_FUSE_SLOWDOWN_JITTER_HMMA32                   21:21
// NV_PTPC_PRI_SM_SCH_MICRO_SCHED_FUSE_SLOWDOWN_JITTER_HMMAE8M10                22:22
// NV_PTPC_PRI_SM_SCH_MICRO_SCHED_FUSE_SLOWDOWN_JITTER_IMMA                     23:23
// NV_PTPC_PRI_SM_SCH_MICRO_SCHED_FUSE_SLOWDOWN_JITTER_IMMA8832                 24:24
// NV_PTPC_PRI_SM_SCH_MICRO_SCHED_FUSE_SLOWDOWN_JITTER_BMMA                     25:25
// NV_PTPC_PRI_SM_SCH_MICRO_SCHED_FUSE_SLOWDOWN_JITTER_FFMA                     26:26
// NV_PTPC_PRI_SM_SCH_MICRO_SCHED_FUSE_SLOWDOWN_JITTER_IDP4A                    27:27
//
#define NV_REG_STR_RM_SCH_MICRO_SCHED                              "RMSchMicroSched"

//
// Skip HDCP 22: This is WAR till HDCP 22 gets signed
//
#define NV_REG_STR_RM_SKIP_HDCP22_INIT                             "RMSkipHdcp22Init"
#define NV_REG_STR_RM_SKIP_HDCP22_INIT_TRUE                        1
#define NV_REG_STR_RM_SKIP_HDCP22_INI_TFALSE                       0

//
// Force UCODE encryption on NVDEC by writing UCODE_VERSION16
//
#define NV_REG_STR_RM_FORCE_NVDEC_UCODE_ENCRYPTION                 "RMForceNvdecUcodeEncryption"
#define NV_REG_STR_RM_FORCE_NVDEC_UCODE_ENCRYPTION_TRUE            1
#define NV_REG_STR_RM_FORCE_NVDEC_UCODE_ENCRYPTION_FALSE           0

//
// Run NVDEC Riscv unit tests
//
#define NV_REG_STR_RM_NVDEC_RISCV_UCODE_SELECT                     "RMNvdecUcodeSelect"
#define NV_REG_STR_RM_NVDEC_RISCV_UCODE_SELECT_VIDEO               0
#define NV_REG_STR_RM_NVDEC_RISCV_UCODE_SELECT_UT                  1
#define NV_REG_STR_RM_NVDEC_RISCV_UCODE_SELECT_DEFAULT             NV_REG_STR_RM_NVDEC_RISCV_UCODE_SELECT_VIDEO

//
// WAR: Disable SCG Fast Drain for Bug 2250268
//
#define NV_REG_STR_RM_DISABLE_SCG_FAST_DRAIN                       "RMDisableScgFastDrain"
#define NV_REG_STR_RM_DISABLE_SCG_FAST_DRAIN_TRUE                  1
#define NV_REG_STR_RM_DISABLE_SCG_FAST_DRAIN_FALSE                 0

// Allow all GPU-s to ping the SLI MCU device in a test environment.
//
#define NV_REG_STR_RM_SLI_MCU_TEST_VALIDATE                        "RMSliMcuTestValidate"
#define NV_REG_STR_RM_SLI_MCU_TEST_VALIDATE_TRUE                   1
#define NNV_REG_STR_RM_SLI_MCU_TEST_VALIDATE_FALSE                 0

#define NV_REG_STR_ILLUM_FEATURE_DISABLE                           "RMIllumFeatureDisable"
#define NV_REG_STR_ILLUM_FEATURE_DISABLE_YES                       1
#define NV_REG_STR_ILLUM_FEATURE_DISABLE_NO                        0
#define NV_REG_STR_ILLUM_FEATURE_DEFAULT                           NV_REG_STR_ILLUM_FEATURE_DISABLE_NO

#define NV_REG_STR_RM_SET_VGPU_VERSION_MIN                       "RMSetVGPUVersionMin"
//
// TYPE DWORD
// Set the minimum vGPU version enforced to support

#define NV_REG_STR_RM_SET_VGPU_VERSION_MAX                       "RMSetVGPUVersionMax"
//
// TYPE DWORD
// Set the maximum vGPU version enforced to support

//
// Type DWORD
// Set the SINT to be used by VMBus
// 0 - (default - Use SINT3)
// n - SINT to be used
//
#define NV_REG_STR_RM_OVERRIDE_SINT                                "RmOverrideSint"

//
// Type DWORD
// Enable or disable B0CC profiling allowlist and reservation checking.
//  BIT 0:0 -
//   0 - disable B0CC bypass allowlist check.
//   1 - enable B0CC bypass allowlist check.
//  BIT 1:1 -
//   0 - disable B0CC reservation check for HWPM and SMPC.
//   1 - enable B0CC reservation check for HWPM and SMPC.
//
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS                     "RmProfilerFeature"
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS_ALLOWLIST            0:0
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS_ALLOWLIST_FALSE      0x00000000
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS_ALLOWLIST_TRUE       0x00000001
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS_ALLOWLIST_DEFAULT    0x00000000
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS_RESERVATION          1:1
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS_RESERVATION_FALSE    0x00000000
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS_RESERVATION_TRUE     0x00000001
#define NV_REG_STR_RM_PROFILING_CHECK_BYPASS_RESERVATION_DEFAULT  0x00000000

//
// Type DWORD
// This regkey can be used to override the VMMU segment size value to be
// written into NV_PFB_PRI_MMU_VMMU_CFG0
//
#define NV_REG_STR_RM_VMMU                            "RmVmmuSegmentSizeOverride"
#define NV_REG_STR_RM_VMMU_SEGMENT_SIZE               2:0
#define NV_REG_STR_RM_VMMU_SEGMENT_SIZE_32MB          0x0
#define NV_REG_STR_RM_VMMU_SEGMENT_SIZE_64MB          0x1
#define NV_REG_STR_RM_VMMU_SEGMENT_SIZE_128MB         0x2
#define NV_REG_STR_RM_VMMU_SEGMENT_SIZE_256MB         0x3
#define NV_REG_STR_RM_VMMU_SEGMENT_SIZE_512MB         0x4

//
// Type DWORD
// Enable or disable display MUX feature that controls the MUX between
// iGPU and dGPU display
//  BIT 3:0 - Controls Internal MUX
//   0 - disables dynamic display MUX switches on internal display.
//   1 - enables dynamic display MUX switches on internal display.
//  BIT 7:4 - Controls External MUX
//   0 - disables dynamic display MUX switches on external display port.
//   1 - enables dynamic display MUX switches on external display port.
//
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX                     "RmDisableDisplayMux"
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX_INTERNAL            3:0
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX_INTERNAL_YES        0x1
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX_INTERNAL_NO         0x0
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX_INTERNAL_DEFAULT    0x0
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX_EXTERNAL            7:4
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX_EXTERNAL_YES        0x1
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX_EXTERNAL_NO         0x0
#define NV_REG_STR_RM_DISABLE_DISPLAY_MUX_EXTERNAL_DEFAULT    0x0

//
// Regkey to apply display MUX specific overrides.
//  BIT   0:0 - Specifies whether to use I2C or AUX to wake the panel's link decode logic.
//              This apples only to NT71872.
//          1 - Wakes the panel's link decode logic using I2C.
//          0 - Wakes the panel's link decode logic using Aux.
//  BIT   1:1 - Allows forcing dynamic mode forcefully even when SBIOS does not
//              expose the option. Used for testing purposes only.
//          1 - Forces dynamic mode during initialization of display on eDP.
//          0 - Default. Uses _MXDM to get the mode set by SBIOS during initialization.
//  BIT   2:2 - Controls whether IGPU PSR with sideband mechanism needs to be
//              enabled or disabled.
//          1 - Disable IGPU PSR with sideband.
//          0 - Default. IGPU PSR with sideband is enabled.
//  BIT   3:3 - Controls whether NVTK FSM update only should be enabled only for mux
//              switch
//          1 - Enable FSM update only for mux switch
//          0 - Default. FSM updates are enabled for premux,postmux,mux operations.
//  BIT   4:4 - Specifies whether eDP power-down should be skipped during both i2d
//              and d2i switches
//          1 - Skip eDP powerdown during both i2d and d2i switches
//          0 - Default. Skip eDP powerdown only during d2i switch
//  BIT   5:5 - Specifies whether driver should attempt to recover from SR exit failure in RM
//              by resetting panel power.
//          1 - Do nothing when SR exit fails in RM.
//          0 - Default. When SR exit fails, write to 600h
//  BIT  15:8 - Specifies the index in SW TCON database for the TCON to be emulated.
//              The index is valid only when the VALID bit (BIT 5) is set.
//          0 - When specified SW emulates a TCON that does not support sideband functionality.
//  BIT 16:16 - Indicates that the index specified at bit 4:1 is valid index to
//              be emulated. Without this bit set, TCON emulation is disabled.
//  BIT 17:17 - Allows forcing the use of non-compliant Muxes. This forcefully enables dynamic mode
//              even when the mux is not marked as compliant
//          1 - Force the use of non compliant mux
//          0 - Default. Don't use mux not marked compliant
//  BIT 18:18 - Indicates that the index specified at bit 27:20 is valid Mux database index to
//              be emulated
//  BIT 27:20 - Specifies the index in SW MUX database for the MUX to be emulated.
//              The index is valid only when the VALID bit (BIT 18) is set.
//
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES                                              "RmInternalDispMuxOverrides"
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_TRIGGER_TCON_D0_VIA_I2C                      0:0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_TRIGGER_TCON_D0_VIA_I2C_DEFAULT              0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_TRIGGER_TCON_D0_VIA_I2C_NO                   0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_TRIGGER_TCON_D0_VIA_I2C_YES                  0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_FORCE_DYNAMIC_MODE                           1:1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_FORCE_DYNAMIC_MODE_DEFAULT                   0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_FORCE_DYNAMIC_MODE_NO                        0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_FORCE_DYNAMIC_MODE_YES                       0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_DISABLE_IGPU_PSR_SB                          2:2
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_DISABLE_IGPU_PSR_SB_DEFAULT                  0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_DISABLE_IGPU_PSR_SB_NO                       0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_DISABLE_IGPU_PSR_SB_YES                      0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_ENABLE_FSM_UPDATE_ONLY_FOR_SWITCH            3:3
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_ENABLE_FSM_UPDATE_ONLY_FOR_SWITCH_DEFAULT    0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_ENABLE_FSM_UPDATE_ONLY_FOR_SWITCH_NO         0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_ENABLE_FSM_UPDATE_ONLY_FOR_SWITCH_YES        0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_ALWAYS_SKIP_EDP_POWERDOWN                    4:4
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_ALWAYS_SKIP_EDP_POWERDOWN_DEFAULT            0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_ALWAYS_SKIP_EDP_POWERDOWN_NO                 0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_ALWAYS_SKIP_EDP_POWERDOWN_YES                0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_SKIP_SR_EXIT_RECOVERY                        5:5
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_SKIP_SR_EXIT_RECOVERY_NO                     0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_SKIP_SR_EXIT_RECOVERY_YES                    0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_SKIP_SR_EXIT_RECOVERY_DEFAULT                0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_TCON_IDX_VAL                         15:8
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_TCON_IDX_VAL_SKIP_SB_SR              0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_TCON_IDX_VALID                       16:16
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_TCON_IDX_VALID_YES                   0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_TCON_IDX_VALID_NO                    0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_FORCE_MUX_COMPLIANCE                         17:17
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_FORCE_MUX_COMPLIANCE_YES                     0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_FORCE_MUX_COMPLIANCE_NO                      0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_MUX_IDX_VALID                        18:18
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_MUX_IDX_VALID_YES                    0x1
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_MUX_IDX_VALID_NO                     0x0
#define NV_REG_STR_RM_INTERNAL_DISP_MUX_OVERRIDES_EMULATE_MUX_IDX_VAL                          27:20

//
// Type DWORD
// Enables WAR for Bug 3079507 to add delay between LCD_VDD and BKL_EN during pre-mux operations.
// BIT   0:0 - Specifies whether to enable this WAR.
//         1 - Enable WAR to add delay
//         0 - Disable WAR to add delay
// BIT   8:1 - Specifies the delay (in ms) to be added between LCD_VDD and BKL_EN.
//         0 - Use the default delay set by the driver.
//
#define NV_REG_STR_RM_BUG_3079507_WAR                          "RmBug3079507War"
#define NV_REG_STR_RM_BUG_3079507_WAR_ENABLE                   0:0
#define NV_REG_STR_RM_BUG_3079507_WAR_ENABLE_DEFAULT           0x0
#define NV_REG_STR_RM_BUG_3079507_WAR_ENABLE_YES               0x1
#define NV_REG_STR_RM_BUG_3079507_WAR_ENABLE_NO                0x0
#define NV_REG_STR_RM_BUG_3079507_WAR_DELAY_MS_VAL             8:1
#define NV_REG_STR_RM_BUG_3079507_WAR_DELAY_MS_VAL_DEFAULT     0x0

//
// Type DWORD
// Modifies delay for Bug 3477023 to add delay between Mux switch and LCD_POWER down during d2i
// BIT   15:0 - Specifies the delay (in ms) to be added between mux switch and LCD Power down.
//         0 - Use the default delay set by the driver.
//
#define NV_REG_STR_RM_BUG_3477023_WAR_MS                       "RmBug3477023WarMs"
#define NV_REG_STR_RM_BUG_3477023_WAR_MS_DELAY_VAL             15:0
#define NV_REG_STR_RM_BUG_3477023_WAR_MS_DELAY_VAL_DEFAULT     0x0

//
// Type DWORD
// Changes the delay for aux to settle after mux switch
//
// BIT   8:0 - Specifies the delay (in ms) to be added after mux switch.
//         0 - Use the default delay set by the driver.
//
#define NV_REG_STR_RM_DISP_MUX_AUX_SETTLE_DELAY_OVERRIDE                       "RmDispMuxAuxSettleDelayOverride"
#define NV_REG_STR_RM_DISP_MUX_AUX_SETTLE_DELAY_OVERRIDE_MS_VAL                8:0
#define NV_REG_STR_RM_DISP_MUX_AUX_SETTLE_DELAY_OVERRIDE_MS_VAL_DEFAULT        0

//
// Type DWORD
// Write to LinkBwSet after writing to LinkRateSet for Parade mux PS8461E
// to snoop and cache the right values on Dell ARK CZN system. Bug 3239261.
// DPCD 0x100 won't be written in case of ILR.
//
// 0 - Skip writing to LinkBwSet After LinkRateSet
// 1 - Write to LinkBwSet After LinkRateSet
//
#define NV_REG_STR_RM_DISP_UPDATE_LINK_BW_SET_AFTER_LINK_RATE_SET              "RMDispUpdateLinkBwSetAfterLinkRateSet"
#define NV_REG_STR_RM_DISP_UPDATE_LINK_BW_SET_AFTER_LINK_RATE_SET_NO            0
#define NV_REG_STR_RM_DISP_UPDATE_LINK_BW_SET_AFTER_LINK_RATE_SET_YES           1

//
// Type DWORD
// Override the number of EDID blocks to read via ACPI _DDC.
//
#define NV_REG_STR_RM_OVERRIDE_ACPI_DDC_EDID_BLOCKS             "RmOverrideAcpiDDCEdidBlocks"


// TYPE Dword
// Enable vGPU migration on KVM hyperivsor.
// 1 - (Default) Enable vGPU migration on KVM
// 0 - Disable vGPU migration on KVM hypervisor
//
#define NV_REG_STR_RM_ENABLE_KVM_VGPU_MIGRATION           "RmEnableKvmVgpuMigration"
#define NV_REG_STR_RM_ENABLE_KVM_VGPU_MIGRATION_TRUE      0x00000001
#define NV_REG_STR_RM_ENABLE_KVM_VGPU_MIGRATION_FALSE     0x00000000
#define NV_REG_STR_RM_ENABLE_KVM_VGPU_MIGRATION_DEFAULT   0x00000001


// TYPE Dword
// Enable doorbell emulation on KVM hyperivsor.
// 1 - Enable doorbell emulation on KVM.
// 0 - (Default) Disable doorbell emulation on KVM.
//
#define NV_REG_STR_RM_ENABLE_KVM_DOORBELL_EMULATION          "RmEnableKvmDoorbellEmulation"
#define NV_REG_STR_RM_ENABLE_KVM_DOORBELL_EMULATION_TRUE      0x00000001
#define NV_REG_STR_RM_ENABLE_KVM_DOORBELL_EMULATION_FALSE     0x00000000
#define NV_REG_STR_RM_ENABLE_KVM_DOORBELL_EMULATION_DEFAULT   0x00000000


//
// Type DWORD
// This regkey enables a forcing DDC detection to TMDS device when the connector
// is shared by DP and TMDS.
// 0 - (default - disabled)
// 1 - Enables the forced detection.
//
#define NV_REG_STR_RM_FORCE_TMDS_DETECTION              "RmForceTMDSDetection"
#define NV_REG_STR_RM_FORCE_TMDS_DETECTION_FALSE        0x00000000
#define NV_REG_STR_RM_FORCE_TMDS_DETECTION_TRUE         0x00000001

//
// Type DWORD
// This regkey is to add delay in MS from panel power on to backlight enable by aux.
//
#define NV_REG_STR_RM_SDC_OLED_PANEL_POWER_ON_TO_BLEN_ENABLE_BY_AUX_DELAY_TIME_MS       "RmPanelPwrOnToBlenEnByAuxMs"

//
// Type DWORD
// This regkey to add delay in MS from backlight disable by aux to panel power off.
//
#define NV_REG_STR_RM_SDC_OLED_PANEL_BLEN_DISABLE_BY_AUX_TO_POWER_OFF_DELAY_TIME_MS     "RmPanelBlenDsByAuxToPwrOffMs"

//
// Type DWORD
// This regkey enables panel backlight by aux
// BIT 0:0 - BL_EN by aux using callback function
// 0 - (default - disabled)
// 1 - Enables the backlight enablement by aux support.
// BIT 1:1 - BL_EN by aux using sor sequencer during modeset
// 0 - (default - disabled)
// 1 - Enables the backlight enablement by aux support.
//
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE                            "RmEdpBlenByAuxEnable"
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE_USING_CALLBACK             0:0
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE_USING_CALLBACK_TRUE        0x1
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE_USING_CALLBACK_FALSE       0x0
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE_USING_CALLBACK_DEFAULT     0x0
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE_USING_SOR_SEQ              1:1
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE_USING_SOR_SEQ_TRUE         0x1
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE_USING_SOR_SEQ_FALSE        0x0
#define NV_REG_STR_RM_EDP_BLEN_BY_AUX_ENABLE_USING_SOR_SEQ_DEFAULT      0x0

// Type DWORD: Disables HW fault buffers on Pascal+ chips
// Encoding : 1 -- TRUE
//          : 0 -- False
//          : Default -- False
#define NV_REG_STR_RM_DISABLE_HW_FAULT_BUFFER            "RmDisableHwFaultBuffer"
#define NV_REG_STR_RM_DISABLE_HW_FAULT_BUFFER_TRUE        0x00000001
#define NV_REG_STR_RM_DISABLE_HW_FAULT_BUFFER_FALSE       0x00000000
#define NV_REG_STR_RM_DISABLE_HW_FAULT_BUFFER_DEFAULT     0x00000000

//
// Type DWORD
// This regkey disables DispMacro sequences
// 0 - Enables dispmacro (this is default value)
// 1 - Disables DispMacro
//
#define NV_REG_STR_RM_DISABLE_DISPMACRO               "RmDisableDispMacro"
#define NV_REG_STR_RM_DISABLE_DISPMACRO_TRUE          0x00000001
#define NV_REG_STR_RM_DISABLE_DISPMACRO_DEFAULT       0x00000000


//
// Type DWORD
// This regkey enables Vblank stretch feature
// 0 - Default
// 0 - Disabled
// 1 - Enables Vblank stretch feature for VRR notebooks
//
#define NV_REG_STR_RM_FEATURE_STRETCH_VBLANK          "Rm200692595"
#define NV_REG_STR_RM_FEATURE_STRETCH_VBLANK_FALSE     0x00000000
#define NV_REG_STR_RM_FEATURE_STRETCH_VBLANK_DEFAULT   0x00000000
#define NV_REG_STR_RM_FEATURE_STRETCH_VBLANK_TRUE      0x00000001

//
// Type DWORD: Configure whether RM uses infoROM or not
// Encoding : 0 -- DISABLE INFOROM
//          : 1 -- ENABLE INFOROM
//          Default - Enable
//
// This regkey is only consumed for non-release drivers and MODS
//
#define NV_REG_STR_RM_ENABLE_INFOROM           "RmEnableInforom"
#define NV_REG_STR_RM_ENABLE_INFOROM_FALSE     0x00000000
#define NV_REG_STR_RM_ENABLE_INFOROM_TRUE      0x00000001

//
// Type DWORD: Disables VBlank MSCG on Ampere+
// Disable MSCG in VBlank             : 1 -- True
// Default                            : 0 -- False
// This regkey is going to be deprecated. Use 'RmMscgLowFpsWarConfig' instead.
//
#define NV_REG_STR_RM_DISABLE_VBLANK_MSCG               "RmDisableVblankMscg"
#define NV_REG_STR_RM_DISABLE_VBLANK_MSCG_TRUE          0x00000001
#define NV_REG_STR_RM_DISABLE_VBLANK_MSCG_FALSE         0x00000000
#define NV_REG_STR_RM_DISABLE_VBLANK_MSCG_DEFAULT       0x00000000

//
// Type DWORD: MSCG Low FPS WAR configuration on Ampere(Verif only)
// Refer Bug 200637376 for more details on WAR
// Note- When both 'RmDisableVblankMscg' and 'RmMscgLowFpsWarConfig' are set,
// 'RmMscgLowFpsWarConfig' takes precedence.
//
// Bit 0 : Disable MSCG Low FPS WAR
// Bit 1 : Disable interrupt routing of LAST_DATA
//         to PMU for MSCG Low FPS WAR. Only applicable
//         when WAR is enabled
//
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR                                  "RmMscgLowFpsWarConfig"
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR_DISABLE                          0:0
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR_DISABLE_DEFAULT                  (0x00000000)
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR_DISABLE_FALSE                    (0x00000000)
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR_DISABLE_TRUE                     (0x00000001)
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR_DISABLE_INTR_ROUTING             1:1
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR_DISABLE_INTR_ROUTING_DEFAULT     (0x00000000)
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR_DISABLE_INTR_ROUTING_FALSE       (0x00000000)
#define NV_REG_STR_RM_MSCG_LOW_FPS_WAR_DISABLE_INTR_ROUTING_TRUE        (0x00000001)

//
// Type DWORD
// This regkey is used to set the RISCV core dump buffer size
// Default size is 8 KB
//
#define NV_REG_STR_RM_RISCV_CORE_DUMP_SIZE                  "RmRiscvCoreSize"
#define NV_REG_STR_RM_RISCV_CORE_DUMP_SIZE_DEFAULT          8192
#define NV_REG_STR_RM_RISCV_CORE_DUMP_SIZE_UNINITIALIZED    0

//
// Bug http://nvbugs/2682961
// TYPE DWORD: Enable WDDM interlraving + timeslice modification  codepath for GFN
// Enable the new sched policy code path              1    True
// Default                                            0    False
// TODO: This reg key should have different switches to modify timeslices
//
#define NV_REG_STR_RM_ENABLE_WDDM_INTERLEAVING_POLICY             "RmEnableWDDMInterleaving"
#define NV_REG_STR_RM_ENABLE_WDDM_INTERLEAVING_POLICY_ENABLE      1
#define NV_REG_STR_RM_ENABLE_WDDM_INTERLEAVING_POLICY_DISABLE     0

//
// Type DWORD:
// This regkey enables WAR for GA100 HW Bug 2702359: Vulkun hang due to GR timing issue with uGpu
//
// Encoding : 0 -- disable WAR
//          : 1 -- enable WAR
//
//
#define NV_REG_STR_RM_ENABLE_WAR_2702359        "RmEnableWar2702359"
#define NV_REG_STR_RM_ENABLE_WAR_2702359_FALSE      0x00000000
#define NV_REG_STR_RM_ENABLE_WAR_2702359_TRUE       0x00000001

//
// Type DWORD:
// This regkey allows picking ugpu to enables WAR for GA100 HW Bug 2702359: Vulkun hang due to GR timing issue with uGpu
// Useful for Mods testing
//
// Encoding : 0 -- pick ugpu 0
//          : 1 -- pick upgpu 1
//          : 2 -- flip the one picked by the WAR
//
#define NV_REG_STR_RM_WAR_2702359_PICK_UGPU        "RmWar2702359PickUgpu"
#define NV_REG_STR_RM_WAR_2702359_PICK_UGPU_0      0x00000000
#define NV_REG_STR_RM_WAR_2702359_PICK_UGPU_1      0x00000001
#define NV_REG_STR_RM_WAR_2702359_PICK_UGPU_FLIP   0x00000002


//
// Type DWORD: Force enable Display MSCG after modeset in testing environment
//             when IMP is disabled. Test is supposed to program all MSCG Watermarks
//             when this regkey is set. Underflows may be seen if watermark programming
//             is incorrect.
//
// Encoding : 0 -- Disable Display MSCG after modeset
//          : 1 -- Enable Display MSCG after modeset
//          Default - Disable
//
// This regkey should only be used for simulation testing
//
#define NV_REG_STR_RM_FORCE_ENABLE_DISPLAY_MSCG          "RmForceEnableDisplayMscg"
#define NV_REG_STR_RM_FORCE_ENABLE_DISPLAY_MSCG_FALSE    0x00000000
#define NV_REG_STR_RM_FORCE_ENABLE_DISPLAY_MSCG_TRUE     0x00000001

//
// Type DWORD: Force enable DIFR after modeset in testing environment
//             when IMP is disabled. Test is supposed to program all DIFR Watermarks
//             when this regkey is set. Underflows may be seen if watermark programming
//             is incorrect.
//
// Encoding : 0 -- Disable Display DIFR after modeset
//          : 1 -- Enable Display DIFR after modeset
//          Default - Disable
//
// This regkey should only be used for simulation testing
//
#define NV_REG_STR_RM_FORCE_ENABLE_DIFR          "RmForceEnableDIFR"
#define NV_REG_STR_RM_FORCE_ENABLE_DIFR_FALSE    0x00000000
#define NV_REG_STR_RM_FORCE_ENABLE_DIFR_TRUE     0x00000001

//
// Type DWORD: Force EDID read on EMU. It enables I2C and removes static
//             EDID on EMU. Only effective on Emulation. Also make sure to
//             load EDID file on EMU when this regkey is used. Only use this
//             to check any EDID specific feature as it slows down EMU
//             a lot. Don't use to just Enable HDMI, better option is to force
//             HDMI_EN fuse on EMU to save the time. See Bug 2634173
//
// Encoding : 0 -- Disable EDID read on EMU
//          : 1 -- Enable EDID read on EMU
//          Default - Disable
//
// This regkey should only be used for emulation
//
#define NV_REG_STR_RM_ENABLE_EDID_READ_ON_EMU          "RmEnableEdidReadOnEmu"
#define NV_REG_STR_RM_ENABLE_EDID_READ_ON_EMU_FALSE    0x00000000
#define NV_REG_STR_RM_ENABLE_EDID_READ_ON_EMU_TRUE     0x00000001

//
// Type DWORD
// This regkey routes MODS to use the V2 VAB interface
// 0 - Default
// 0 - Disabled
// 1 - Enables MODS to use
//
#define NV_REG_STR_RM_ROUTE_MODS_TO_VAB_V2          "RmEnableModsVABV2"
#define NV_REG_STR_RM_ROUTE_MODS_TO_VAB_V2_FALSE     0x00000000
#define NV_REG_STR_RM_ROUTE_MODS_TO_VAB_V2_DEFAULT   0x00000000
#define NV_REG_STR_RM_ROUTE_MODS_TO_VAB_V2_TRUE      0x00000001


//
// Type DWORD
//
// This regkey controls whether the PCIe relaxed ordering bit gets set in all
// outbound TLPs from the device or devices in question by controlling the
// NV_XVE_PRIV_MISC_1_CYA_WRITES_RELAXED_ORDERING bit.
//
// This can be used as a per-device regkey or not, in which case the setting
// will apply to all devices. If this key is supplied as both a per-device and
// non-per-device regkey, the non-per-device option will apply first to all
// devices, and then the per-device key settings will apply, overriding the
// settings for the relevant devices.
//
// Encoding : 0 - Disable PCIe Relaxed Ordering TLP header bit setting. This is
//                the default option.
//            1 - Try to enable PCIe Relaxed Ordering TLP header bit setting.
//                Traverses the PCIe topology and only enables the header bit if
//                it is safe to do so, with regard to all devices that could be
//                affected.
//            2 - Forcibly enable PCIe Relaxed Ordering TLP header bit setting.
//                Explicitly ignores the compatibility of the PCIe topology
//                around the device or devices in question.
//
#define NV_REG_STR_RM_SET_PCIE_TLP_RELAXED_ORDERING               "RmSetPCIERelaxedOrdering"
#define NV_REG_STR_RM_SET_PCIE_TLP_RELAXED_ORDERING_DEFAULT       0x00000000
#define NV_REG_STR_RM_SET_PCIE_TLP_RELAXED_ORDERING_DISABLE       0x00000000
#define NV_REG_STR_RM_SET_PCIE_TLP_RELAXED_ORDERING_ENABLE        0x00000001
#define NV_REG_STR_RM_SET_PCIE_TLP_RELAXED_ORDERING_FORCE_ENABLE  0x00000002

// Type DWORD: Indicates if enabling video event tracing
//
// 0    - Disables Video event trace usage (default)
// > 0  - Enable video event trace and define sizes for different buffers
//        bit 0  - 15: sizes of the hardware staging buffer in 4K pages
//        bit 16 - 31: sizes of the event buffer in 4K pages
//        Example: 0x01000008 means a 32K staging buffer and a 1M event buffer.
#define NV_REG_STR_RM_VIDEO_EVENT_TRACE                                 "RmVideoEventTrace"
#define NV_REG_STR_RM_VIDEO_EVENT_TRACE_DISABLED                        (0x00000000)
#define NV_REG_STR_RM_VIDEO_EVENT_TRACE_STAGING_BUFFER_SIZE_IN_4k       15:0
#define NV_REG_STR_RM_VIDEO_EVENT_TRACE_EVENT_BUFFER_SIZE_IN_4k         31:16

//
// BOOT from HS regkey.
// Per binary 2 bits
//
#define NV_REG_STR_RM_BOOT_FROM_HS                                      "RmBootFromHs"

#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_AHESASC                          1:0
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_AHESASC_DEFAULT                  0x00000000
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_AHESASC_ENABLED                  0x00000001
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_AHESASC_DISABLED                 0x00000003

#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_ASB                              3:2
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_ASB_DEFAULT                      0x00000000
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_ASB_ENABLED                      0x00000001
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_ASB_DISABLED                     0x00000003

#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_UNLOAD                           5:4
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_UNLOAD_DEFAULT                   0x00000000
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_UNLOAD_ENABLED                   0x00000001
#define NV_REG_STR_RM_BOOT_FROM_HS_ACR_UNLOAD_DISABLED                  0x00000003

#define NV_REG_STR_RM_BOOT_FROM_HS_NVDEC_SCRUBBER                       7:6
#define NV_REG_STR_RM_BOOT_FROM_HS_NVDEC_SCRUBBER_DEFAULT               0x00000000
#define NV_REG_STR_RM_BOOT_FROM_HS_NVDEC_SCRUBBER_ENABLED               0x00000001
#define NV_REG_STR_RM_BOOT_FROM_HS_NVDEC_SCRUBBER_DISABLED              0x00000003

#define NV_REG_STR_RM_BOOT_FROM_HS_NVDEC                                9:8
#define NV_REG_STR_RM_BOOT_FROM_HS_NVDEC_DEFAULT                        0x00000000
#define NV_REG_STR_RM_BOOT_FROM_HS_NVDEC_ENABLED                        0x00000001
#define NV_REG_STR_RM_BOOT_FROM_HS_NVDEC_DISABLED                       0x00000003

#define NV_REG_STR_RM_BOOT_FROM_HS_SEC2                                 11:10
#define NV_REG_STR_RM_BOOT_FROM_HS_SEC2_DEFAULT                         0x00000000
#define NV_REG_STR_RM_BOOT_FROM_HS_SEC2_ENABLED                         0x00000001
#define NV_REG_STR_RM_BOOT_FROM_HS_SEC2_DISABLED                        0x00000003

#define NV_REG_STR_RM_BOOT_FROM_HS_GSP                                  13:12
#define NV_REG_STR_RM_BOOT_FROM_HS_GSP_DEFAULT                          0x00000000
#define NV_REG_STR_RM_BOOT_FROM_HS_GSP_ENABLED                          0x00000001
#define NV_REG_STR_RM_BOOT_FROM_HS_GSP_DISABLED                         0x00000003

// Enables alternative configuration of the register NV_XVE_PRIV_XV_TIMEOUT to allow
// completion timeout settings to be adjusted.
//
// Encoding : 1 - Leave the timeout override enabled.
//            0 - Disable the timeout override.
//            Default - (1) Timeout override is enabled.
//
#define NV_REG_STR_RM_XV_TIMEOUT_OVERRIDE                "RmXvTimeoutOverride"
#define NV_REG_STR_RM_XV_TIMEOUT_OVERRIDE_ENABLED        0x00000001
#define NV_REG_STR_RM_XV_TIMEOUT_OVERRIDE_DISABLED       0x00000000
#define NV_REG_STR_RM_XV_TIMEOUT_OVERRIDE_DEFAULT        NV_REG_STR_RM_XV_TIMEOUT_OVERRIDE_ENABLED

//
// Type DWORD
//
// Enable ILR support.
// Encoding : 1 - Enable ILR support.
//            0 - Disable ILR support
//            Default - (0) ILR is not supported by default
//
#define NV_REG_STR_RM_ENABLE_INTERMEDIATE_LINK_RATES                "RmEnableIntermediateLinkRates"
#define NV_REG_STR_RM_ENABLE_INTERMEDIATE_LINK_RATES_NO             (0x00000000)
#define NV_REG_STR_RM_ENABLE_INTERMEDIATE_LINK_RATES_YES            (0x00000001)
#define NV_REG_STR_RM_ENABLE_INTERMEDIATE_LINK_RATES_DEFAULT        NV_REG_STR_RM_ENABLE_INTERMEDIATE_LINK_RATES_NO

//
// Type DWORD
//
// Set a cap on the number of TPCs used for graphics workloads. RM will use the
// minimum of the post-floorsweeping configuration, VBIOS setting and this registry
// override as the final setting.
//
// This only applies to chips that support compute only GPC/TPC (Hopper+).
//
#define NV_REG_STR_RM_TPCS_USEABLE_BY_GFX               "RmTpcsUseableByGfx"

//
// Type DWORD
//
// Configure power up/down delay values in us for a given voltage device
// specified by voltage device index.
//
//
#define NV_REG_STR_RM_VOLT_DEV_POWER_UP_DELAY_US           "RmVoltPowerUpDelayUsOverride"
#define NV_REG_STR_RM_VOLT_DEV_POWER_UP_DELAY_US_VAL             15:0
#define NV_REG_STR_RM_VOLT_DEV_POWER_UP_DELAY_US_VAL_DEFAULT     (0)
#define NV_REG_STR_RM_VOLT_DEV_POWER_UP_DELAY_US_IDX             23:16
#define NV_REG_STR_RM_VOLT_DEV_POWER_UP_DELAY_US_IDX_DEFAULT     (0)
#define NV_REG_STR_RM_VOLT_DEV_POWER_UP_DELAY_US_RSVD            31:24

#define NV_REG_STR_RM_VOLT_DEV_POWER_DOWN_DELAY_US           "RmVoltPowerDownDelayUsOverride"
#define NV_REG_STR_RM_VOLT_DEV_POWER_DOWN_DELAY_US_VAL             15:0
#define NV_REG_STR_RM_VOLT_DEV_POWER_DOWN_DELAY_US_VAL_DEFAULT     (0)
#define NV_REG_STR_RM_VOLT_DEV_POWER_DOWN_DELAY_US_IDX             23:16
#define NV_REG_STR_RM_VOLT_DEV_POWER_DOWN_DELAY_US_IDX_DEFAULT     (0)
#define NV_REG_STR_RM_VOLT_DEV_POWER_DOWN_DELAY_US_RSVD            31:24

// Type DWORD
// Encoding -- Numeric value (unit is ms)
// Override the default debounce time for HDMI 2.1 FRL compliance test equipment (TE).
#define NV_REG_STR_HDMI_FRL_TE_DEBOUNCE_TIME                    "RMHdmiFrlTeDebounceTime"

//
// Disable clkreq or deepl1 using this regkey
// To disable clkreq and deepl1 set RM2779240 = 0x5
//
#define NV_REG_STR_RM_2779240                           "RM2779240"
#define NV_REG_STR_RM_2779240_CLKREQ                    1:0
#define NV_REG_STR_RM_2779240_CLKREQ_DEFAULT            0X00000000
#define NV_REG_STR_RM_2779240_CLKREQ_DISABLE            0X00000001
#define NV_REG_STR_RM_2779240_DEEP_L1                   3:2
#define NV_REG_STR_RM_2779240_DEEP_L1_DEFAULT           0X00000000
#define NV_REG_STR_RM_2779240_DEEP_L1_DISABLE           0X00000001

//
// Type DWORD
//
// Allow overriding of Titan fuse to disable titan capability by MODS if
// disable_sw_override fuses are not blown and the board is an internal SKU.
//
// Encoding : 1 - Allow override of titan fuse
//            0 - Respect the value of titan fuse
//            Default - (0) Override is not supported by default
//
#define NV_REG_STR_RM_DISABLE_TITAN_CAPABILITY             "RmDisableTitanCapability"
#define NV_REG_STR_RM_DISABLE_TITAN_CAPABILITY_NO          (0x00000000)
#define NV_REG_STR_RM_DISABLE_TITAN_CAPABILITY_YES         (0x00000001)
#define NV_REG_STR_RM_DISABLE_TITAN_CAPABILITY_DEFAULT     NV_REG_STR_RM_DISABLE_TITAN_CAPABILITY_NO

// Enable plugin logs in ftrace buffer.
// 0 - Default
// 0 - Disabled
// 1 - Enabled
#define NV_REG_STR_RM_ENABLE_PLUGIN_IN_FTRACE_BUFFER                "RmEnablePluginFtrace"
#define NV_REG_STR_RM_ENABLE_PLUGIN_IN_FTRACE_BUFFER_ENABLED        0x00000001
#define NV_REG_STR_RM_ENABLE_PLUGIN_IN_FTRACE_BUFFER_DISABLED       0x00000000
#define NV_REG_STR_RM_ENABLE_PLUGIN_IN_FTRACE_BUFFER_DEFAULT        0x00000000

//
// Disable 64KB BAR1 mappings
// 0 - Disable 64KB BAR1 mappings
// 1 - Force/Enable 64KB BAR1 mappings
//
#define NV_REG_STR_RM_64KB_BAR1_MAPPINGS                            "RM64KBBAR1Mappings"
#define NV_REG_STR_RM_64KB_BAR1_MAPPINGS_ENABLED                    0x00000001
#define NV_REG_STR_RM_64KB_BAR1_MAPPINGS_DISABLED                   0x00000000

// TYPE Dword
// Enable sysmem dirty page tracking for Full SRIOV vGPU
// 1 - (Default) Enable sysmem dirty page tracking
// 0 - Disable sysmem dirty page tracking
// Allow the user to disable sysmem dirty page tracking. This is not expected to ever
// be set in the field, only for internal testing.
//
#define NV_REG_STR_RM_ENABLE_VGPU_SRIOV_SYSMEM_DIRTY_PAGE_TRACKING           "RmEnableVgpuSriovSysmemDirtyPageTracking"
#define NV_REG_STR_RM_ENABLE_VGPU_SRIOV_SYSMEM_DIRTY_PAGE_TRACKING_TRUE      0x00000001
#define NV_REG_STR_RM_ENABLE_VGPU_SRIOV_SYSMEM_DIRTY_PAGE_TRACKING_FALSE     0x00000000
#define NV_REG_STR_RM_ENABLE_VGPU_SRIOV_SYSMEM_DIRTY_PAGE_TRACKING_DEFAULT   0x00000001

// Enables posting SMBPBI events into the SMBPBI status register.
// This regkey overrides the SMBPBI_EVENT_POSTING_ENABLED property,
// which is set for Ampere+ and reset for earlier GPUs
// This is a WAR for bug 200626617.
//
// Encoding: 0 - disable event posting
// Encoding: 1 - enable event posting
#define NV_REG_STR_RM_SMBPBI_EVENT_POSTING_OVERRIDE         "RmSmbpbiEventPostingOverride"
#define NV_REG_STR_RM_SMBPBI_EVENT_POSTING_OVERRIDE_DISABLE 0x00000000
#define NV_REG_STR_RM_SMBPBI_EVENT_POSTING_OVERRIDE_ENABLE  0x00000001

#if (defined(RMCFG_MODULE_CONF_COMPUTE) && RMCFG_MODULE_CONF_COMPUTE)
//
// Add the conditions to exclude these macros from Orin build, as CONFIDENTIAL_COMPUTE
// is a guardword. The #if could be removed when nvRmReg.h file is trimmed from Orin build.
//
// Enable Disable Confidential Compute and control its various modes of operation
// 0 - Feature Disable
// 1 - Feature Enable
//
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE                              "RmConfidentialCompute"
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_ENABLED                      0:0
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_ENABLED_NO                   0x00000000
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_ENABLED_YES                  0x00000001
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_DEV_MODE_ENABLED             1:1
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_DEV_MODE_ENABLED_NO          0x00000000
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_DEV_MODE_ENABLED_YES         0x00000001
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_GPUS_READY_CHECK             2:2
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_GPUS_READY_CHECK_DISABLED    0x00000000
#define NV_REG_STR_RM_CONFIDENTIAL_COMPUTE_GPUS_READY_CHECK_ENABLED     0x00000001

#define NV_REG_STR_RM_CONF_COMPUTE_EARLY_INIT                            "RmConfComputeEarlyInit"
#define NV_REG_STR_RM_CONF_COMPUTE_EARLY_INIT_DISABLED                   0x00000000
#define NV_REG_STR_RM_CONF_COMPUTE_EARLY_INIT_ENABLED                    0x00000001

//
// Enable/disable SPDM feature in Confidential Compute. SPDM-capable profiles
// may not be loaded by default. This regkey allows us to override the default
// behavior and force SPDM to enabled/disabled.
// 
// 0 - Feature disable
// 1 - Feature enable
//
#define NV_REG_STR_RM_CONF_COMPUTE_SPDM_POLICY                            "RmConfComputeSpdmPolicy"
#define NV_REG_STR_RM_CONF_COMPUTE_SPDM_POLICY_ENABLED                    0:0
#define NV_REG_STR_RM_CONF_COMPUTE_SPDM_POLICY_ENABLED_NO                 0x00000000
#define NV_REG_STR_RM_CONF_COMPUTE_SPDM_POLICY_ENABLED_YES                0x00000001
#endif // (defined(RMCFG_MODULE_CONF_COMPUTE) && RMCFG_MODULE_CONF_COMPUTE)

//
// Enable Local EGM HW verification using RM/SW stack.
// Must be specified with a peerID corresponding to local EGM
//
#define NV_REG_STR_RM_ENABLE_LOCAL_EGM_PEER_ID            "RMEnableLocalEgmPeerId"


//
// Allows pages that are aligned to large page boundaries to be mapped as large
// pages.
//
#define NV_REG_STR_RM_ALLOW_SYSMEM_LARGE_PAGES "RMAllowSysmemLargePages"

//
// Enable Destination side FLA translation XID.
// 0 - (Default) Disable destination side FLA translation XID reporting
// 1 - Enable destination side FLA translation XID reporting
//
#define NV_REG_STR_RM_ENABLE_FLA_TRANSLATION_XID                "RmEnableFlaXid"
#define NV_REG_STR_RM_ENABLE_FLA_TRANSLATION_XID_ENABLED         0x00000001
#define NV_REG_STR_RM_ENABLE_FLA_TRANSLATION_XID_DISABLED        0x00000000
#define NV_REG_STR_RM_ENABLE_FLA_TRANSLATION_XID_DEFAULT         0x00000000

//
// Type DWORD:
// This regkey disables WAR for GA10x HW Bug 3275257: HDMI 2.1 FRL ACR issue
// CTS HFR1-46 (Source Audio Encoding (FRL Mode) - Audio Clock Generation) fail
//
// Encoding : 1 - disable WAR
//          : 0 - enable WAR
//
//
#define NV_REG_STR_RM_WAR_BUG_3275257_DISABLE           "DisableRmWar3275257"
#define NV_REG_STR_RM_WAR_BUG_3275257_DISABLE_FALSE      0x00000000
#define NV_REG_STR_RM_WAR_BUG_3275257_DISABLE_TRUE       0x00000001
#define NV_REG_STR_RM_WAR_BUG_3275257_DISABLE_DEFAULT    NV_REG_STR_RM_WAR_BUG_3275257_DISABLE_FALSE

//
// Type DWORD:
// This regkey is needed for perf runs and will set following PRIs as per the needs of the perf team-
// 1. Disables CRD_COND_READ and
// 2. Disables PLC_EXCLUDE_CROP
//
// Encoding : 1 - enable perf programming
//          : 0 - disable, and default to driver behavior
//
#define NV_REG_STR_RM_ENABLE_GA10X_ARCH_PERF_MODE              "RMEnableGA10XArchPerfMode"
#define NV_REG_STR_RM_ENABLE_GA10X_ARCH_PERF_MODE_DISABLED     0x00000000
#define NV_REG_STR_RM_ENABLE_GA10X_ARCH_PERF_MODE_ENABLED      0x00000001
#define NV_REG_STR_RM_ENABLE_GA10X_ARCH_PERF_MODE_DEFAULT      NV_REG_STR_RM_ENABLE_GA10X_ARCH_PERF_MODE_DISABLED

//
// Type DWORD
// This regkey overrides the C2C links in non-simulation platforms(emulation
// and silicon) only.
// Encoding - Bitmask of the C2C links that are up. zero means no C2C links to
// be used.
//
#define NV_REG_STR_RM_OVERRIDE_C2C_LINKS        "RmOverrideC2CLinks"

//
// Enable SW Algorithm to program the HSHNVLMUX register for NVLink peers on simulation platforms
// On silicon, this algorithm is ON by default, while on simulation it needs to be OFF by default
//
// Encoding : 1 - enable SW algorithm, on simulation platforms
//          : 0 - disable SW algorithm
//
#define NV_REG_STR_RM_ENABLE_HSHNVLMUX_SW_ALGORITHM             "RMEnableHshnvlmuxSwAlgorithm"
#define NV_REG_STR_RM_ENABLE_HSHNVLMUX_SW_ALGORITHM_DISABLE     0x00000000
#define NV_REG_STR_RM_ENABLE_HSHNVLMUX_SW_ALGORITHM_ENABLE      0x00000001
#define NV_REG_STR_RM_ENABLE_HSHNVLMUX_SW_ALGORITHM_DEFAULT     NV_REG_STR_RM_ENABLE_HSHNVLMUX_SW_ALGORITHM_DISABLE

// Pass the protected memory (VPR/CPR) size in MBs for APM and Hopper CC
#define NV_REG_STR_RM_PROTECTED_MEMORY_SIZE_IN_MB            "RmProtectedMemorySizeInMB"

//
// TYPE Dword
// Determines whether or not to apply 9.8 sec thread timeout for power
// transition on Windows.
// Encoding : 1 - Use 9.8 sec
//          : 0 - Use 1.8 sec (default)
//
#define NV_REG_STR_BUG_3289265_WAR                            "RMBug3289265War"
#define NV_REG_STR_BUG_3289265_WAR_ENABLE                     0x00000001
#define NV_REG_STR_BUG_3289265_WAR_DISABLE                    0x00000000
#define NV_REG_STR_BUG_3289265_WAR_DEFAULT                    NV_REG_STR_BUG_3289265_WAR_DISABLE

//
// TYPE Dword
// Specify thread timeout in ms for power transition on Windows.
//
#define NV_REG_STR_PWR_TRANSITION_THREAD_TIMEOUT_MS           "RMPwrTransThreadTimeoutMs"

// If the CPU Firmware (e.g. UEFI) on self-hosted platforms is enabled to handle the FB
// ECC interrupt, then set this key to enable related code-paths in RM. This is
// IP_SENSITIVE code expected to run on Physical-RM only.
//
// Encoding: 1 - CPU Firmware is enabled to handle the FB ECC interrupt
//           0 - CPU Firmware is not enabled to handle the FB ECC interrupt
//
#define NV_REG_STR_RM_CPU_FIRMWARE_HANDLES_FBECC_INTR           "RmCpuFirmwareHandlesFbEccIntr"
#define NV_REG_STR_RM_CPU_FIRMWARE_HANDLES_FBECC_INTR_DISABLE   0x0
#define NV_REG_STR_RM_CPU_FIRMWARE_HANDLES_FBECC_INTR_ENABLE    0x1
#define NV_REG_STR_RM_CPU_FIRMWARE_HANDLES_FBECC_INTR_DEFAULT   NV_REG_STR_RM_CPU_FIRMWARE_HANDLES_FBECC_INTR_DISABLE

//
// Type DWORD
// This regkey controls the relaxed ordering mode for the GPU. Applicable to Hopper+.
// Description of upstream (atomics, reads, writes) modes from bug 2883106:
// The modes are:
//   1. FORCE_RO_0 -> Force RO=0 for all requests of that REQ_TYPE. This is equivalant to pre-Hopper behavior.
//   2. FORCE_RO_1 -> Force RO=1 for all requests of that REQ_TYPE.
//   3. SET_RO_FROM_STRONG -> Set RO based on the strong attribute of the request of that REQ_TYPE.
//
// For SET_RO_FROM_STRONG mode, FBHUB sets RO for the PCIe request based on the strong attribute of the memory request.
// strong==1 -> RO=0 (Request has to follow strict PCIe ordering)
// strong==0 -> RO=1 (Request can take advantage of relaxed PCIe ordering)
//
// No (current) use for setting downstream modes. Provided for future flexibility.
//
// The regkey EnablePCIERelaxedOrderingMode sets the ordering mode to be FORCE_RO_1 globally - this behavior
// will be mantained from previous generations. If more granular control is desired, this regkey should be used instead.
//
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE                            "RmFbhubRelaxedOrderingOverride"
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_WRITES                     1:0
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_WRITES_FORCE_RO_0          0x00000000
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_WRITES_FORCE_RO_1          0x00000001
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_WRITES_SET_RO_FROM_STRONG  0x00000002
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_WRITES_DEFAULT             0x00000003
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_READS                      3:2
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_READS_FORCE_RO_0           0x00000000
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_READS_FORCE_RO_1           0x00000001
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_READS_SET_RO_FROM_STRONG   0x00000002
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_READS_DEFAULT              0x00000003
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_ATOMICS                    5:4
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_ATOMICS_FORCE_RO_0         0x00000000
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_ATOMICS_FORCE_RO_1         0x00000001
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_ATOMICS_SET_RO_FROM_STRONG 0x00000002
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_ATOMICS_DEFAULT            0x00000003
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_WRITES          7:6
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_WRITES_SRC      0x00000000
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_WRITES_ALL      0x00000001
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_WRITES_NONE     0x00000002
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_WRITES_DEFAULT  0x00000003
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_CPLS            10:8
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_CPLS_ALLOWS_SRC 0x00000000
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_CPLS_ALLOWS_SRC_L2B_ONLY 0x00000001
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_CPLS_ALLOWS_SRC_L2R_ONLY 0x00000002
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_CPLS_ALLOWS_NONE         0x00000003
#define NV_REG_STR_RM_FBHUB_RELAXED_ORDERING_MODE_DOWNSTREAM_CPLS_DEFAULT    0x00000004

//
// TYPE Dword
// Determines whether or not to emulate VF MMU TLB Invalidation register range
// Encoding : 1 - Emulate register range (Default)
//          : 0 - Do not emulate register range.
//
#define NV_REG_STR_BUG_3007008_EMULATE_VF_MMU_TLB_INVALIDATE            "RMBug3007008EmulateVfMmuTlbInvalidate"
#define NV_REG_STR_BUG_3007008_EMULATE_VF_MMU_TLB_INVALIDATE_ENABLE     0x00000001
#define NV_REG_STR_BUG_3007008_EMULATE_VF_MMU_TLB_INVALIDATE_DISABLE    0x00000000
#define NV_REG_STR_BUG_3007008_EMULATE_VF_MMU_TLB_INVALIDATE_DEFAULT    NV_REG_STR_BUG_3007008_EMULATE_VF_MMU_TLB_INVALIDATE_ENABLE

#ifdef NV_VERIF_FEATURES
// Type: Dword
// This regkey controls allocating HW runlist buffers from contiguous memory for WPR testing
// See bug 3348271
// _NO  - alloc runlists according to default policy
// _YES - alloc runlists from a large contiguous reserved buffer
//
#define NV_REG_STR_RM_ALLOC_CONTIGUOUS_RUNLISTS             "RMVerifAllocContiguousRunlists"
#define NV_REG_STR_RM_ALLOC_CONTIGUOUS_RUNLISTS_NO          0x00000000
#define NV_REG_STR_RM_ALLOC_CONTIGUOUS_RUNLISTS_YES         0x00000001
#define NV_REG_STR_RM_ALLOC_CONTIGUOUS_RUNLISTS_DEFAULT     NV_REG_STR_RM_ALLOC_CONTIGUOUS_RUNLISTS_NO
#endif // NV_VERIF_FEATURES

//
// Type DWORD
// Numa allocations allow for skipping reclaim less than a specified memory occupancy threshold.
// This override allows for its tuning, value supplied here shall indicate a percent of free memory
// less than which GFP_RECLAIM flag will be dropped.
//
#define NV_REG_STR_RM_NUMA_ALLOC_SKIP_RECLAIM_PERCENTAGE     "RmNumaAllocSkipReclaimPercent"
#define NV_REG_STR_RM_NUMA_ALLOC_SKIP_RECLAIM_PERCENTAGE_DEFAULT    4
#define NV_REG_STR_RM_NUMA_ALLOC_SKIP_RECLAIM_PERCENTAGE_DISABLED   0
#define NV_REG_STR_RM_NUMA_ALLOC_SKIP_RECLAIM_PERCENTAGE_MIN        0
#define NV_REG_STR_RM_NUMA_ALLOC_SKIP_RECLAIM_PERCENTAGE_MAX      100

//
// TYPE Dword
// If there is an ECC error in the write-protected ucode, this regkey will swap
// the write-protected ACR region with another ACR region
// Encoding : 1 - Swap the ACR regions
//          : 0 - Don't swap the ACR regions
//
#define NV_REG_STR_RM_SWAP_ACR_REGIONS                              "RmSwapAcrRegions"
#define NV_REG_STR_RM_SWAP_ACR_REGIONS_DISABLE                      0x00000000
#define NV_REG_STR_RM_SWAP_ACR_REGIONS_ENABLE                       0x00000001
#define NV_REG_STR_RM_SWAP_ACR_REGIONS_DEFAULT                      NV_REG_STR_RM_SWAP_ACR_REGIONS_DISABLE

//
// TYPE Dword
// If this regkey is set, then we assert in RM on posted register
// access errors from specific sources if the corresponding bit is set
// Encoding : 1 - Enable RM assert on posted register access if the bit for the source is set
//          : 0 - Disable RM assert on posted register access if the bit for the source is not set
//
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS                "RmAssertOnPostedRegAccessErrors"
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_PMU               0:0
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_PMU_DISABLE       0x00000000
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_PMU_ENABLE        0x00000001
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_I2C               1:1
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_I2C_DISABLE       0x00000000
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_I2C_ENABLE        0x00000001
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_FBFALCON          2:2
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_FBFALCON_DISABLE  0x00000000
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_FBFALCON_ENABLE   0x00000001
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_SEC2              3:3
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_SEC2_DISABLE      0x00000000
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_SEC2_ENABLE       0x00000001
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_GSP               4:4
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_GSP_DISABLE       0x00000000
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_GSP_ENABLE        0x00000001
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_NVDEC             5:5
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_NVDEC_DISABLE     0x00000000
#define NV_REG_STR_RM_ASSERT_ON_POSTED_REG_ACCESS_ERRORS_NVDEC_ENABLE      0x00000001

//
// TYPE DWORD
// Set the following bits in the NV_PGRAPH_PRI_GPCS_TPCS_SM_TTU_CTRL register for bug 200753735
// on AD10X trim netlists. This updates USE_SM_ID registers to prevent TTU from making accesses from a stubbed SM.
//    - L0_USE_TAG
//    - L0_TAG_USE_SM_ID
//    - MEMARB_L1C_HASH_USE_SM_ID
//
// Encoding : 1 - Set the bits
//          : 0 - Don't set the bits
//
#define NV_REG_STR_RM_200753735           "Rm200753735"
#define NV_REG_STR_RM_200753735_DISABLE   0x00000000
#define NV_REG_STR_RM_200753735_ENABLE    0x00000001
#define NV_REG_STR_RM_200753735_DEFAULT   NV_REG_STR_RM_200753735_DISABLE

#define NV_REG_SUPPRESS_XID_DUMP                              "RmSuppressXidDump"
#define MAX_XID_SUPPRESS_KEY_LENGTH                           64
// Type: Binary
// Comma separated list of XID values to suppress from the kernel log
// example:
// RmSuppressXidDump="43,31"

#endif // NV_RM_REG_H
