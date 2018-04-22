"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""" https://github.com/verzola/.vimrc """"""""""""""
""" released under the WTFPL v2 license, by Gustavo Verzola """
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'mhinz/vim-startify'                   " The fancy start screen for Vim
Plug 'tpope/vim-repeat'                     " Enable repeating supported plugin maps with .
Plug 'tpope/vim-fugitive'                   " A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-speeddating'                " Use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'scrooloose/nerdcommenter'             " Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdtree'                  " A tree explorer plugin for vim
Plug 'jistr/vim-nerdtree-tabs'              " NERDTree and tabs together in Vim, painlessly
Plug 'xuyuanp/nerdtree-git-plugin'          " A plugin of NERDTree showing git status
Plug 'easymotion/vim-easymotion'            " Vim motions on speed!
Plug 'airblade/vim-gitgutter'               " A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'kshenoy/vim-signature'                " Plugin to toggle, display and navigate marks
Plug 'ryanoasis/vim-devicons'               " Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
Plug 'terryma/vim-multiple-cursors'         " True Sublime Text style multiple selections for Vim
Plug 'othree/html5.vim'                     " HTML5 omnicomplete and syntax
Plug 'docunext/closetag.vim'                " Auto close (X)HTML tags
Plug 'mattn/emmet-vim'                      " emmet for vim
Plug 'alampros/vim-styled-jsx'              " Vim syntax for [styled-jsx]
Plug 'mxw/vim-jsx'                          " React JSX syntax highlighting and indenting for vim
Plug 'pangloss/vim-javascript'              " Vastly improved Javascript indentation and syntax support in Vim
Plug 'peitalin/vim-jsx-typescript'          " React JSX syntax highlighting for vim and Typescript
Plug 'w0rp/ale'                             " Asynchronous Lint Engine
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " A command-line fuzzy finder
Plug 'junegunn/fzf.vim'                                           " fzf vim integration
Plug 'yggdroot/indentline'                  " A vim plugin to display the indention levels with thin vertical lines

" Plugins that are already in Oni or conflict with a Oni funcionality
if !exists('g:gui_oni')
    Plug 'joshdick/onedark.vim'           " A dark Vim/Neovim color scheme inspired by Atom's One Dark syntax theme
    Plug 'vim-airline/vim-airline'        " Lean & mean status/tabline for vim that's light as air
    Plug 'vim-airline/vim-airline-themes' " A collection of themes for vim-airline
    Plug 'ctrlpvim/ctrlp.vim'             " Fuzzy file, buffer, mru, tag, etc finder
    Plug 'leafgarland/typescript-vim'     " Typescript syntax files for Vim
    Plug 'tpope/vim-commentary'           " Comment stuff out
    Plug 'tpope/vim-unimpaired'           " Pairs of handy bracket mappings
    Plug 'tpope/vim-surround'             " Quoting/parenthesizing made simple
