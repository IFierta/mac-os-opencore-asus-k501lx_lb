/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PTS.aml, Mon Oct 12 17:19:05 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000042 (66)
 *     Revision         0x02
 *     Checksum         0x97
 *     OEM ID           "HACK"
 *     OEM Table ID     "_PTS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "_PTS", 0x00000000)
{
    External (ZPTS, MethodObj)    // 1 Arguments

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (LNotEqual (Arg0, 0x05))
        {
            ZPTS (Arg0)
        }
    }
}

