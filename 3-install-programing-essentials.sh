#!/bin/sh
echo ""
echo "_____________________ 3-install-programing-essentials.sh : Start _____________________"
echo ""
echo "Getting the essentials"
echo ""
#Build essentials
apt-get install build-essential wget unzip git curl ubuntu-make snapd synaptic -y

#Text Editors
apt-get install nano vim nautilus -y  

#System tools
apt-get install glances terminator net-tools -y

echo ""
echo "Done"
echo ""
echo "_____________________ 3-install-programing-essentials.sh : End _____________________"
echo ""
sleep 3


