#!/bin/bash

# Author: Aleksandar Stojanoski

# don't allow to run the script as root
[ $EUID = 0 ] && echo "Error: Don't run the script as root/sudo" && exit 1

echo "=============================="
echo "Updating package lists"
echo "=============================="
sudo apt update

echo "=============================="
echo "Installing dependencies"
echo "=============================="
sudo apt install python3-dev python-pip -y

echo "=============================="
echo "Installing poweline-shell"
echo "=============================="
sudo pip install powerline-shell

echo "=============================="
echo "Updating .bashrc file"
echo "backup will be created in the home directory"
echo "=============================="

cp ~/.bashrc ~/bashrc_backup
echo "" >> ~/.bashrc
echo 'function _update_ps1() {' >> ~/.bashrc
echo '    PS1=$(powerline-shell $?)' >> ~/.bashrc
echo '}' >> ~/.bashrc
echo 'if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then' >> ~/.bashrc
echo '    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"' >> ~/.bashrc
echo 'fi' >> ~/.bashrc
