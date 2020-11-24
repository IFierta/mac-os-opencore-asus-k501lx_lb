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

- HDMI 

**Not working:**

- Discrete graphic card is not working, since macOS doesn't support Optimus technology

**Bios settings**

- Browse into Advanced -> Graphics Configuration section.
- Change DVMT Pre-Allocated to be 64MB or 128MB.
