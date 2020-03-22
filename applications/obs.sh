#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

echo "=============================="
echo "Installing obs"
echo "=============================="
sudo apt install ffmpeg -y
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio -y
