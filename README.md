# verzola's .vimrc
my vimrc and 1 cmd auto installer

![Image of my vim](https://raw.githubusercontent.com/verzola/.vimrc/master/vimux.png)

## install
```sh
$ curl -L https://raw.githubusercontent.com/verzola/.vimrc/master/install.sh | sh
```

## features
- abbreviations for typo in commands (:W, :Q, :X)
- fast shortcuts with leader key
- :w!! to save as sudo

### maps & shortcuts
- ctrl+e -> toggle nerdtree
- ctrl+p -> go to file
- ctrl+n -> select next (multiple cursors)
- gt -> next tab
- gT -> prev tab
- leader key -> ,
- leader+w -> save
- leader+q -> quit
- leader+x -> save&quit
- leader+ev -> edit vimrc
- leader+sv -> source vimrc
- leader+p -> toggle paste mode
- leader+h -> toggle search highlight
- ctrl + h -> go a split left
- ctrl + l -> go a split right
- ctrl + j -> go a split below
- ctrl + k -> go a split upper
- <space>ga -> git add
- <space>gs -> git status
- <space>gc -> git commit
- <space>gd -> git diff
- <space>gp -> git push
- <space>gu -> git pull
- <space>gb -> git branch
- <space>gbl -> git blame
- <space>go -> git checkout
- <space>gl -> git log

### plugins
- VundleVim/Vundle.vim
- cdmedia/itg_flat_vim
- scrooloose/nerdtree
- ryanoasis/vim-devicons
- ctrlpvim/ctrlp.vim
- vim-airline/vim-airline
- vim-airline/vim-airline-themes
- tpope/vim-fugitive
- airblade/vim-gitgutter
- spf13/PIV
- mattn/emmet-vim
- davidhalter/jedi-vim
- tpope/vim-surround
- pangloss/vim-javascript
- terryma/vim-multiple-cursors
- mxw/vim-jsx

