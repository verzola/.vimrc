echo -e "Installing Vundle..."
if [ ! -d "~/.vim/bundle/Vundle.vim/" ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo -e "✓"

echo -e "Downloading vimrc..."
if [ ! -d "~/git/vimrc/" ]; then
    git clone https://github.com/verzola/.vimrc.git ~/git/vimrc
fi
echo -e "✓"

echo -e "Linking vimrc..."
ln -s ~/git/vimrc/.vimrc ~/.vimrc
echo -e "✓"

echo -e "Installing plugins..."
vim +PluginInstall +qall
echo -e "✓"
