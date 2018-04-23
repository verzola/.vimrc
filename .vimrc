" verzola's custom .vimrc
" https://github.com/verzola/.vimrc
" released under the WTFPL v2 license
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'mhinz/vim-startify'                   " The fancy start screen for Vim
Plug 'scrooloose/nerdtree'                  " A tree explorer plugin for vim
Plug 'jistr/vim-nerdtree-tabs'              " NERDTree and tabs together in Vim, painlessly
Plug 'airblade/vim-gitgutter'               " A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'tpope/vim-repeat'                     " Enable repeating supported plugin maps with .
Plug 'tpope/vim-fugitive'                   " A Git wrapper so awesome, it should be illegal
Plug 'scrooloose/nerdcommenter'             " Vim plugin for intensely orgasmic commenting
Plug 'easymotion/vim-easymotion'            " Vim motions on speed!
Plug 'kshenoy/vim-signature'                " Plugin to toggle, display and navigate marks
Plug 'ryanoasis/vim-devicons'               " Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
Plug 'terryma/vim-multiple-cursors'         " True Sublime Text style multiple selections for Vim
Plug 'mattn/emmet-vim'                      " Emmet for vim
Plug 'w0rp/ale'                             " Asynchronous Lint Engine
Plug 'yggdroot/indentline'                  " A vim plugin to display the indention levels with thin vertical lines
Plug 'pangloss/vim-javascript'              " Vastly improved Javascript indentation and syntax support in Vim
Plug 'alampros/vim-styled-jsx'              " Vim syntax for [styled-jsx]

" Plugins that are already in Oni or conflict with a Oni funcionality
if !exists('g:gui_oni')
    Plug 'joshdick/onedark.vim'           " A dark Vim/Neovim color scheme inspired by Atom's One Dark syntax theme
    Plug 'wellle/targets.vim'             " Vim plugin that provides additional text objects
    Plug 'vim-airline/vim-airline'        " Lean & mean status/tabline for vim that's light as air
    Plug 'vim-airline/vim-airline-themes' " A collection of themes for vim-airline
    Plug 'ctrlpvim/ctrlp.vim'             " Fuzzy file, buffer, mru, tag, etc finder
    Plug 'tpope/vim-commentary'           " Comment stuff out
    Plug 'tpope/vim-unimpaired'           " Pairs of handy bracket mappings
    Plug 'tpope/vim-surround'             " Quoting/parenthesizing made simple
    Plug 'leafgarland/typescript-vim'     " Typescript syntax files for Vim
    Plug 'peitalin/vim-jsx-typescript'          " React JSX syntax highlighting for vim and Typescript
