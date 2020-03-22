#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

ATOM_TMP=/tmp/atom-amd64.deb;

echo "=============================="
echo "Removing the old Atom installer if it exists"
echo "=============================="
[ -f $ATOM_TMP ] && sudo rm $ATOM_TMP

echo "=============================="
echo "Downloading the latest Atom installer"
echo "=============================="
wget https://atom.io/download/deb -O $ATOM_TMP

echo "=============================="
echo "Installing Atom"
echo "=============================="
sudo dpkg -i $ATOM_TMP
sudo apt install -f

echo "=============================="
echo "Removing the Atom installer"
echo "=============================="
[ -f $ATOM_TMP ] && sudo rm $ATOM_TMP
