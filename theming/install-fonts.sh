#!/bin/bash

# Author: Aleksandar Stojanoski

if [[ $PWD != *"ubuntu-setup-scripts/theming" ]]; then
    echo "=============================="
    echo "Please run this script from the theming folder";
    echo "=============================="

    exit 1;
fi;

if [[ -d ~/.fonts ]]; then
    echo "=============================="
    echo '".fonts" directory exists, installing new fonts there...'
    echo "=============================="
    cp -r ./fonts/* ~/.fonts
else
    echo "=============================="
    echo 'Creating ".fonts" directory, and installing new fonts there...'
    echo "=============================="
    mkdir ~/.fonts && cp -r ./fonts/* ~/.fonts
fi
