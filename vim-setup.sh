#!/bin/bash

# install vim
sudo apt install vim

# install pathogen
if [[ -d ~/.vim ]]; then
    sudo rm -rf ~/.vim
fi

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
# install gruvbox theme
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
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
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive
sudo python3 install.py --ts-completer

# get config from my repository
if [[ -f /tmp/.vimrc ]]; then
    sudo rm /tmp/.vimrc
fi

sudo wget https://raw.githubusercontent.com/acestojanoski/config-files/master/linux/home/.vimrc -O /tmp/.vimrc

# remove old config if exists and replace it with the new one
if [[ -f ~/.vimrc ]]; then
    sudo rm ~/.vimrc
fi

sudo cp /tmp/.vimrc ~/
sudo rm /tmp/.vimcr
