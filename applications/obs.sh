#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Installing obs"
echo "=============================="
apt install ffmpeg -y
add-apt-repository ppa:obsproject/obs-studio
apt update
apt install obs-studio -y
