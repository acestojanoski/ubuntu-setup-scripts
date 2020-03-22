#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

echo "=============================="
echo "Updating package lists"
echo "=============================="
sudo apt update

echo "=============================="
echo "Removing old nvidia packages"
echo "=============================="
sudo apt purge "^nvidia-.*" -y

echo "=============================="
echo "Installing nvidia driver 390 and core packages"
echo "=============================="
sudo apt install nvidia-driver-390 nvidia-prime nvidia-settings -y
