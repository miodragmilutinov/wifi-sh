#!/usr/bin/env bash

# getting wifi name 
#AP=$(iwconfig wlp2s0 | grep 'ESSID:' | awk '{print $3}' | sed 's/ESSID://g' | sed 's/"//')
#echo $AP

tool=qrencode

# getting wifi name
echo "Whats your wifi name?"
read  wifiname

# your password is safe 
echo "Whats your wifi password? shussh is safe"
read  -s wifipass

# qrencode command 
comd=$($tool -s 6 -l H -o "wifi.png" "WIFI:T:WPA;S:<$wifiname>;P:<$wifipass>;;")
echo $comd

# display img with sxiv 
img=$(sxiv wifi.png)
echo $img

#del the image from sys after display is over
del=$(rm wifi.png)
echo $del

