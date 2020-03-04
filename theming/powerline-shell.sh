#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Installing dependencies"
echo "=============================="
apt update
apt install python-pip python3-dev -y

echo "=============================="
echo "Installing poweline-shell"
echo "=============================="
pip install powerline-shell

echo "=============================="
echo "Updating .bashrc file"
echo "backup will be created in the home directory"
echo "=============================="

cp .bashrc ~/bashrc_backup
echo "" >> .bashrc
echo 'function _update_ps1() {' >> .bashrc
echo '    PS1=$(powerline-shell $?)' >> .bashrc
echo '}' >> .bashrc
echo 'if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then' >> .bashrc
echo '    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"' >> .bashrc
echo 'fi' >> .bashrc
