#!/bin/bash

echo "Updating package lists"
sudo apt update

echo "Installing core packages"
sudo apt install vlc terminator gimp build-essential vim rofi shutter meld chromium-browser neofetch j4-dmenu-desktop curl apt-transport-https dmenu -y

echo "Installing file compressors"
sudo apt install zip unzip rar unrar -y
