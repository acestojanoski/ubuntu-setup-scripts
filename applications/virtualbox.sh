#!/bin/bash

# Author: Aleksandar Stojanoski

VIRTUALBOX_TMP=/tmp/virtualbox_amd64.deb;

echo "=============================="
echo "Removing the old virtualbox installer if it exists"
echo "=============================="
if [[ -f ${VIRTUALBOX_TMP} ]]; then
	rm ${VIRTUALBOX_TMP}
fi

echo "=============================="
echo "Downloading virtualbox installer"
echo "=============================="
wget https://download.virtualbox.org/virtualbox/6.0.10/virtualbox-6.0_6.0.10-132072~Ubuntu~bionic_amd64.deb \
	-O ${VIRTUALBOX_TMP}

echo "=============================="
echo "Installing virtualbox"
echo "=============================="
dpkg -i ${VIRTUALBOX_TMP}
apt install -f

echo "=============================="
echo "Removing the virtualbox installer"
echo "=============================="
rm ${VIRTUALBOX_TMP}
