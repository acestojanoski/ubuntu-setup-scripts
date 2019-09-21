#!/bin/bash

# Author: Aleksandar Stojanoski

echo
echo "############################################"
echo "Removing the old Atom installer if it exists"
echo "############################################"
if [[ -f /tmp/atom-amd64.deb ]]; then
    sudo rm /tmp/atom-amd64.deb
fi

echo
echo "############################################"
echo "Downloading the latest Atom installer"
echo "##########################################"
sudo wget https://atom.io/download/deb -O /tmp/atom-amd64.deb

echo
echo "############################################"
echo "Installing Atom"
echo "############################################"
sudo dpkg -i /tmp/atom-amd64.deb
sudo apt install -f

echo
echo "############################################"
echo "Removing the Atom installer"
echo "############################################"
sudo rm /tmp/atom-amd64.deb

echo
echo "############################################"
echo "Installing Atom packages"
echo "############################################"
apm install file-icons emmet apm atom-beautify todo minimap pigments git-plus \
    highlight-selected autocomplete-modules atom-ternjs language-babel
