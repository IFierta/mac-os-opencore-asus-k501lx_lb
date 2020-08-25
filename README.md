**OpenCore (0.6.0) EFI folder for ASUS K501LX (LB)**


![Screenshot](https://github.com/IFierta/mac-os-opencore-asus-k501lx_lb/blob/master/Images/Catalina.jpg)

**Preinstallation**

**1. Bios settings**

- Browse into Advanced -> Graphics Configuration section.
- Change DVMT Pre-Allocated to be 64MB or 128MB (mine is 128MB).
- CSM Enable (do not disable)

**2. How to make the installation USB**

- Download the installation image from the Mac App Store.
  
- Erase your USB with Disk Utility.
  
- Copy and paste the command into terminal. (change the name flash drive from MyVolume to the name of your flash drive at the end of the command)
  
- ```bash
  sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
  
  ```
  

- Open hackintool ( [Download Hackintool](https://github.com/headkaze/Hackintool)), then mount the EFI partition on your USB.
- Copy the EFI folder to the mounted EFI partition of your USB stick.
- Reboot your computer and install.
- P.S: If for some reason you are unable to download the installation image from the Mac App Store, use BDU (Download BDU [here,](https://applelife.ru/threads/bdu-macos-i-clover-iz-windows-izgotovlenie-zagruzochnoj-flehshki.37189/) russian forum, use google translate), with this utility you can create a USB recovery image to boot and install Mac OS from recovery. After installing the macOS, boot into Windows, mount the ESP section and copy the EFI folder from my repository.

**Postinstallation**

After you have successfully booted into the mac os, mount the ESP partition of your hard drive and copy the EFI folder from my repository there.
