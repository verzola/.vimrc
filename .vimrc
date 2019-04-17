" verzola's .vimrc
" https://github.com/verzola/.vimrc
" released under the WTFPL v2 license
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'Valloric/YouCompleteMe'                                     " Auto complete
  Plug 'airblade/vim-gitgutter'                                     " Git diff in the gutter
  Plug 'airblade/vim-rooter'                                        " Find project root
  Plug 'dart-lang/dart-vim-plugin'                                  " Dart support
  Plug 'dracula/vim', { 'as': 'dracula' }                           " Dracula colorscheme
  Plug 'easymotion/vim-easymotion'                                  " Fast motion
  Plug 'editorconfig/editorconfig-vim'                              " Editorconfig support
  Plug 'jistr/vim-nerdtree-tabs'                                    " NERDTree tabs
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy finder
  Plug 'junegunn/fzf.vim'                                           " Fuzzy finder vim integration
  Plug 'junegunn/goyo.vim'                                          " Distraction free mode
  Plug 'mattn/emmet-vim'                                            " Emmet
  Plug 'mhinz/vim-startify'                                         " Fancy start screen for Vim
  Plug 'mustache/vim-mustache-handlebars'                           " Handlebars support
  Plug 'mxw/vim-jsx'                                                " JSX support
  Plug 'othree/html5.vim'                                           " Better HTML5 support
  Plug 'pangloss/vim-javascript'                                    " Better JS support
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }            " Prettier support
  Plug 'ryanoasis/vim-devicons'                                     " Glyphs and icons
  Plug 'scrooloose/nerdtree'                                        " Tree explorer
  Plug 'terryma/vim-multiple-cursors'                               " Multiple cursors support
  Plug 'thosakwe/vim-flutter'                                       " Flutter support
  Plug 'tpope/vim-commentary'                                       " Fast commenter
  Plug 'tpope/vim-fugitive'                                         " Git wrapper
  Plug 'tpope/vim-repeat'                                           " Repeat plugin actions
  Plug 'tpope/vim-surround'                                         " Fast surround
  Plug 'vim-airline/vim-airline'                                    " Light tabline
  Plug 'w0rp/ale'                                                   " Async linter
  Plug 'yggdroot/indentline'                                        " Display indention levels
  Plug 'tpope/vim-sensible'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Checks
" Create undo-dir if it does not exists
if !isdirectory($HOME."/.vim-undo")
  call mkdir($HOME."/.vim-undo", "", 0700)
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
" Colors
colorscheme dracula                                 " Change colorscheme
set background=dark                                 " Use colors that suit a dark background
set termguicolors                                   " Enable 24-bit colors on terminal
"syntax enable                                       " Enable syntax highlighting

" Basic
"set display+=lastline                               " Always try to show a paragraph’s last line
set encoding=utf-8                                  " Set encoding to utf-8
set number                                          " Show line numbers on the sidebar

" Maps
let mapleader = ","                                 " Redefines leader key
set pastetoggle=<F12>                                " Key to toggle paste mode

" Autocomplete
"set complete-=i                                     " Limit the files searched for auto-completes
set completeopt=longest,menuone                     " Show popup with completions
"set wildmenu                                        " Autocomplete menu
set wildmode=list:longest,full                      " Autocomplete for commands

" Editting
"set autoread                                        " Automatically re-read files if unmodified inside Vim
"set backspace=indent,eol,start                      " Allow backspacing over indention, line breaks and insertion start
set colorcolumn=0                                   " Set column rule
set cursorline                                      " Highlight the line currently under cursor
set formatoptions+=j                                " Delete comment character when joining commented lines
set hidden                                          " Hide files in the background instead of closing them
set list                                            " Hightlight unwanted spaces
"set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
"set nrformats-=octal                                " Interpret octal as decimal when incrementing numbers
set scrolloff=5                                     " The number of screen lines to keep above and below the cursor
set showmatch                                       " Show matching delimitator
set sidescrolloff=5                                 " The number of screen columns to keep to the left and right of the cursor
set virtualedit=onemore                             " Allow cursor to go to end of line

" Status bar
set laststatus=0                                    " Do not show default status bar
set noruler                                         " Do not show cursor position
set noshowcmd                                       " Do not show commands letters
set noshowmode                                      " Do not show actual mode

" Backup
set nobackup                                        " Disable backup files
set noswapfile                                      " Disable swap files
set nowritebackup                                   " Disable backup files

" Undo
set undodir=~/.vim-undo                             " Set undofiles folder
set undofile                                        " Create undo file to allow undo across exits
set undolevels=1000                                 " Size of undo history

" History
"set history=1000                                    " Increase the undo limit

" Bell
set belloff=all                                     " Remove annoying bell

" Mouse
set mouse=a                                         " Enable mouse for scrolling and resizing
set mousehide                                       " Hide mouse when typing

" Split
set splitbelow                                      " Create horizontal split on the bottom
set splitright                                      " Create vertical split on the right

" Indentation
"filetype plugin indent on                           " Enable indentation rules that are file-type specific
"set autoindent                                      " New lines inherit the indentation of previous lines.
set copyindent                                      " Copy indentation from existing lines
set expandtab                                       " Convert tabs to spaces
set linebreak                                       " Avoid wrapping a line in the middle of a word
set shiftround                                      " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=2                                    " When shifting, indent using four spaces
set smartindent                                     " Smart indent
"set smarttab                                        " Insert “tabstop” number of spaces when the “tab” key is pressed
set softtabstop=2                                   " Indentation setting
set tabstop=2                                       " Indent using four spaces
set nowrap                                          " Disable line wrapping

