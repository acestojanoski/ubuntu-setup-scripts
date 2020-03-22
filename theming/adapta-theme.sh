#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

echo "=============================="
echo "Adding the adapta-project PPA"
echo "=============================="
sudo add-apt-repository ppa:tista/adapta

echo "=============================="
echo "Updating package lists"
echo "=============================="
sudo apt update

echo "=============================="
echo "Installing adapta theme"
echo "=============================="
sudo apt install adapta-gtk-theme -y