endif

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Checks
" Create undo-dir if it does not exists
if !isdirectory($HOME."/.vim-undo")
    call mkdir($HOME."/.vim-undo", "", 0700)
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
" Colors
colorscheme onedark                         " Set colorscheme
set background=dark                         " Dark background
set termguicolors                           " Set gui colors on terminal
syntax enable
" Basic
set number                                  " Show line numbers
filetype plugin indent on
set encoding=utf-8                          " Set encoding to utf-8
" Maps
let mapleader = ","                         " Redefines leader key
set pastetoggle=<F2>                        " Key to toggle F2
" Autocomplete
set wildmenu                                " Autocomplete menu
set wildmode=list:longest,full              " Autocomplete for commands
set completeopt=longest,menuone             " Show popup with completions
" Editting
set scrolloff=5                             " Keep cursor 5 lines away from border
set sidescrolloff=5
set virtualedit=onemore                     " Allow cursor to go to end of line
set list                                    " Hightlight unwanted spaces
set hidden                                  " Hide buffer if you
set cursorline                              " Hightlight current line
set showmatch                               " Show matching delimitator
set colorcolumn=120                         " Set column rule
set backspace=indent,eol,start              " Improved backspace
set complete-=i                             " 
set nrformats-=octal                        " 
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set formatoptions+=j                        " Delete comment character when joining commented lines
set autoread                                " Auto read if file has changes
" Status bar
set noshowmode                              " 
set noruler                                 " 
set laststatus=0                            " 
set noshowcmd                               " Show commands being executed
" Backup
set nobackup                                " Disable backup file
set nowritebackup                           " Disable backup file
set noswapfile                              " Disable swap file
" Undo
set undodir=~/.vim-undo                     " Set undofiles folder
set undofile                                " Create undo file to allow undo across exits
set undolevels=1000                         " Size of undo history
" History
set history=1000
" Mouse
set mouse=a                                 " Toggle mouse on
set mousehide                               " Hide mouse when typing
" Split
set splitbelow                              " Create horizontal split on the bottom
set splitright                              " Create vertical split on the right
" Indentation
set copyindent                              " Copy indentation from existing lines
set shiftround                              " Round indent to multiple of shiftwidth
set smartindent                             " Smart indent
set smarttab
set expandtab                               " On pressing tab, insert spaces
set tabstop=4                               " Indentation setting
set softtabstop=4                           " Indentation setting
set shiftwidth=4                            " When indenting with '>', use 4 spaces width
set linebreak                               " Don't break lines in the middle of words
set wrap                                    " Wrap to next line
set autoindent                              " 
" Search
let hlstate = 0                             " Disable hlsearch
set smartcase                               " Intelligent case in search
set hlsearch                                " Highlight search
set ignorecase                              " Ignore case in search
set incsearch                               " Show results as you type
" Performance
set updatetime=250                          " The length of time Vim waits after you stop typing before it triggers the plugin
set lazyredraw                              " Do not draw in macro
" Vim only settings
set ttyfast                                 " Fast terminal connection (only for vim)
set ttimeout
set ttimeoutlen=100
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
nnoremap <leader>r :set relativenumber!<cr>
" Map to sort in visual mode
vnoremap <leader>s :'<,'>sort<cr>
"""""""""""""""""""""""""""""""" NERDTree mappings
" Toggle NERDtree
noremap <C-e> :NERDTreeMirrorToggle<CR>
" Bookmark file/folder in NERDTree
nnoremap <leader>nb :Bookmark<CR>
" Find current file on NERDTree
noremap <leader>nf :NERDTreeFind<cr>
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
    nmap <leader>t :split term://zsh<cr>
    " Open terminal vertically
    nmap <leader>vt :vsplit term://zsh<cr>
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
" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Auto close NERDTree if it is the only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" set filetypes as typescript.jsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx
autocmd BufNewFile,BufRead *.ts,*.js set filetype=typescript.jsx
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab
autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
" Startify on new tab
autocmd! TabNew * Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTree
let g:NERDTreeAutoDeleteBuffer = 1          " 
let g:NERDTreeDirArrows = 1                 " Show dir arrows
let g:NERDTreeDirArrowCollapsible=""       " Improve NERDTree arrow
let g:NERDTreeDirArrowExpandable=""        " Improve NERDTree arrow
let g:NERDTreeMinimalUI = 1                 " Change to minimal UI
let g:NERDTreeQuitOnOpen = 1                " Quit NERDTree after open file
let g:NERDTreeShowBookmarks = 1             " Show bookmarks on NERDTree
let g:NERDTreeShowHidden = 1                " Show hidden files on NERDTree
let g:NERDTreeShowLineNumbers = 1           " Show line numbers on NERDTree
let g:nerdtree_tabs_open_on_gui_startup = 0 " Do not show NERDTree on startup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Airline
let g:airline#extensions#tabline#enabled = 1     " Enable airline because it is disabled by default
let g:airline#extensions#tabline#fnamemod = ':t' " Show full file name instead of abbreviations
let g:airline_powerline_fonts = 1                " Use powerline fonts for airline
let g:airline_theme = 'onedark'                  " Match airline theme with vim colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" DevIcons
let g:webdevicons_conceal_nerdtree_brackets = 0 " Do not show brackets around icons in NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Startify
let g:ascii = [
\" ██╗   ██╗███████╗██████╗ ███████╗ ██████╗ ██╗      █████╗",
\" ██║   ██║██╔════╝██╔══██╗╚══███╔╝██╔═══██╗██║     ██╔══██╗",
\" ██║   ██║█████╗  ██████╔╝  ███╔╝ ██║   ██║██║     ███████║",
\" ╚██╗ ██╔╝██╔══╝  ██╔══██╗ ███╔╝  ██║   ██║██║     ██╔══██║",
\"  ╚████╔╝ ███████╗██║  ██║███████╗╚██████╔╝███████╗██║  ██║",
\"   ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝",
\]
let g:startify_custom_header = g:ascii " Add custom header to Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" End
