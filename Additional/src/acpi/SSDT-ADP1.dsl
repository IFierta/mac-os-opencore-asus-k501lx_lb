/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-ADP1.aml, Mon Oct 12 17:19:05 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000063 (99)
 *     Revision         0x02
 *     Checksum         0x18
 *     OEM ID           "hack"
 *     OEM Table ID     "FixADP1"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "FixADP1", 0x00001000)
{
    External (_SB_.PCI0.AC0_, DeviceObj)

    Scope (_SB.PCI0.AC0)
    {
        If (_OSI ("Darwin"))
        {
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x1C, 
                0x03
            })
        }
    }
}

