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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
call vundle#end()                             " required
filetype plugin indent on                     " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
colorscheme itg_flat                          " Colorscheme
syntax enable                                 " Colored syntax
set number                                    " Show line numbers
set laststatus=2                              " Always show status bar
set mouse=a                                   " Toggle mouse on
set mousehide                                 " Hide mouse when typing
set history=1000                              " Size of command history
set undolevels=1000                           " Size of undo history
set incsearch                                 " Incremental search
set hlsearch                                  " Highlight search
set ignorecase                                " Ignore case in search
set smartcase                                 " Intelligent case in search
set autoindent                                "  Auto indent
set splitright                                " Create vertical split on the right
set splitbelow                                " Create horizontal split on the bottom
" Shortcut for paste mode
set pastetoggle=<leader>pm
set nobackup                                  " Disable backup file 
set nowritebackup                             " Disable backup file
set noswapfile                                " Disable swap file
set virtualedit=onemore                       " Allow cursor to go to end of line
set noshowmode                                " Remove default statusbar
set cursorline                                " Hightlight current line
set showcmd                                   " Show commands being executed
set backspace=indent,eol,start                " Fix backspace
set showmatch                                 " Show matching delimitator
set wildmenu                                  " Autocomplete for commands
set wildmode=list:longest,full                " Autocomplete for commands
set list                                      " Show trailing spaces
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set tabstop=4                                 " show existing tab with 4 spaces width
set shiftwidth=4                              " when indenting with '>', use 4 spaces width
set expandtab                                 " On pressing tab, insert 4 spaces
set encoding=utf8
let mapleader = ","                           " Redefines leader key
let g:mapleader = ","                         " Redefines leader key
set guioptions-=m                             " Remove menu bar
set guioptions-=T                             " Remove toolbar
set guioptions-=r                               " Remove right-hand scroll bar
set guioptions-=L                             " Remove left-hand scroll bar
let hlstate=0                                 " Disable hlsearch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugin Settings
let NERDTreeQuitOnOpen = 0                    " Autoclose when open file
let g:NERDTreeDirArrows=1                     " Simplify the directory tree arrows
let g:airline_theme = 'powerlineish'          " Airline theme
let g:airline_powerline_fonts = 1             " Powerline fonts on airline
let g:airline#extensions#tabline#enabled = 1  " Enable tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Mappings
" Shortcut to open NerdTree
"map <C-e> :NERDTreeToggle<CR>
map <C-e> :NERDTreeMirrorToggle<CR>
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
" Write as sudo
cmap w!! w !sudo tee % >/dev/null
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
" shortcut to fast exit insert mode
inoremap jk <esc>
" remove arrow keys to force to use hjkl
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Auto commands
" Remember last line on file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Auto open nerdtree if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Auto close nerdtree if it is the only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Abbreviations
" insert abbreviations
iabbrev @@ verzola@gmail.com

" command abbreviations
cnoreabbrev W w     " typo alias for write
cnoreabbrev Q q     " typo alias for quit
cnoreabbrev WQ wq   " typo alias for write and quit
cnoreabbrev X x     " typo alias for write and quit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" End
