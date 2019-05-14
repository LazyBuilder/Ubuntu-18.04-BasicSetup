#!/bin/sh
echo ""
echo "_____________________ 2-remove-bloatware.sh : Start _____________________"
echo ""

echo "Remove remaining oneconf, note, also removes software-center which you may not want"
# Remove remaining oneconf, note, also removes software-center which you may not want
apt-get purge oneconf oneconf-common python-ubuntu-sso-client ubuntu-sso-client ubuntu-sso-client-qt ubuntuone-client ubuntuone-client-data

echo "Remove account plugins that are privacy/etc. risks" 
# Remove account plugins that are privacy/etc. risks
apt-get purge account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-google account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo folks-common friends friends-dispatcher friends-facebook friends-twitter gnome-contacts nautilus-sendto unity-lens-friends unity-scope-gdrive unity-scope-musicstores unity-scope-zotero libfolks-eds25 libfriends0 mcp-account-manager-uoa rhythmbox-plugin-magnatune libaccount-plugin-google

echo "Remove more bloatware from desktop"
# Remove more bloatware from desktop
apt-get purge gnome-accessibility-themes gnome-mines gnome-orca gnome-sudoku gnomine nautilus-sendto-empathy aisleriot  brltty cheese cheese-common example-content unity-plugin-scopes unity-scope-mediascanner2

echo "Remove unity lens related packages"
# Remove unity lens related packages
apt-get purge telepathy-indicator unity-lens-music unity-lens-photos unity-lens-video unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-guayadeque unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-yelp unity-webapps-common unity-webapps-qml unity-webapps-service xul-ext-unity xul-ext-websites-integration unity-scope-video-remote unity-voice-service unity-scope-virtualbox

echo "Remove local mail clients"
# Remove local mail clients if you only use webmail
apt-get purge evolution-data-server* thunderbird*

# Remove Zeitgeist event logger
# NOTE: Disabled as it tries to remove nautilus and gedit that are essential
#apt-get purge zeitgeist zeitgeist-core zeitgeist-datahub python-zeitgeist rhythmbox-plugin-magnatune rhythmbox-plugin-zeitgeist libzeitgeist-1.0-1 libzeitgeist-2.0-0 
# Cannot remove libzeitgeist without removing nautilus, so remove all of the other components
#apt-get purge zeitgeist zeitgeist-datahub zeitgeist-core python-zeitgeist rhythmbox-plugin-zeitgeist

echo "Remove ubuntu firefox extension"
# Remove ubuntu firefox extension
apt-get purge xul-ext-ubufox

echo "Remove telepathy"
# Remove telepathy
apt-get purge telepathy-gabble telepathy-haze telepathy-idle telepathy-logger telepathy-mission-control-5 telepathy-salut

echo "Remove totem media player"
# Remove totem media player
apt-get purge totem totem-common totem-plugins totem-mozilla

echo "Remove rhythmbox iTunes Firefox plugin"
# Remove rhythmbox iTunes Firefox plugin
apt-get purge rhythmbox-mozilla

echo "Remove error submission daemon"
# Remove error submission daemon
apt-get purge whoopsie whoopsie-preferences

# Clear out any packages that are no longer required at this point
apt-get autoremove

echo ""
echo "_____________________ 2-remove-bloatware.sh : Start _____________________"
echo ""
