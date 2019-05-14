#!/bin/sh

echo "_____________________ 0-basic-update.sh : Start _____________________"
echo ""
#This will take care of all package updates
apt-get update -y && 
apt-get upgrade -y &&
apt-get dist-upgrade -y

#Cleaning up system to remove unwanted files and archives
#This will freeup space as well
apt-get autoremove -y 
apt-get check -y
apt-get autoclean -y
echo ""
echo "_____________________ 0-basic-update.sh : End _____________________"
echo ""
sleep 3


