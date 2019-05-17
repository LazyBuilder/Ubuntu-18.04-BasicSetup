#!/bin/sh
echo ""
echo "_____________________ 2-remove-bloatware.sh : Start _____________________"
echo ""

# The script is built based on https://help.ubuntu.com/community/Diet%20Ubuntu

echo "Removing extra fonts"
apt-get purge -y ttf-arabeyes
apt-get purge -y ttf-arphic-uming
apt-get purge -y ttf-indic-fonts-core
apt-get purge -y ttf-kochi-gothic
apt-get purge -y ttf-kochi-mincho
apt-get purge -y ttf-lao
apt-get purge -y ttf-malayalam-fonts
apt-get purge -y ttf-thai-tlwg
apt-get purge -y ttf-unfonts-core

echo "Removing bluetooth capabilities"
apt-get purge -y bluez-audio
apt-get purge -y bluez-cups
apt-get purge -y bluez-gnome
apt-get purge -y bluez-utils

echo "Removing Dial-up internet"
apt-get purge -y ppp
apt-get purge -y pppconfig
apt-get purge -y pppoeconf wvdial

echo "Remove account plugins that are privacy/etc. risks" 
apt-get purge -y *facebook*
apt-get purge -y *twitter*
apt-get purge -y *flickr*
apt-get purge -y *instagram*

echo "Remove Various accessibility functions"

apt-get purge -y gnome-orca 
apt-get purge -y brltty
apt-get purge -y brltty-x11
apt-get purge -y gnome-accessibility-themes
apt-get purge -y gnome-mag
apt-get purge -y libgnome-mag2  

echo "Remove VNC (remote control)"
apt-get purge -y libgtk-vnc-1.0-0 
apt-get purge -y vinagre 
apt-get purge -y vino 

echo "Remove fortune cookies"
apt-get purge -y fortune-mod 

echo "Remove speeahc synthesizer"
apt-get purge -y espeak
apt-get purge -y espeak-data 
apt-get purge -y libespeak1 
apt-get purge -y libgnome-speech7

echo "Remove Example content for various desktop apps"
apt-get purge -y example-content

echo "Remove Mark Pilgrim’s Python tutorial"
apt-get purge -y diveintopython 

echo "Remove office packages"
apt-get purge -y libreoffice*
apt-get purge -y openoffice* 

echo "Remove Amazon"
rm /usr/share/applications/ubuntu-amazon-default.desktop
rm /usr/share/unity-webapps/userscripts/unity-webapps-amazon/Amazon.user.js
rm /usr/share/unity-webapps/userscripts/unity-webapps-amazon/manifest.json

echo "Remove unity lens related packages"
# Remove unity lens related packages
apt-get purge -y telepathy-indicator 
apt-get purge -y unity-lens*
apt-get purge -y unity*


echo "Remove local mail clients"
# Remove local mail clients if you only use webmail 
apt-get purge -y thunderbird* 
apt-get purge -y thunderbird

echo "Remove ubuntu firefox extension"
# Remove ubuntu firefox extension
apt-get purge -y firefox*

echo "Remove telepathy"
# Remove telepathy
apt-get purge -y telepathy-gabble 
apt-get purge -y telepathy-haze 
apt-get purge -y telepathy-idle 
apt-get purge -y telepathy-logger 
apt-get purge -y telepathy-mission-control-5 
apt-get purge -y telepathy-salut

echo "Remove totem media player"
# Remove totem media player
apt-get purge -y totem 
apt-get purge -y totem-common 
apt-get purge -y totem-plugins 
apt-get purge -y totem-mozilla

echo "Remove Gnome games and associated data"
apt-get purge -y gnome-games 
apt-get purge -y gnome-games-data 
apt-get purge -y gnome-cards-data
apt-get purge -y gnome-mines 
apt-get purge -y gnome-mahjongg 
apt-get purge -y gnome-sudoku

echo "Remove games"
apt-get purge -y aisleriot 

echo "Remove rhythmbox"
apt-get purge -y rhythmbox*

echo "Remove error submission daemon"
# Remove error submission daemon
apt-get purge -y whoopsie 
apt-get purge -y whoopsie-preferences

echo "Remove bit torrent client"
apt-get purge -y transmission-common
apt-get purge -y transmission-gtk

# Clear out any packages that are no longer required at this point
apt-get autoremove

echo ""
echo "_____________________ 2-remove-bloatware.sh : Start _____________________"
echo ""
