#!/bin/bash

# Author: Aleksandar Stojanoski

echo "=============================="
echo "Update package lists"
echo "=============================="
apt update

echo "=============================="
echo "Installing vim"
echo "=============================="
apt install vim -y

echo "=============================="
echo "Installing pathogen"
echo "=============================="
if [[ -d ~/.vim ]]; then
    sudo rm -rf ~/.vim
fi

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "=============================="
echo "Installing plugins"
echo "=============================="
# install nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
# install gruvbox theme
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
# install minimalist theme
git clone https://github.com/dikiaap/minimalist ~/.vim/bundle/minimalist
# install vim-javascript
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
# install lightline
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
# install vim-jsx
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx
# install ale
git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale

# install YouCompleteMe
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
apt install build-essential cmake python3-dev -y
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive
python3 install.py --ts-completer

echo "=============================="
echo "Get config from the repository"
echo "=============================="

if [[ -f /tmp/.vimrc ]]; then
    rm /tmp/.vimrc
fi

wget https://raw.githubusercontent.com/acestojanoski/config-files/master/linux/home/.vimrc -O /tmp/.vimrc

echo "=============================="
echo "remove the old config if exists and replace it with the new one"
echo "=============================="

if [[ -f ~/.vimrc ]]; then
    rm ~/.vimrc
fi

cp /tmp/.vimrc ~/
rm /tmp/.vimrc
