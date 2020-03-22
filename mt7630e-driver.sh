#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

echo "=============================="
echo "Installing dependencies"
echo "=============================="
sudo apt install build-essential -y

DRIVER_DIRECTORY=${HOME}/MT7630E

echo "=============================="
echo "Cloning MT7630E driver repository"
echo "=============================="
[ -d $DRIVER_DIRECTORY ] && sudo rm -r $DRIVER_DIRECTORY

git clone https://github.com/acestojanoski/MT7630E.git $DRIVER_DIRECTORY

echo "=============================="
echo "Installing the driver"
echo "=============================="
${DRIVER_DIRECTORY}/install
