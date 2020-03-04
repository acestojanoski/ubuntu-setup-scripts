#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Adding the adapta-project PPA"
echo "=============================="
add-apt-repository ppa:tista/adapta

echo "=============================="
echo "Updating package lists"
echo "=============================="
apt update

echo "=============================="
echo "Installing adapta theme"
echo "=============================="
apt install adapta-gtk-theme -y
