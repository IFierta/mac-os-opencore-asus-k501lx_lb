#!/bin/bash



curl_options="--retry 5 --location --progress-bar"
curl_options_silent="--retry 5 --location --silent"

# download typical release from RehabMan bitbucket downloads
function download_RHM()
# $1 is subdir on rehabman bitbucket
# $2 is prefix of zip file name
{
    echo "downloading $2:"
    curl $curl_options_silent --output /tmp/com.hieplpvip.download.txt https://bitbucket.org/RehabMan/$1/downloads/
    local url=https://bitbucket.org`grep -o -m 1 "/RehabMan/$1/downloads/$2.*\.zip" /tmp/com.hieplpvip.download.txt|perl -ne 'print $1 if /(.*)\"/'`
    echo $url
    curl $curl_options --output "$2.zip" "$url"
    rm /tmp/com.hieplpvip.download.txt
    echo
}

# download latest release from github
function download_github()
# $1 is sub URL of release page
# $2 is partial file name to look for
# $3 is file name to rename to
{
    echo "downloading `basename $3 .zip`:"
    curl $curl_options_silent --output /tmp/com.hieplpvip.download.txt "https://github.com/$1"
    local url=https://github.com`grep -o -m 1 "/.*$2.*\.zip" /tmp/com.hieplpvip.download.txt`
    echo $url
    curl $curl_options --output "$3" "$url"
    rm /tmp/com.hieplpvip.download.txt
    echo
}

function download_raw()
{
    echo "downloading $2"
    echo $1
    curl $curl_options --output "$2" "$1"
    echo
}

PS3='Do you want to download AirportBrcmFixup, BrcmPatchRAM?'$'\n''Yes, if you are using a non-native Broadcom Wi-Fi card'$'\n''No if you have replaced your wifi card with a compatible one: '
options=("Yes" "No")
select opt in "${options[@]}"
do
    case $opt in
        "Yes")
            airportbrcm=1
            break;;
        "No")
            airportbrcm=0
            break;;
        *) echo "Invalid";;
    esac
done
echo

if [ ! -d ./Desktop/download_kexts ]; then mkdir ./Desktop/download_kexts; fi
cd ./Desktop/download_kexts
rm -rf ./zips
rm -rf ./le_kexts
rm -rf ./opencore_kexts


# download kexts
mkdir ./zips && cd ./zips

download_github "Mieze/RTL8111_driver_for_OS_X/releases" "RealtekRTL8111" "Mieze-RealtekRTL8111.zip"
download_github "acidanthera/Lilu/releases" "RELEASE" "acidanthera-Lilu.zip"
download_github "acidanthera/AppleALC/releases" "RELEASE" "acidanthera-AppleALC.zip"
download_github "acidanthera/VirtualSMC/releases" "RELEASE" "acidanthera-VirtualSMC.zip"
download_github "acidanthera/VoodooPS2/releases" "RELEASE" "acidanthera-VoodooPS2Controller.zip"
download_github "acidanthera/WhateverGreen/releases" "RELEASE" "acidanthera-WhateverGreen.zip"
download_github "hieplpvip/AsusSMC/releases" "RELEASE" "hieplpvip-AsusSMC.zip"
download_github "acidanthera/HibernationFixup/releases" "RELEASE" "acidanthera-HibernationFixup.zip"
download_github "acidanthera/CPUFriend/releases" "RELEASE" "acidanthera-CPUFriend.zip"
download_RHM os-x-eapd-codec-commander RehabMan-CodecCommander



if [ $airportbrcm -eq 1 ]; then
    download_github "acidanthera/AirportBrcmFixup/releases" "RELEASE" "acidanthera-AirportBrcmFixup.zip"
    download_github "acidanthera/BrcmPatchRAM/releases" "RELEASE" "acidanthera-BrcmPatchRAM.zip"
fi

cd ..


LEKEXTS="CodecCommander"
OPENCOREKEXTS="AppleALC|AsusSMC|AirportBrcmFixup|BrcmPatchRAM3|BrcmFirmwareData|BrcmBluetoothInjector|WhateverGreen|Lilu|VirtualSMC|SMCBatteryManager|SMCProcessor|VoodooPS2Controller|RealtekRTL8111|CPUFriend|HibernationFixup"

function check_directory
{
    for x in $1; do
        if [ -e "$x" ]; then
            return 1
        else
            return 0
        fi
    done
}

function unzip_kext
{
    out=${1/.zip/}
    rm -Rf $out/* && unzip -q -d $out $1
    check_directory $out/Release/*.kext
    if [ $? -ne 0 ]; then
        for kext in $out/Release/*.kext; do
            kextname="`basename $kext`"
            
            if [[ "`echo $kextname | grep -E $LEKEXTS`" != "" ]]; then
                cp -R $kext ../le_kexts
            fi
            if [[ "`echo $kextname | grep -E $OPENCOREKEXTS`" != "" ]]; then
                cp -R $kext ../opencore_kexts
            fi
        done
    fi
    check_directory $out/*.kext
    if [ $? -ne 0 ]; then
        for kext in $out/*.kext; do
            kextname="`basename $kext`"
            
            if [[ "`echo $kextname | grep -E $LEKEXTS`" != "" ]]; then
                cp -R $kext ../le_kexts
            fi
            if [[ "`echo $kextname | grep -E $OPENCOREKEXTS`" != "" ]]; then
                cp -R $kext ../opencore_kexts
            fi
        done
    fi
    check_directory $out/Kexts/*.kext
    if [ $? -ne 0 ]; then
        for kext in $out/Kexts/*.kext; do
            kextname="`basename $kext`"
            
            if [[ "`echo $kextname | grep -E $LEKEXTS`" != "" ]]; then
                cp -R $kext ../le_kexts
            fi
            if [[ "`echo $kextname | grep -E $OPENCOREKEXTS`" != "" ]]; then
                cp -R $kext ../opencore_kexts
            fi
        done
    fi
    check_directory $out/RealtekRTL8111-V2.3.0/Release/*.kext
    if [ $? -ne 0 ]; then
        for kext in $out/RealtekRTL8111-V2.3.0/Release/*.kext; do
            kextname="`basename $kext`"
            
            if [[ "`echo $kextname | grep -E $LEKEXTS`" != "" ]]; then
                cp -R $kext ../le_kexts
            fi
            if [[ "`echo $kextname | grep -E $OPENCOREKEXTS`" != "" ]]; then
                cp -R $kext ../opencore_kexts
            fi
        done
    fi
    
}

mkdir ./le_kexts
mkdir ./opencore_kexts

check_directory ./zips/*.zip
if [ $? -ne 0 ]; then
    echo Unzipping kexts...
    cd ./zips
    for kext in *.zip; do
        unzip_kext $kext
    done
fi

cd ..
