/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-DDGPU.aml, Mon Oct 12 17:19:05 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000C0 (192)
 *     Revision         0x02
 *     Checksum         0xB4
 *     OEM ID           "hack"
 *     OEM Table ID     "_DDGPU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_DDGPU", 0x00000000)
{
    External (_SB_.PCI0.RP05.PEGP._OFF, MethodObj)    // 0 Arguments

    Device (RMD1)
    {
        Name (_HID, "RMD10000")  // _HID: Hardware ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                If (CondRefOf (\_SB.PCI0.RP05.PEGP._OFF))
                {
                    \_SB.PCI0.RP05.PEGP._OFF ()
                }
            }
            Else
            {
            }
        }
    }
}

