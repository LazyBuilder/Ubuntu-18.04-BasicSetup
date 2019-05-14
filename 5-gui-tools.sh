#!/bin/sh
#GUI tools for desktop
echo ""
echo "_____________________ 5-gui-tools.sh : Start _____________________"
echo ""
echo "Installing GUI tools"
echo ""
#Media tools
apt-get install vlc gimp kazam -y
#Utilities
apt-get install bleachbit -y
#Installing Stacer - System tool
add-apt-repository ppa:oguzhaninan/stacer -y &&
apt-get update && 
apt-get install stacer -y
#Installing chrome browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
dpkg -i google-chrome-stable_current_amd64.deb
#Installing firefox developer edition
add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
apt-get update
apt-get install firefox
echo ""
echo "Done"
echo ""
echo "_____________________ 5-gui-tools.sh : End _____________________"
echo ""

sleep 3


