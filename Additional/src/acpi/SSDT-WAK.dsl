/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-WAK.aml, Mon Oct 12 17:19:05 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000066 (102)
 *     Revision         0x02
 *     Checksum         0x42
 *     OEM ID           "HACK"
 *     OEM Table ID     "_WAK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "_WAK", 0x00000000)
{
    External (ZWAK, MethodObj)    // 1 Arguments

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (_OSI ("Darwin"))
        {
            If (LOr (LLess (Arg0, One), LGreater (Arg0, 0x05)))
            {
                Store (0x03, Arg0)
            }

            Store (ZWAK (Arg0), Local0)
            Return (Local0)
        }
        Else
        {
            Store (ZWAK (Arg0), Local0)
            Return (Local0)
        }
    }
}

