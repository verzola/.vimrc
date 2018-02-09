#!/bin/bash

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
