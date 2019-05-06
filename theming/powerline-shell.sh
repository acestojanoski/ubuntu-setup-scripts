#!/bin/bash

echo "Installing dependencies"
sudo apt update
sudo apt install python-pip python3-dev -y

echo "Installing poweline-shell"
sudo pip install powerline-shell

echo "Updating .bashrc file"
cd
sudo cp .bashrc ./Desktop/bashrc_copy
echo "" >> .bashrc
echo 'function _update_ps1() {' >> .bashrc
echo '    PS1=$(powerline-shell $?)' >> .bashrc
echo '}' >> .bashrc
echo 'if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then' >> .bashrc
echo '    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"' >> .bashrc
echo 'fi' >> .bashrc
