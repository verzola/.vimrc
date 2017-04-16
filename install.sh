# verify if git is installed
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

echo -e "\e[44mInstalling Vundle...\e[49m"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "\e[42m✓\e[49m"

echo -e "\e[44mDownloading vimrc...\e[49m"
git clone https://github.com/verzola/.vimrc.git ~/git/vimrc
echo -e "\e[42m✓\e[49m"

echo -e "\e[44mLinking vimrc...\e[49m"
ln -s ~/git/vimrc/.vimrc ~/.vimrc
echo -e "\e[42m✓\e[49m"

echo -e "\e[44mInstalling plugins...\e[49m"
vim +PluginInstall +qall
echo -e "\e[42m✓\e[49m"