" Search
set hlsearch                                        " Enable search highlighting
set ignorecase                                      " Ignore case when searching
"set incsearch                                       " Incremental search that shows partial matches
set smartcase                                       " Automatically switch search to case-sensitive when search query contains an uppercase letter

" Performance
set lazyredraw                                      " Don’t update screen during macro and script execution
set updatetime=250                                  " The length of time Vim waits after you stop typing before it triggers the plugin

" Vim only settings
"set ttimeout
"set ttimeoutlen=100
set ttyfast                                         " Fast terminal connection (only for vim)

" GUI-only options
if has("gui_running")
  set guioptions-=m                                 " Remove menu bar
  set guioptions-=T                                 " Remove toolbar
  set guioptions-=r                                 " Remove right-hand scroll bar
  set guioptions-=L                                 " Remove left-hand scroll bar

  " Set font
  if has('win32')
    set guifont=FantasqueSansMono_Nerd_Font_Mon:h11:cANSI:qDRAFT
  endif
  if has('unix')
    set guifont=FantasqueSansMono\ NF\ 12
  endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Mappings
" Edit my .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>

" Source my .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" Clear search
"nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Remove arrow keys
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>

" Map arrow keys to scroll
noremap <Down> <c-e>
noremap <Up> <c-y>
noremap <Right> <c-e>
noremap <Left> <c-y>

" System clipboard mappings
vmap <leader>y "+y
vmap <leader>p "+p
vmap <leader>P "+P
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P

" Fast write
nnoremap <leader>w :w!<CR>

" Trip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Fast quit
nnoremap <leader>q :q!<CR>

" Fast write & quit
nnoremap <leader>x :x<CR>

" Force save as sudo
cmap w!! w !sudo tee % >/dev/null

" Move to the next buffer
nmap <leader>l :bnext<CR>
nnoremap <PageDown> :bnext<CR>

" Move to the previous buffer
nmap <leader>k :bprevious<CR>
nnoremap <PageUp>   :bprevious<CR>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>

" Remap tab to bracket in normal mode
nnoremap <tab> %

" Remap tab to match in visual mode
vnoremap <tab> %

" Shortcut to fast exit insert mode
inoremap jk <esc>

" Relative numbering
nnoremap <leader>r :set relativenumber!<CR>

" Map to sort in visual mode
vnoremap <leader>s :'<,'>sort<CR>

" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Abbreviations

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Auto commands
" Remember last line on file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Indentation settings for typescript
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab

" Auto insert mode if terminal
autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTree
let g:NERDTreeAutoDeleteBuffer = 1               " Automatically delete the buffer of the file you just deleted with NERDTree:
let g:NERDTreeMinimalUI = 1                      " Change to minimal UI
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeQuitOnOpen = 1                     " Quit NERDTree after open file
let g:NERDTreeShowBookmarks = 1                  " Show bookmarks on NERDTree
let g:NERDTreeShowHidden = 1                     " Show hidden files on NERDTree
let g:NERDTreeShowLineNumbers = 1                " Show line numbers on NERDTree
let g:nerdtree_tabs_open_on_gui_startup = 0      " Do not show NERDTree on startup

" Auto close NERDTree if it is the only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle NERDtree
noremap <C-e> :NERDTreeMirrorToggle<CR>

" Bookmark file/folder in NERDTree
nnoremap <leader>nb :Bookmark<CR>

" Find current file on NERDTree
noremap <silent> <leader>nf :NERDTreeFind<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Airline
let g:airline#extensions#tabline#enabled = 1     " Enable airline because it is disabled by default
let g:airline#extensions#tabline#fnamemod = ':t' " Show full file name instead of abbreviations
let g:airline_powerline_fonts = 1                " Use powerline fonts for airline
let g:airline_theme='dracula'                    " Match airline theme with vim colorscheme

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" DevIcons
let g:webdevicons_conceal_nerdtree_brackets = 1  " Do not show brackets around icons in NERDTree

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Emmet
let g:user_emmet_leader_key='<Tab>' " Use tab to expand emmet expressions

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Ale
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_sign_error = '' " Less aggressive than the default '>>'
let g:ale_sign_warning = ''
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Fugitive
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gu :Gpull<CR>
nnoremap <leader>gbl :Gblame<CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vim plug
" Install plugins
nnoremap <leader>pi :PlugInstall<CR>
" Update plugins
nnoremap <leader>pu :PlugUpdate<CR>
" Clean removed plugins
nnoremap <leader>pc :PlugClean<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Fzf
" Open fzf using ctrlp shortcut
nmap <C-p> :Files<CR>
imap <C-p> <Esc>:Files<CR>
vmap <C-p> <Esc>:Files<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Startify
" Startify on new tab
autocmd! TabNew * Startify

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Nvim
" Split terminal (nvim only)
if has('nvim')
    " Open terminal horizontally
    nmap <leader>t :split term://zsh<CR>

    " Open terminal vertically
    nmap <leader>vt :vsplit term://zsh<CR>

    " Map Esc to leave terminal mode
    tnoremap <Esc> <C-\><C-n>

    " Navigate splits with Alt+hjkl
    tnoremap <A-h> <C-\><C-N><C-w>h
    tnoremap <A-j> <C-\><C-N><C-w>j
    tnoremap <A-k> <C-\><C-N><C-w>k
    tnoremap <A-l> <C-\><C-N><C-w>l
    inoremap <A-h> <C-\><C-N><C-w>h
    inoremap <A-j> <C-\><C-N><C-w>j
    inoremap <A-k> <C-\><C-N><C-w>k
    inoremap <A-l> <C-\><C-N><C-w>l
    nnoremap <A-h> <C-w>h
    nnoremap <A-j> <C-w>j
    nnoremap <A-k> <C-w>k
    nnoremap <A-l> <C-w>l
else
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Devicons
