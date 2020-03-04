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
wget https://go.skype.com/skypeforlinux-64.deb -O ${SKYPE_TMP}

echo "=============================="
echo "Installing skype"
echo "=============================="
dpkg -i ${SKYPE_TMP}
apt install -f

echo "=============================="
echo "Removing the skype installer"
echo "=============================="
rm ${SKYPE_TMP}
