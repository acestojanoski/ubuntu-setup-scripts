#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

SKYPE_TMP=/tmp/skypeforlinux-64.deb;

echo "=============================="
echo "Removing the old skype installer if it exists"
echo "=============================="
[ -f $SKYPE_TMP ] && sudo rm $SKYPE_TMP

echo "=============================="
echo "Downloading skype installer"
echo "=============================="
wget https://go.skype.com/skypeforlinux-64.deb -O $SKYPE_TMP

echo "=============================="
echo "Installing skype"
echo "=============================="
sudo dpkg -i $SKYPE_TMP
sudo apt install -f

echo "=============================="
echo "Removing the skype installer"
echo "=============================="
[ -f $SKYPE_TMP ] && sudo rm $SKYPE_TMP
