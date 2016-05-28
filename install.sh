# Verifica se tem Git
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

# Função para baixar
download() {
    if hash wget 2>/dev/null; then
        wget "$@"
    else
        curl -O "$@"
    fi
}

echo -e "\e[44mInstalando o Vundle...\e[49m"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "\e[42m✓\e[49m"

echo -e "\e[44mBaixando configuração...\e[49m"
git clone https://github.com/verzola/.vimrc.git ~/git/vimrc
echo -e "\e[42m✓\e[49m"

echo -e "\e[44mCriando link simbólico para configuração...\e[49m"
ln -s ~/git/vimrc/.vimrc ~/.vimrc
echo -e "\e[42m✓\e[49m"

echo -e "\e[44mCriando pasta de temas...\e[49m"
if [ ! -d ~/.vim/colors ];then
    mkdir ~/.vim/colors
fi
echo -e "\e[42m✓\e[49m"

# Entra na pasta de temas
cd ~/.vim/colors

echo -e "\e[44mBaixando tema itg_flat...\e[49m"
download https://raw.githubusercontent.com/cdmedia/itg_flat_vim/master/colors/itg_flat.vim
echo -e "\e[42m✓\e[49m"

echo -e "\e[44mInstalando plugins...\e[49m"
vim +PluginInstall +qall
echo -e "\e[42m✓\e[49m"
