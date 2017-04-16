"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""  verzola's vimrc  """"""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugins
" Vundle itself
Plugin 'VundleVim/Vundle.vim'
" Sidebar to browse project files
Plugin 'scrooloose/nerdtree'
" CTRL+P (Goto file)
Plugin 'ctrlpvim/ctrlp.vim'
" Status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Integration with Git
Plugin 'tpope/vim-fugitive'
" Git Gutter
Plugin 'airblade/vim-gitgutter'
" Integration with PHP
Plugin 'spf13/PIV'
" Emmet
Plugin 'mattn/emmet-vim'
" DevIcons
Plugin 'ryanoasis/vim-devicons'
" Colorscheme ITG_FLAT
Plugin 'cdmedia/itg_flat_vim'
" Python
Plugin 'davidhalter/jedi-vim'
" Surround
Plugin 'tpope/vim-surround'
" Move around easily
Plugin 'easymotion/vim-easymotion'
" JS integration
Plugin 'pangloss/vim-javascript'
" Multiple cursors sublime like
Plugin 'terryma/vim-multiple-cursors'
" JSX integration
Plugin 'mxw/vim-jsx'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
" Colorscheme
colorscheme itg_flat
" Colored syntax
syntax enable
" Show line numbers
set nu
" Always show status bar
set laststatus=2
" Toggle mouse on
set mouse=a
" Hide mouse when typing
set mousehide
" Size of command history
set history=1000
" Size of undo history
set undolevels=1000
" Incremental search
set incsearch
" Highlight search
set hlsearch
" Ignore case in search
set ignorecase
" Intelligent case in search
set smartcase
" Auto indent
set autoindent
" Create vertical split on the right
set splitright
" Create horizontal split below
set splitbelow
" Shortcut for paste mode
set pastetoggle=<F12>
" Disable backup file
set nobackup
set nowritebackup
" Disable swap file
set noswapfile
" Allow cursor to go to end of line
set virtualedit=onemore
" Remove default statusbar
set noshowmode
" Hightlight current line
set cursorline
" Show commands being executed
set showcmd
" Fix backspace
set backspace=indent,eol,start
" Show matching delimitator
set showmatch
" Autocomplete for commands
set wildmenu
set wildmode=list:longest,full
" Show trailing spaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set encoding=utf8
" Redefines leader key
let mapleader = ","
let g:mapleader = ","
" Remove everything from gui except vim
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugin Settings
" Shortcut to open NerdTree
map <C-e> :NERDTreeToggle<CR>
" Autoclose when open file
let NERDTreeQuitOnOpen = 0
" Simplify the directory tree arrows
let g:NERDTreeDirArrows=1
" Airline theme
let g:airline_theme = 'powerlineish'
" Powerline fonts on airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Abbreviations
" Alias for typos
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Mappings
" Shortcut to write
nmap <Leader>w :w<CR>
" Shortcut to quit
nmap <Leader>q :q!<CR>
" Shortcut to write and quit
nmap <Leader>x :x<CR>
" Shortcut to edit my .vimrc
nmap <Leader>ev :tabedit $MYVIMRC<CR>
" Shortcut to disable highlight search
nmap <Leader><space> :nohlsearch<CR>
map vp :exec "w !vpaste ft=".&ft<CR>
vmap vp <ESC>:exec "'<,'>w !vpaste ft=".&ft<CR>
" Shortcut to navigate between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Toggle highlight search
nnoremap <F3> :set hlsearch!<CR>
" Write as sudo
cmap w!! w !sudo tee % >/dev/null
" Fugitive mappings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gps :Gpush<CR>
nnoremap <leader>gpl :Gpull<CR>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>gbl :Gblame<CR>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gwb :Gbrowse<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Auto commands
" Auto source vimrc on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

" Remember last line on file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
