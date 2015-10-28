# Verifica se tem Git
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

# Instala o Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Baixa o .vimrc
git clone https://github.com/verzola/.vimrc.git ~/git/vimrc

# Cria link simbólico do .vimrc
ln -s ~/git/vimrc/.vimrc ~/.vimrc

# Baixa o colorscheme itg_flat
wget -P ~/.vim/colors https://raw.githubusercontent.com/cdmedia/itg_flat_vim/master/colors/itg_flat.vim

# Instala os plugins
vim +PluginInstall +qall

# Limpa o console
clear
