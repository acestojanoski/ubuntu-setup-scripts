#!/bin/bash

echo "Updating package lists"
sudo apt update

echo "Installing core packages"
sudo apt install vlc libreoffice transmission terminator gimp \
build-essential vim rofi shutter meld chromium-browser \
neofetch dmenu j4-dmenu-desktop curl apt-transport-https -y

echo "Installing file compressors"
sudo apt install zip unzip rar unrar -y
