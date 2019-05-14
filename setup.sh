#!/bin/bash
clear
FOLDER=$PWD
LOG="Logs/system-setup-$(date +'%Y%m%d_%H%M%S').log"

echo "Welcome, Basic Ubuntu setup"
echo ""
echo "Most of the steps has been automated but at times your input might be needed,"
echo "So please don't leave the system alone."
sleep 2
echo "" 
echo "System Setup - $(date '+%H:%M:%S   %d/%m/%y')"
echo ""
echo "Working directory : $FOLDER"
echo "Log filename : $LOG"
sleep 2
echo ""

[ -d "$FOLDER/Logs" ] && echo "" || mkdir "$FOLDER/Logs" 

echo "RUNNING BASIC UPDATES : $(date '+%H:%M:%S   %d/%m/%y')" | tee -a $LOG
bash "$FOLDER/0-basic-update.sh" 2>&1 | tee -a $LOG 

echo "ENABLING UNIVERSAL REPOSITORIES : $(date '+%H:%M:%S   %d/%m/%y')" | tee -a $LOG
bash "$FOLDER/1-enable-universal-repositories.sh" 2>&1 | tee -a $LOG 


#echo "REMOVING BLOATWARE : $(date '+%H:%M:%S   %d/%m/%y')"
#bash "$FOLDER/2-remove-bloatware.sh" >> $LOG 

echo "INSTALLING PROGRAMING ESSENTIALS : $(date '+%H:%M:%S   %d/%m/%y')" | tee -a $LOG
bash "$FOLDER/3-install-programing-essentials.sh" 2>&1 | tee -a $LOG 

echo "RUNNING BASIC UPDATES - AGAIN: $(date '+%H:%M:%S   %d/%m/%y')" | tee -a $LOG
bash "$FOLDER/0-basic-update.sh" 2>&1 | tee -a $LOG 

echo "SETTING UP PYTHON DEV ENV : $(date '+%H:%M:%S   %d/%m/%y')" | tee -a $LOG
bash "$FOLDER/4-python-dev-env.sh" 2>&1 | tee -a $LOG 

echo "INSTALLING GUI TOOLS (Desktop Only) : $(date '+%H:%M:%S   %d/%m/%y')" | tee -a $LOG
bash "$FOLDER/5-gui-tools.sh" 2>&1 | tee -a $LOG 

echo "INSTALLING PYTHON IDEs (Desktop Only) : $(date '+%H:%M:%S   %d/%m/%y')" | tee -a $LOG
bash "$FOLDER/6-python-IDEs.sh" 2>&1 | tee -a $LOG 

echo "RUNNING BASIC UPDATES - FOR THE FINAL TIME: $(date '+%H:%M:%S   %d/%m/%y')" | tee -a $LOG
bash "$FOLDER/0-basic-update.sh" 2>&1 | tee -a $LOG

#sh ./install_TPLink_WN823N_Wifi_Driver.sh



echo ""
echo "Setup complete"

echo "You must restart your computer before continuing to use it."
echo ""
echo "Thank you :-)"

#sudo reboot now

