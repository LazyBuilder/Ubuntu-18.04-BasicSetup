#!/bin/sh
echo ""
echo "_____________________ 4-python-dev-env.sh : Start _____________________"
echo ""
echo "Preparing python environments"
echo ""
#Basic essentials
apt-get install -y libssl-dev libffi-dev
#Python 3
apt-get install -y python3-dev python3-pip python3-venv
#Python 2
apt-get install -y python-dev python-pip python-virtualenv
echo ""
echo "Done."
echo ""
echo "_____________________ 4-python-dev-env.sh : End _____________________"
echo ""
sleep 3



