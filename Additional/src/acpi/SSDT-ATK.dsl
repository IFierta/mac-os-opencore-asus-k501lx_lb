/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-ATK.aml, Mon Oct 12 17:19:05 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003E0 (992)
 *     Revision         0x02
 *     Checksum         0x3C
 *     OEM ID           "HACK"
 *     OEM Table ID     "ATK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "ATK", 0x00000000)
{
    /*
     * iASL Warning: There were 11 external control methods found during
     * disassembly, but only 10 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.ATKD, DeviceObj)
    External (_SB_.ATKD.IANE, MethodObj)    // 1 Arguments
    External (_SB_.ATKP, IntObj)
    External (_SB_.KBLV, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.WRAM, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ZQ0B, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ZQ0C, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ZQ0D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ZQ0E, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ZQ0F, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ZQ13, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ZQ14, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.ZQ15, MethodObj)    // 0 Arguments
    External (ATKP, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (ATKP)
                {
                    \_SB.ATKD.IANE (0x7D)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.ZQ0B ()
            }
        }

        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (ATKP)
                {
                    \_SB.ATKD.IANE (0xC5)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.ZQ0C ()
            }
        }

        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (ATKP)
                {
                    \_SB.ATKD.IANE (0xC4)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.ZQ0D ()
            }
        }

        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (ATKP)
                {
                    \_SB.ATKD.IANE (0x20)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.ZQ0E ()
            }
        }

        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (ATKP)
                {
                    \_SB.ATKD.IANE (0x10)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.ZQ0F ()
            }
        }

        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (ATKP)
                {
                    \_SB.ATKD.IANE (0x32)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.ZQ13 ()
            }
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (ATKP)
                {
                    \_SB.ATKD.IANE (0x31)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.ZQ14 ()
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                If (ATKP)
                {
                    \_SB.ATKD.IANE (0x30)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.ZQ15 ()
            }
        }
    }

    Scope (_SB.ATKD)
    {
        Method (SKBV, 1, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                ^^PCI0.LPCB.EC0.WRAM (0xF8B1, Arg0)
                Return (Arg0)
            }
        }
    }
}

