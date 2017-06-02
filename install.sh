#!/bin/bash

echo "Installing dependencies..."
sudo apt install ncurses-dev jq curl wget
echo "✓"

echo "Compiling Vim..."
VIM_LATEST_TAG=$(curl https://api.github.com/repos/vim/vim/tags -s | jq -r '.[0].name')

wget https://github.com/vim/vim/archive/$VIM_LATEST_TAG.zip
unzip $VIM_LATEST_TAG.zip
cd vim-${VIM_LATEST_TAG:1}/src
./configure
make
sudo make install
echo "✓"

echo "Installing Vundle..."
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo "✓"

echo "Downloading vimrc..."
if [ ! -d "~/projects" ]; then
  mkdir ~/projects
fi
if [ ! -d ~/projects/vimrc/ ]; then
    git clone https://github.com/verzola/.vimrc.git ~/projects/vimrc
else
    cd ~/projects/vimrc
    git pull origin master
    cd ~
fi
echo "✓"

echo "Linking vimrc..."
if [ ! -L ~/.vimrc ]; then
    ln -s ~/projects/vimrc/.vimrc ~/.vimrc
fi
echo "✓"

echo "Installing plugins..."
vim +PluginInstall +qall
echo "✓"
