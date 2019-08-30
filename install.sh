#!/bin/bash
set -e

mkdir -p ~/projects/verzola

echo "Installing vim-plug..."
if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
echo "✓"

if [ ! -d ~/projects/verzola/vimrc ]; then
    echo "Cloning verzola's .vimrc..."
    git clone https://github.com/verzola/.vimrc.git ~/projects/verzola/vimrc
    echo "✓"
else
    echo "Updating verzola's .vimrc..."
    git -C ~/projects/verzola/vimrc pull origin master
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
