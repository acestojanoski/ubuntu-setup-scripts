#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

echo "=============================="
echo "Updating package lists"
echo "=============================="
sudo apt update

echo "=============================="
echo "Installing papirus icons"
echo "=============================="
sudo apt install papirus-icon-theme -y
