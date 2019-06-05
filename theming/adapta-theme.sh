#!/bin/bash

echo "Adding the adapta-project PPA"
sudo add-apt-repository ppa:tista/adapta

echo "Updating package lists"
sudo apt update

echo "Installing adapta theme"
sudo apt install adapta-gtk-theme -y

