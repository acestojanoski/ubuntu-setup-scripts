#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

TEAMVIEWER_TMP=/tmp/teamviewer_amd64.deb;

echo "=============================="
echo "Removing the old teamviewer installer if it exists"
echo "=============================="
[ -f $TEAMVIEWER_TMP ] && sudo rm $TEAMVIEWER_TMP

echo "=============================="
echo "Downloading teamviewer installer"
echo "=============================="
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O $TEAMVIEWER_TMP

echo "=============================="
echo "Installing teamviewer"
echo "=============================="
sudo dpkg -i $TEAMVIEWER_TMP
sudo apt install -f

echo "=============================="
echo "Removing the teamviewer installer"
echo "=============================="
[ -f $TEAMVIEWER_TMP ] && sudo rm $TEAMVIEWER_TMP
