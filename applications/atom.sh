#!/bin/bash

# Author: Aleksandar Stojanoski

ATOM_TMP=/tmp/atom-amd64.deb;

echo "=============================="
echo "Removing the old Atom installer if it exists"
echo "=============================="
if [[ -f ${ATOM_TMP} ]]; then
    rm ${ATOM_TMP}
fi

echo "=============================="
echo "Downloading the latest Atom installer"
echo "=============================="
wget https://atom.io/download/deb -O ${ATOM_TMP}

echo "=============================="
echo "Installing Atom"
echo "=============================="
dpkg -i ${ATOM_TMP}
apt install -f

echo "=============================="
echo "Removing the Atom installer"
echo "=============================="
rm ${ATOM_TMP}

echo "=============================="
echo "Installing Atom packages"
echo "=============================="
apm install file-icons emmet apm atom-beautify todo minimap pigments git-plus \
    highlight-selected autocomplete-modules atom-ternjs language-babel
