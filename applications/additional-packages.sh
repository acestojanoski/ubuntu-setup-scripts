#!/bin/bash

echo "Updating package lists"
sudo apt update

echo "Installing additional packages"
sudo apt install vlc terminator vim rofi shutter -y

echo "Installing file compressors"
sudo apt install zip unzip rar unrar -y

