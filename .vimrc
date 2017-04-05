" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Plugins
    " Sidebar to browse project files
    Plugin 'scrooloose/nerdtree'
    " CTRL+P (Goto file)
    Plugin 'ctrlpvim/ctrlp.vim'
    " Status bar
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    " Integration with PHP
    Plugin 'spf13/PIV'
    " Integration with Git
    Plugin 'tpope/vim-fugitive'
    " Git Gutter
    Plugin 'airblade/vim-gitgutter'
    " Emmet
    Plugin 'mattn/emmet-vim'
    " DevIcons
    Plugin 'ryanoasis/vim-devicons'
    " Colorscheme ITG_FLAT
    Plugin 'cdmedia/itg_flat_vim'
    " Python
    Plugin 'davidhalter/jedi-vim'
    " Autocomplete engine
    Plugin 'Valloric/YouCompleteMe'
" Vundle
call vundle#end()
filetype plugin indent on

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
" Mostra espaço em branco
set list
set listchars=tab:â€º\ ,trail:â€¢,extends:#,nbsp:.
" 4 espaços em vez de tab
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set encoding=utf8
" Redefine tecla leader
let mapleader = ","
let g:mapleader = ","

" Alias for typos
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq

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

" Auto source vimrc on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

" Shortcut to navigate between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Toggle highlight search
nnoremap <F3> :set hlsearch!<CR>

" Write as sudo
cmap w!! w !sudo tee % >/dev/null

" Remember line of files
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" NeoComplete
    " Enable neocomplete on startup
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplcache_enable_at_startup = 1

" NerdTree
    " Atalho para abrir
    map <C-e> :NERDTreeToggle<CR>
    " Fecha quando abrir um arquivo
    let NERDTreeQuitOnOpen = 0
    " Simplify the directory tree arrows
    let g:NERDTreeDirArrows=0

" Airline
    " Theme
    let g:airline_theme = 'powerlineish'
    " Enable
    let g:airline#extensions#tabline#enabled = 1
    " Powerline fonts
    let g:airline_powerline_fonts = 1

" Fugitive
    " add
    nnoremap <space>ga :Git add %:p<CR><CR>
    " status
    nnoremap <space>gs :Gstatus<CR>
    " commit
    nnoremap <space>gc :Gcommit -v -q<CR>
    " commit
    nnoremap <space>gt :Gcommit -v -q %:p<CR>
    " diff
    nnoremap <space>gd :Gdiff<CR>
    " edit
    nnoremap <space>ge :Gedit<CR>
    " push
    nnoremap <space>gps :Gpush<CR>
    " pull
    nnoremap <space>gpl :Gpull<CR>
    " branch
    nnoremap <space>gb :Git branch<Space>
    " blame
    nnoremap <space>gbl :Gblame<CR>
    " checkout
    nnoremap <space>go :Git checkout<Space>
    " read
    nnoremap <space>gr :Gread<CR>
    " write
    nnoremap <space>gw :Gwrite<CR><CR>
    " ?
    nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
    " grep
    nnoremap <space>gp :Ggrep<Space>
    " move
    nnoremap <space>gm :Gmove<Space>
    " browse
    nnoremap <space>gwb :Gbrowse<CR>

    " Use git file index that is faster than default's
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
