Try to find the BusID you need.

Reference:

Every software connector must be assigned a unique BusID, but only certain BusID values are permitted:

- DisplayPort is the most flexible. BusIDs 0x02, 0x04, 0x05, 0x06 are permitted. Any of these values should work on any motherboard. These values apply to VGA as well.
  
- HDMI is very restrictive. Only BusIDs 0x01, 0x02, 0x04, 0x06 are permitted but some motherboards will only accept one or two of these possibilities. The Gigabyte Designare Z390, for instance, only accepts 0x04.
  
- DVI is the same as HDMI. The same BusIDs and even the same Type are used.
  

Read the guide:

https://dortania.github.io/OpenCore-Post-Install/gpu-patching/intel-patching/busid.html
