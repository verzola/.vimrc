#!/bin/bash
echo "Installing Vundle..."
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo "✓"

echo "Downloading vimrc..."
if [ ! -d ~/git/vimrc/ ]; then
    git clone https://github.com/verzola/.vimrc.git ~/git/vimrc
else
    cd ~/git/vimrc
    git pull origin master
    cd ~
fi
echo "✓"

echo "Linking vimrc..."
if [ ! -L ~/.vimrc ]; then
    ln -s ~/git/vimrc/.vimrc ~/.vimrc
fi
echo "✓"

echo "Installing plugins..."
vim +PluginInstall +qall
echo "✓"
