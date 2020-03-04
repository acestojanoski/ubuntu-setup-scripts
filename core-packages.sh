#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Updating package lists"
echo "=============================="
apt update

echo "=============================="
echo "Installing core packages"
echo "=============================="
apt install vlc libreoffice transmission terminator gimp \
    build-essential vim rofi shutter meld chromium-browser \
    neofetch dmenu j4-dmenu-desktop curl apt-transport-https wget -y

echo "=============================="
echo "Installing file compressors"
echo "=============================="
apt install zip unzip rar unrar -y