endif

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Checks
" Create undo-dir if it does not exists
if !isdirectory($HOME."/.vim-undo")
    call mkdir($HOME."/.vim-undo", "", 0700)
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
" Colors
colorscheme onedark                         " Change colorscheme
set background=dark                         " Use colors that suit a dark background
set termguicolors                           " Enable 24-bit colors on terminal
syntax enable                               " Enable syntax highlighting
" Basic
set display+=lastline                       " Always try to show a paragraph’s last line
set encoding=utf-8                          " Set encoding to utf-8
set number                                  " Show line numbers on the sidebar
" Maps
let mapleader = ","                         " Redefines leader key
set pastetoggle=<F2>                        " Key to toggle paste mode
" Autocomplete
set complete-=i                             " Limit the files searched for auto-completes
set completeopt=longest,menuone             " Show popup with completions
set wildmenu                                " Autocomplete menu
set wildmode=list:longest,full              " Autocomplete for commands
" Editting
set autoread                                " Automatically re-read files if unmodified inside Vim
set backspace=indent,eol,start              " Allow backspacing over indention, line breaks and insertion start
set colorcolumn=120                         " Set column rule
set cursorline                              " Highlight the line currently under cursor
set formatoptions+=j                        " Delete comment character when joining commented lines
set hidden                                  " Hide files in the background instead of closing them
set list                                    " Hightlight unwanted spaces
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set nrformats-=octal                        " Interpret octal as decimal when incrementing numbers
set scrolloff=5                             " The number of screen lines to keep above and below the cursor
set showmatch                               " Show matching delimitator
set sidescrolloff=5                         " The number of screen columns to keep to the left and right of the cursor
set virtualedit=onemore                     " Allow cursor to go to end of line
" Status bar
set laststatus=0                            " Do not show default status bar
set noruler                                 " Do not show cursor position
set noshowcmd                               " Do not show commands letters
set noshowmode                              " Do not show actual mode
" Backup
set nobackup                                " Disable backup files
set noswapfile                              " Disable swap files
set nowritebackup                           " Disable backup files
" Undo
set undodir=~/.vim-undo                     " Set undofiles folder
set undofile                                " Create undo file to allow undo across exits
set undolevels=1000                         " Size of undo history
" History
set history=1000                            " Increase the undo limit
" Mouse
set mouse=a                                 " Enable mouse for scrolling and resizing
set mousehide                               " Hide mouse when typing
" Split
set splitbelow                              " Create horizontal split on the bottom
set splitright                              " Create vertical split on the right
" Indentation
filetype plugin indent on                   " Enable indentation rules that are file-type specific
set autoindent                              " New lines inherit the indentation of previous lines.
set copyindent                              " Copy indentation from existing lines
set expandtab                               " Convert tabs to spaces
set linebreak                               " Avoid wrapping a line in the middle of a word
set shiftround                              " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=4                            " When shifting, indent using four spaces
set smartindent                             " Smart indent
set smarttab                                " Insert “tabstop” number of spaces when the “tab” key is pressed
set softtabstop=4                           " Indentation setting
set tabstop=4                               " Indent using four spaces
set wrap                                    " Enable line wrapping
" Search
set hlsearch                                " Enable search highlighting
set ignorecase                              " Ignore case when searching
set incsearch                               " Incremental search that shows partial matches
set smartcase                               " Automatically switch search to case-sensitive when search query contains an uppercase letter
" Performance
set lazyredraw                              " Don’t update screen during macro and script execution
set updatetime=250                          " The length of time Vim waits after you stop typing before it triggers the plugin
" Vim only settings
set ttimeout
set ttimeoutlen=100
set ttyfast                                 " Fast terminal connection (only for vim)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Mappings
"""""""""""""""""""""""""""""""" My vimrc source & edit
" Edit my .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
" Source my .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
"""""""""""""""""""""""""""""""" Clear search
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
"""""""""""""""""""""""""""""""" Remove arrow keys
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
"""""""""""""""""""""""""""""""" Map arrow keys to scroll
noremap <Down> <c-e>
noremap <Up> <c-y>
noremap <Right> <c-e>
noremap <Left> <c-y>
"""""""""""""""""""""""""""""""" System clipboard mappings
vmap <leader>y "+y
vmap <leader>p "+p
vmap <leader>P "+P
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
"""""""""""""""""""""""""""""""" Write & quit mappings
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
"""""""""""""""""""""""""""""""" Buffer mappings
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>k :bprevious<CR>
nnoremap <PageUp>   :bprevious<CR>
nnoremap <PageDown> :bnext<CR>
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
"""""""""""""""""""""""""""""""" Map tab to match bracket
" Remap tab to bracket in normal mode
nnoremap <tab> %
" Remap tab to match in visual mode
vnoremap <tab> %
"""""""""""""""""""""""""""""""" Editing mappings
" Shortcut to fast exit insert mode
inoremap jk <esc>
" Relative numbering
nnoremap <leader>r :set relativenumber!<CR>
" Map to sort in visual mode
vnoremap <leader>s :'<,'>sort<CR>
"""""""""""""""""""""""""""""""" NERDTree mappings
" Toggle NERDtree
noremap <C-e> :NERDTreeMirrorToggle<CR>
" Bookmark file/folder in NERDTree
nnoremap <leader>nb :Bookmark<CR>
" Find current file on NERDTree
noremap <silent> <leader>nf :NERDTreeFind<CR>
"""""""""""""""""""""""""""""""" Fugitive mappings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gu :Gpull<CR>
nnoremap <leader>gbl :Gblame<CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
"""""""""""""""""""""""""""""""" Vim-Plug mappings
" Install plugins
nnoremap <leader>pi :PlugInstall<CR>
" Update plugins
nnoremap <leader>pu :PlugUpdate<CR>
" Clean removed plugins
nnoremap <leader>pc :PlugClean<CR>
"""""""""""""""""""""""""""""""" Alt + hjkl (nvim only)
if has('nvim')
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
endif
"""""""""""""""""""""""""""""""" Split terminal (nvim only)
if has('nvim')
    " Open terminal horizontally
    nmap <leader>t :split term://zsh<CR>
    " Open terminal vertically
    nmap <leader>vt :vsplit term://zsh<CR>
endif
"""""""""""""""""""""""""""""""" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Abbreviations
iabbrev [k] ✔
iabbrev [K] ✔
iabbrev [ok] ✔
iabbrev [OK] ✔
iabbrev [x] ✘
iabbrev [X] ✘
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Auto commands
" Remember last line on file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Auto close NERDTree if it is the only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Indentation settings for typescript
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab
" Auto insert mode if terminal
autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
" Startify on new tab
autocmd! TabNew * Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTree
let g:NERDTreeAutoDeleteBuffer = 1               " Automatically delete the buffer of the file you just deleted with NERDTree:
let g:NERDTreeDirArrows = 1                      " Show dir arrows
let g:NERDTreeDirArrowCollapsible=""            " Improve NERDTree arrow
let g:NERDTreeDirArrowExpandable=""             " Improve NERDTree arrow
let g:NERDTreeMinimalUI = 1                      " Change to minimal UI
let g:NERDTreeQuitOnOpen = 1                     " Quit NERDTree after open file
let g:NERDTreeShowBookmarks = 1                  " Show bookmarks on NERDTree
let g:NERDTreeShowHidden = 1                     " Show hidden files on NERDTree
let g:NERDTreeShowLineNumbers = 1                " Show line numbers on NERDTree
let g:nerdtree_tabs_open_on_gui_startup = 0      " Do not show NERDTree on startup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Airline
let g:airline#extensions#tabline#enabled = 1     " Enable airline because it is disabled by default
let g:airline#extensions#tabline#fnamemod = ':t' " Show full file name instead of abbreviations
let g:airline_powerline_fonts = 1                " Use powerline fonts for airline
let g:airline_theme = 'onedark'                  " Match airline theme with vim colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" DevIcons
let g:webdevicons_conceal_nerdtree_brackets = 1  " Do not show brackets around icons in NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Startify
let g:ascii = [
\" ██╗   ██╗███████╗██████╗ ███████╗ ██████╗ ██╗      █████╗",
\" ██║   ██║██╔════╝██╔══██╗╚══███╔╝██╔═══██╗██║     ██╔══██╗",
\" ██║   ██║█████╗  ██████╔╝  ███╔╝ ██║   ██║██║     ███████║",
\" ╚██╗ ██╔╝██╔══╝  ██╔══██╗ ███╔╝  ██║   ██║██║     ██╔══██║",
\"  ╚████╔╝ ███████╗██║  ██║███████╗╚██████╔╝███████╗██║  ██║",
\"   ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝",
\]
"let g:startify_custom_header = g:ascii           " Add custom header to Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" End
