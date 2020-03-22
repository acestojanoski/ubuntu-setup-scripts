#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

VIRTUALBOX_TMP=/tmp/virtualbox_amd64.deb;

echo "=============================="
echo "Removing the old virtualbox installer if it exists"
echo "=============================="
[ -f ${VIRTUALBOX_TMP} ] && sudo rm $VIRTUALBOX_TMP

echo "=============================="
echo "Downloading virtualbox installer"
echo "=============================="
wget https://download.virtualbox.org/virtualbox/6.0.10/virtualbox-6.0_6.0.10-132072~Ubuntu~bionic_amd64.deb \
	-O $VIRTUALBOX_TMP

echo "=============================="
echo "Installing virtualbox"
echo "=============================="
sudo dpkg -i $VIRTUALBOX_TMP
sudo apt install -f

echo "=============================="
echo "Removing the virtualbox installer"
echo "=============================="
[ -f ${VIRTUALBOX_TMP} ] && sudo rm $VIRTUALBOX_TMP
