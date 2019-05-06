#!/bin/bash

echo "Getting the MT7630E driver repository"
cd
git clone https://gitlab.com/acestojanoski/MT7630E
cd MT7630E
echo "Installing the driver"
sudo ./install

