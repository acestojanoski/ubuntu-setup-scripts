#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Installing dependencies"
echo "=============================="
apt install build-essential -y

DRIVER_DIRECTORY=${HOME}/MT7630E

echo "=============================="
echo "Cloning MT7630E driver repository"
echo "=============================="
if [[ -d ${DRIVER_DIRECTORY} ]]; then
    rm -r ${DRIVER_DIRECTORY}
fi;

git clone https://github.com/acestojanoski/MT7630E.git ${DRIVER_DIRECTORY}

echo "Installing the driver"
${DRIVER_DIRECTORY}/install
