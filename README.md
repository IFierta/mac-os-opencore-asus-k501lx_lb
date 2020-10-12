## OpenCore for ASUS K501LX (LB) 


**Working:**

- Sleep
  
- Hibernate
  
- WI-FI, Bluetooth ( Replaced to Broadcom)
  
- USB Ports (2.0, 3.0)

- Airplane mode (Fn+f2) (For this mode to work, you need to install AsusSMCDaemon from [hieplpvip/AsusSMC](https://github.com/hieplpvip/AsusSMC))
  
- Keyboard backlight
  
- The touchpad supports all the gestures of the magic trackpad (work only when using VoodooPS2.kext)

- Mini Jack 3.5mm (For correct working, you need to install codeccommander.kext in / L / E )
  
- Microphone
  
- FaceTime (Before starting FaceTime, first run the Photo Booth program so that the camera can initialize.  

**Not tested:**

- USB SD Card Reader
  
- Ethernet
  

**Not working:**

- Discrete graphic card is not working, since macOS doesn't support Optimus technology

**Bios settings**

- Browse into Advanced -> Graphics Configuration section.
- Change DVMT Pre-Allocated to be 64MB or 128MB.
- CSM Enable (do not disable)
