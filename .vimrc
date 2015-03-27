" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'spf13/PIV'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdcommenter'

" Vundle
call vundle#end()
filetype plugin indent on

" Colorscheme
colorscheme itg_flat

" Mappings
nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <F8> :TagbarToggle<CR>
map <C-e> <plug>NERDTreeTabsToggle<CR>

cmap w!! w !sudo tee % >/dev/null

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap ; :

" Settings
let mapleader = ","
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
let g:neocomplete#enable_at_startup = 1
let g:neocomplcache_enable_at_startup = 1
let NERDTreeMapOpenInTab='<Enter>'

set nu
set laststatus=2
set mouse=a
set mousehide
set virtualedit=onemore
set history=1000
set hidden
set iskeyword-=.
set iskeyword-=#
set iskeyword-=-
set undofile
set undolevels=1000
set undoreload=1000
set tabpagemax=15
set showmode
set cursorline
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
set backspace=indent,eol,start
set linespace=0
set showmatch
set incsearch
set hlsearch
set winminheight=0
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set scrolljump=5
set scrolloff=3
set foldenable
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces
set splitright
set splitbelow
set pastetoggle=<F12>
set nobackup
set noswapfile

if exists("g:ctrl_user_command")
      unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
set fileencodings=latin1
