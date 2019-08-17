#!/bin/bash

if [[ -d ~/.fonts ]]; then
    echo '".fonts" directory exists, installing new fonts there...'
    cp -r ./fonts/* ~/.fonts
else
    echo 'Creating ".fonts" directory, and installing new fonts there...'
    mkdir ~/.fonts && cp -r ./fonts/* ~/.fonts
fi

sudo rm -rf ~/.fonts/README.md
