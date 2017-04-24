"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""" https://github.com/verzola/.vimrc """"""""""""""
""" released under the WTFPL v2 license, by Gustavo Verzola """
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
set nocompatible                              " be iMproved, required
filetype off                                  " required
set rtp+=~/.vim/bundle/Vundle.vim             " set the runtime path to include Vundle and initialize
call vundle#begin()                           " initialize Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugins
Plugin 'VundleVim/Vundle.vim'                 " Vundle itself
Plugin 'cdmedia/itg_flat_vim'                 " Colorscheme
Plugin 'scrooloose/nerdtree'                  " Sidebar to browse files
Plugin 'jistr/vim-nerdtree-tabs'              " Independent nerdtree
Plugin 'vim-airline/vim-airline'              " Status bar
Plugin 'vim-airline/vim-airline-themes'       " Status bar themes
Plugin 'tpope/vim-fugitive'                   " Integration with Git
Plugin 'airblade/vim-gitgutter'               " Git Gutter
Plugin 'tpope/vim-surround'                   " Surround
Plugin 'mattn/emmet-vim'                      " Emmet
Plugin 'ctrlpvim/ctrlp.vim'                   " CTRL+P (Goto file)
Plugin 'terryma/vim-multiple-cursors'         " Multiple cursors sublime like
Plugin 'ryanoasis/vim-devicons'               " DevIcons
Plugin 'tpope/vim-repeat'                     " Repeat plugin maps
Plugin 'StanAngeloff/php.vim'                 " PHP integration
Plugin 'scrooloose/nerdcommenter'             " Fast commenter
Plugin 'easymotion/vim-easymotion'            " Fast move
Plugin 'tmux-plugins/vim-tmux-focus-events'   " FocusLost for terminal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
call vundle#end()                             " required
filetype plugin indent on                     " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
colorscheme itg_flat                          " Colorscheme
syntax enable                                 " Colored syntax
set autoindent                                "  Auto indent
set autoread                                  " Auto read if changes are detected
set autowrite                                 " Auto save when switch buffer
set backspace=indent,eol,start                " Fix backspace
set colorcolumn=80                            " Set column rule
set complete-=i                               " ?
set completeopt=longest,menuone               " ?
set copyindent                                " ?
set cursorline                                " Hightlight current line
set encoding=utf8
set expandtab                                 " On pressing tab, insert 4 spaces
set guioptions-=L                             " Remove left-hand scroll bar
set guioptions-=T                             " Remove toolbar
set guioptions-=m                             " Remove menu bar
set guioptions-=r                             " Remove right-hand scroll bar
set hidden                                    " Hidden buffers
set history=1000                              " Size of command history
set hlsearch                                  " Highlight search
set ignorecase                                " Ignore case in search
set incsearch                                 " Incremental search
set laststatus=2                              " Always show status bar
set lazyredraw                                " Don't redraw while executing macros or registries
set list                                      " Show whitespace
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set mouse=a                                   " Toggle mouse on
set mousehide                                 " Hide mouse when typing
set nobackup                                  " Disable backup file 
set noerrorbells                              " No bell sound
set noshowmode                                " Remove default statusbar
set noswapfile                                " Disable swap file
set notimeout                                 " ?
set nowrap                                    " Don't wrap lines
set nowritebackup                             " Disable backup file
set nrformats-=octal                          " ?
set number                                    " Show line numbers
set pastetoggle=<leader>pm                    " Shortcut for paste mode
set regexpengine=1                            " Regex in search
set ruler                                     " Show ruler
set shiftround                                " ?
set shiftwidth=4                              " when indenting with '>', use 4 spaces width
set showcmd                                   " Show commands being executed
set showmatch                                 " Show matching delimitator
set smartcase                                 " Intelligent case in search
set smarttab                                  " ?
set splitbelow                                " Create horizontal split on the bottom
set splitright                                " Create vertical split on the right
set tabstop=4                                 " show existing tab with 4 spaces width
set timeoutlen=10                             " ?
set title                                     " ?
set ttimeout                                  " ?
set ttyfast                                   " ?
set undolevels=1000                           " Size of undo history
set virtualedit=onemore                       " Allow cursor to go to end of line
set visualbell                                " Blink screen on bell
set wildmenu                                  " Autocomplete for commands
set wildmode=list:longest,full                " Autocomplete for commands
" never do this again --> :set paste <ctrl-v> :set no paste
let &t_EI .= "\<Esc>[?2004l"
let &t_SI .= "\<Esc>[?2004h"
let g:mapleader = ","                         " Redefines leader key
let hlstate=0                                 " Disable hlsearch
let mapleader = ","                           " Redefines leader key
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTree
let NERDTreeDirArrows=1                       " Simplify the directory tree arrows
let NERDTreeQuitOnOpen=0                      " Autoclose when open file
let NERDTreeShowBookmarks=1                   " show bookmarks on nerdtree
let NERDTreeShowHidden=1                      " show hidden files on nerdtreee
let NERDTreeShowLineNumbers=1                 " show line numbers on nerdtreee
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Airline
let g:airline#extensions#tabline#enabled = 1  " Enable tabs
let g:airline_powerline_fonts = 1             " Powerline fonts on airline
let g:airline_theme = 'powerlineish'          " Airline theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" CTRLP
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp' " Cache folder
let g:ctrlp_clear_cache_on_exit = 0           " Don't clear cache on exit
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files=0                       " Do not limit the number of searchable files
let g:ctrlp_max_height = 10                   " Maxiumum height of match window
let g:ctrlp_mruf_max=450                      " Number of recently opened files
let g:ctrlp_switch_buffer = 'et'              " Jump to a file if it's open already
let g:ctrlp_use_caching = 1                   " Turn caching on
let g:ctrlp_working_path_mode = 'ra'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Mappings
" Shortcut to open NerdTree
"map <C-e> :NERDTreeToggle<CR>
map <C-e> :NERDTreeMirrorToggle<CR>
" Find current file on nerdtree
noremap <leader>nf :NERDTreeFind<cr>
" Shortcut to write
nnoremap <leader>w :w<CR>
" Shortcut to quit
nnoremap <leader>q :q!<CR>
" Shortcut to write and quit
nnoremap <leader>x :x<CR>
" Shortcut to edit my .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
" Shortcut to source my .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
" Shortcut to disable highlight search
nnoremap <leader>h :set hlsearch! hlsearch?<CR>
" Install plugins
nnoremap <leader>pi :PluginInstall<CR>
" Bookmark in nerdtree
nnoremap <leader>nb :Bookmark<CR>
" Shortcut to navigate between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Center the screen
nnoremap <space> zz
" Act like D and C
nnoremap Y y$ "
" Fugitive mappings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gu :Gpull<CR>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>gbl :Gblame<CR>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
" Remove arrow keys to force to use hjkl
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Trip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Reselect last selection
nnoremap <leader>v V`]
" Shortcut to fast exit insert mode
inoremap jk <esc>
" Write as sudo
cmap w!! w !sudo tee % >/dev/null
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Auto commands
" Save on focus lost
autocmd FocusLost * :wa
" Remember last line on file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Auto open nerdtree if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Auto close nerdtree if it is the only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Abbreviations
" insert abbreviations
iabbrev @@ verzola@gmail.com
" command abbreviations
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq
cnoreabbrev X x
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" End
