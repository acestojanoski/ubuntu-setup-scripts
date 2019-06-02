#!/bin/bash

sudo apt install build-essential -y

echo "Getting the MT7630E driver repository"
cd
sudo rm -r MT7630E
git clone https://gitlab.com/acestojanoski/MT7630E.git
cd MT7630E
echo "Installing the driver"
sudo ./install

