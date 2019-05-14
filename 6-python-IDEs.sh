#!/bin/sh

echo ""
echo "_____________________ 6-python-IDEs.sh : Start _____________________"
echo ""
echo "Installing python IDEs"
echo ""

#Python IDEs
snap install pycharm-community --classic
snap install atom --classic
snap install code --classic

#Jupiter Notebook
pip install jupyter 
pip3 install jupyter 

echo ""
echo "Done"
echo ""
echo "_____________________ 6-python-IDEs.sh : End _____________________"

sleep 3


