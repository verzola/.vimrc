# verzola's .vimrc
my vimrc and 1 cmd auto installer

![Image of my vim](https://raw.githubusercontent.com/verzola/.vimrc/master/vimux.png)

## requirements
- git
- vim

## recommended
- https://github.com/ryanoasis/nerd-fonts -> icons on nerdtree and arrows on airline
- https://github.com/verzola/.tmux -> plays nice together

## install
this script installs Vundle, clone this repo and creates a symbolic link in ~/.vimrc to ~/git/vimrc/.vimrc
```sh
$ curl -L https://goo.gl/10StQU | bash
```

## features
- vundle to manage plugins
- opinative defaults (my preference)
- detailed comments on almost every line of vimrc
- organized in sections (plugins, settings, plugin settings, abbreviations, mappings & auto commands)
- php integration
- git integration
- :w!! to save as sudo
- 4 spaces indentation
- abbreviations for typo in commands (:W, :Q, :X)
- remove arrows to force use of hjkl
- arrow keys mapped to scroll
- save on focus lost (gvim only)
- easy paste

## Maps
|    Map    |         Meaning         |
|-----------|-------------------------|
| ctrl+e    | toggle nerdtree         |
| gt        | next tab                |
| gT        | prev tab                |
| ctrl+p    | open CtrlP              |
| ctrl+n    | find next occurrence    |
| ctrl+h    | go a split left         |
| ctrl+l    | go a split right        |
| ctrl+j    | go a split below        |
| ctrl+k    | go a split upper        |
| ,         | leader key              |
| leader+w  | save                    |
| leader+q  | quit                    |
| leader+x  | save&quit               |
| leader+ev | edit vimrc              |
| leader+sv | source vimrc            |
| F12       | toggle paste mode       |
| leader+h  | toggle search highlight |
| leader+pi | plugin install          |
| leader+nb | bookmark in nerdtree    |
| leader+ga | git add                 |
| leader+gs | git status              |
| leader+gc | git commit              |
| leader+gd | git diff                |
| leader+gp | git push                |
| leader+gu | git pull                |
| leader+gb | git branch              |
| leader+gbl| git blame               |
| leader+go | git checkout            |
| leader+gl | git log                 |
| leader+W  | trim whitespaces        |
| leader+nb | bookmarm in nerdtree    |
| leader+nf | find in nerdtree        |
| leader+pi | plugin install          |
| leader+y  | copy visual selection to system clipboard |
| leader+d  | delete visual selection & copy to system clipboard |
| leader+p  | paste from system clipboard |
| leader+P  | paste from system clipboard |
| jk        | leave insert mode       |
| space     | center screen           |
| Y         | yank line               |
| gV        | visual select pasted    |
| Up        | scroll up               |
| Down      | scroll down             |

## plugins
- VundleVim/Vundle.vim
- cdmedia/itg_flat_vim
- scrooloose/nerdtree
- scrooloose/nerdcommenter
- jistr/vim-nerdtree-tabs
- vim-airline/vim-airline
- vim-airline/vim-airline-themes
- tpope/vim-fugitive
- tpope/vim-surround
- airblade/vim-gitgutter
- mattn/emmet-vim
- ctrlpvim/ctrlp.vim
- terryma/vim-multiple-cursors
- ryanoasis/vim-devicons
- tpope/vim-repeat
- StanAngeloff/php.vim
- easymotion/vim-easymotion

## contributing
if you find a problem or have a suggestion, please open an issue.
