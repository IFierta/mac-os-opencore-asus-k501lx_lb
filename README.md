## OpenCore for ASUS K501LX (LB) 


**Working:**

- Sleep
  
- Hibernate
  
- WI-FI, Bluetooth ( Replaced to Broadcom)
  
- USB Ports (2.0, 3.0)

- Airplane mode (Fn+f2) (For this mode to work, you need to install AsusSMCDaemon from [hieplpvip/AsusSMC](https://github.com/hieplpvip/AsusSMC))
  
- Keyboard backlight
  
- Headphone (Use AlcPlugFix for the headphones to work correctly.)
  
- Microphone
  
- FaceTime (Before starting FaceTime, first run the Photo Booth program so that the camera can initialize.)  

**Not tested:**

- USB SD Card Reader
  
- Ethernet

- HDMI    <details>
           <summary>If the HDMI port does not work</summary>
           
     Try to find the BusID you need.
     
     Reference:
     
     Every software connector must be assigned a unique BusID, but only certain BusID values are permitted:
     DisplayPort is the most flexible. BusIDs 0x02, 0x04, 0x05, 0x06 are permitted. Any of these values should work on any motherboard. These values apply to VGA as        well.
    HDMI is very restrictive. Only BusIDs 0x01, 0x02, 0x04, 0x06 are permitted but some motherboards will only accept one or two of these possibilities. The    Gigabyte Designare Z390, for instance, only accepts 0x04.
DVI is the same as HDMI. The same BusIDs and even the same Type are used.

 </details>

**Not working:**

- Discrete graphic card is not working, since macOS doesn't support Optimus technology

**Bios settings**

- Browse into Advanced -> Graphics Configuration section.
- Change DVMT Pre-Allocated to be 64MB or 128MB.
