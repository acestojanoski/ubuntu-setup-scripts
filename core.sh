#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

echo "=============================="
echo "Updating package lists"
echo "=============================="
sudo apt update

# core packages
declare -a packages=(
    "vlc"
    "libreoffice"
    "transmission"
    "terminator"
    "gimp"
    "build-essential"
    "vim"
    "rofi"
    "shutter"
    "meld"
    "chromium-browser"
    "neofetch"
    "suckless-tools"
    "j4-dmenu-desktop"
    "curl"
    "apt-transport-https"
    "wget"
    "python3-dev"
    "python-pip"
    "zip"
    "unzip"
    "rar"
    "unrar"
)

echo "=============================="
echo "Installing core packages"
echo "=============================="

for package in "${packages[@]}"
do
    sudo apt install $package -y
done
