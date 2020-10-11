## ASUS K501LX (LB) Hackintosh


## Current Status

**Working:**

- Sleep
  
- Hibernate
  
- WI-FI, Bluetooth ( Replaced to Broadcom)
  
- USB Ports (2.0, 3.0)
  
- Brightness
  
- The touchpad supports all the gestures of the magic trackpad (work only when using VoodooPS2.kext)

- Mini Jack 3.5mm (For correct working, you need to install codeccommander.kext in / L / E )
  
- Microphone
  
- FaceTime (Before starting FaceTime, first run the Photo Booth program so that the camera can initialize.)
  
- Keyboard backlight works when using ApplePS2SmartTouchPad.kext
  

**Not tested:**

- USB SD Card Reader
  
- Ethernet
  

**Not working:**

- Discrete graphic card is not working, since macOS doesn't support Optimus technology
- Keyboard backlight not working when using VoodooPS2.kext

**Bios settings**

- Browse into Advanced -> Graphics Configuration section.
- Change DVMT Pre-Allocated to be 64MB or 128MB.
- CSM Enable (do not disable)
