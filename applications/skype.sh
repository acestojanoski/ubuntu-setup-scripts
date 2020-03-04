#!/bin/bash

# Author: Aleksandar Stojanoski

SKYPE_TMP=/tmp/skypeforlinux-64.deb;

echo "=============================="
echo "Removing the old skype installer if it exists"
echo "=============================="
if [[ -f ${SKYPE_TMP} ]]; then
	rm ${SKYPE_TMP}
fi

echo "=============================="
echo "Downloading skype installer"
echo "=============================="
sudo wget https://go.skype.com/skypeforlinux-64.deb -O ${SKYPE_TMP}

echo "=============================="
echo "Installing skype"
echo "=============================="
sudo dpkg -i ${SKYPE_TMP}
sudo apt-get install -f

echo "=============================="
echo "Removing the skype installer"
echo "=============================="
sudo rm ${SKYPE_TMP}
