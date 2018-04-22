#!/bin/bash

echo "Installing vim-plug..."
if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
echo "✓"

if [ ! -d "~/projects" ]; then
  echo "Creating ~/projects folder..."
  mkdir ~/projects
  echo "✓"
fi
if [ ! -d ~/projects/vimrc/ ]; then
    echo "Cloning verzola's .vimrc..."
    git clone https://github.com/verzola/.vimrc.git ~/projects/vimrc
    echo "✓"
else
    echo "Updating verzola's .vimrc..."
    cd ~/projects/vimrc
    git pull origin master
    cd ~
    echo "✓"
fi

echo "Linking vimrc..."
if [ ! -L ~/.vimrc ]; then
    ln -s ~/projects/vimrc/.vimrc ~/.vimrc
    ln -s ~/projects/vimrc/.vimrc ~/.config/nvim/init.vim
fi
echo "✓"

echo "Installing plugins..."
vim +PlugInstall +qall
echo "✓"
