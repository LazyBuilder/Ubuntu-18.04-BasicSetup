#!/bin/sh
echo ""
echo "_____________________ 1-enable-universal-repositories.sh : Start _____________________"
echo ""
#Enabling universal repositories
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
echo ""
echo "_____________________ 1-enable-universal-repositories.sh : End _____________________"
echo ""
sleep 3
