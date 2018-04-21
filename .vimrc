"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""" https://github.com/verzola/.vimrc """"""""""""""
""" released under the WTFPL v2 license, by Gustavo Verzola """
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ascii = [
\" ██╗   ██╗███████╗██████╗ ███████╗ ██████╗ ██╗      █████╗",
\" ██║   ██║██╔════╝██╔══██╗╚══███╔╝██╔═══██╗██║     ██╔══██╗",
\" ██║   ██║█████╗  ██████╔╝  ███╔╝ ██║   ██║██║     ███████║",
\" ╚██╗ ██╔╝██╔══╝  ██╔══██╗ ███╔╝  ██║   ██║██║     ██╔══██║",
\"  ╚████╔╝ ███████╗██║  ██║███████╗╚██████╔╝███████╗██║  ██║",
\"   ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝",
\]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'                   " Sensible defaults for vim
Plug 'tpope/vim-repeat'                     " Repeat integration plugins
Plug 'tpope/vim-fugitive'                   " Git Integration
Plug 'tpope/vim-surround'                   " Fast surround change
Plug 'tpope/vim-commentary'                 " Fast comments
Plug 'scrooloose/nerdtree'                  " Sidebar to browse files
Plug 'vim-airline/vim-airline'              " Status bar
Plug 'vim-airline/vim-airline-themes'       " Status bar themes
Plug 'airblade/vim-gitgutter'               " Git marks
Plug 'alampros/vim-styled-jsx'              " Styled jsx support
Plug 'ctrlpvim/ctrlp.vim'                   " Status bar themes
Plug 'easymotion/vim-easymotion'            " Fast motion
Plug 'jistr/vim-nerdtree-tabs'              " Open sidebar in all tabs
Plug 'joshdick/onedark.vim'                 " Onedark theme
Plug 'kshenoy/vim-signature'                " Show letters marked
Plug 'leafgarland/typescript-vim'           " Typescript
Plug 'mattn/emmet-vim'                      " Emmet
Plug 'mhinz/vim-startify'                   " Welcome screen
Plug 'mxw/vim-jsx'                          " JSX
Plug 'pangloss/vim-javascript'              " JavaScript
Plug 'peitalin/vim-jsx-typescript'          " JSX + Typescript
Plug 'ryanoasis/vim-devicons'               " Sidebar icons
Plug 'terryma/vim-multiple-cursors'         " Multiple cursors
Plug 'w0rp/ale'                             " Async Lint Engine
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Checks
" create undo-dir if it does not exists
if !isdirectory($HOME."/.vim-undo")
    call mkdir($HOME."/.vim-undo", "", 0700)
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
colorscheme onedark                           " Set colorscheme
let hlstate = 0                               " Disable hlsearch
let mapleader = ","                           " Redefines leader key
set background=dark                           " Dark background
set colorcolumn=120                           " Set column rule
set completeopt=longest,menuone               " Show popup with completions
set copyindent                                " Copy indentation from existing lines
set cursorline                                " Hightlight current line
set expandtab                                 " On pressing tab, insert 4 spaces
set foldcolumn=1                              " Add small space on the left of line numbers
set gdefault                                  " Defaults to global substitution
set hidden                                    " Hide buffer if you o
set hlsearch                                  " Highlight search
set ignorecase                                " Ignore case in search
set lazyredraw                                " Do not draw in macro
set linebreak
set list                                      " Hightlight unwanted spaces
set mouse=a                                   " Toggle mouse on
set mousehide                                 " Hide mouse when typing
set nobackup                                  " Disable backup file
set noerrorbells                              " No bell sound
set noshowmode                                " Remove default statusbar
set noswapfile                                " Disable swap file
set novisualbell                              " No bell sound
set nowritebackup                             " Disable backup file
set number                                    " Show line numbers
set pastetoggle=<F2>                          " Key to toggle F2
set shiftround                                " Round indent to multiple of shiftwidth
set shiftwidth=4                              " When indenting with '>', use 4 spaces width
set showcmd                                   " Show commands being executed
set showmatch                                 " Show matching delimitator
set smartcase                                 " Intelligent case in search
set smartindent                               " Smart indent
set softtabstop=4                             " ?
set tabstop=4                                 " Show existing tab with 4 spaces width
set splitbelow                                " Create horizontal split on the bottom
set splitright                                " Create vertical split on the right
set t_vb=
set termguicolors                             " Set gui colors on terminal
"set timeoutlen=500                           " Lower timeout length
set title                                     " Automatically set screen title
set ttyfast                                   " ?
set undodir=~/.vim-undo                       " Set undofiles folder
set undofile                                  " Create undo file to allow undo across exits
set undolevels=1000                           " Size of undo history
set virtualedit=onemore                       " Allow cursor to go to end of line
set wildmode=list:longest,full                " Autocomplete for commands
set wrap                                      " ?
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Mappings
"""""""""""""""""""""""""""""""" NeoVim Alt + hjkl
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
"""""""""""""""""""""""""""""""" Remove arrow keys mappings
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
noremap <Down> <c-e>
noremap <Up> <c-y>
noremap <Right> <c-e>
noremap <Left> <c-y>
"""""""""""""""""""""""""""""""" Git shortcuts
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
"""""""""""""""""""""""""""""""" System clipboard
vmap <leader>y "+y
vmap <leader>p "+p
vmap <leader>P "+P
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
"""""""""""""""""""""""""""""""" Write & quit
" Fast write
nnoremap <leader>w :w!<CR>
" Trip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Fast quit
nnoremap <leader>q :q!<CR>
" Fast write & quit
nnoremap <leader>x :x<CR>
" Force write as sudo
cmap w!! w !sudo tee % >/dev/null
"""""""""""""""""""""""""""""""" Buffer mappings
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>k :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"""""""""""""""""""""""""""""""" NerdTree
" Toggle NERDtree
noremap <C-e> :NERDTreeMirrorToggle<CR>
" Bookmark file/folder in NERDTree
nnoremap <leader>nb :Bookmark<CR>
" Find current file on NERDTree
noremap <leader>nf :NERDTreeFind<cr>
"""""""""""""""""""""""""""""""" Vim-Plug
" Install plugins
nnoremap <leader>pi :PlugInstall<CR>
" Update plugins
nnoremap <leader>pu :PlugUpdate<CR>
" Clean removed plugins
nnoremap <leader>pc :PlugClean<CR>
"""""""""""""""""""""""""""""""" My vimrc source & edit
" Edit my .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
" Source my .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
"""""""""""""""""""""""""""""""" Tab match bracket
" Remap tab to bracket in normal mode
nnoremap <tab> %
" Remap tab to match in visual mode
vnoremap <tab> %
"""""""""""""""""""""""""""""""" Split terminal
" Open terminal horizontally
nmap <leader>t :split term://zsh<cr>
" Open terminal vertically
nmap <leader>vt :vsplit term://zsh<cr>
"""""""""""""""""""""""""""""""" Other
" Shortcut to fast exit insert mode
inoremap jk <esc>
" Relative numbering
nnoremap <leader>r :set relativenumber!<cr>
" Map to sort in visual mode
vnoremap <leader>s :'<,'>sort<cr>
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
" set filetypes as typescript.jsx
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx
"autocmd BufNewFile,BufRead *.ts,*.js set filetype=typescript.jsx
" Startify on new tab
au! TabNew * Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTree
let g:NERDTreeShowBookmarks = 1                 " Show bookmarks on NERDTree
let g:NERDTreeShowHidden = 1                    " Show hidden files on NERDTree
let g:NERDTreeShowLineNumbers = 1               " Show line numbers on NERDTree
let g:NERDTreeQuitOnOpen = 1                    " Quit NERDTree after open file
let g:NERDTreeDirArrowExpandable=""
let g:NERDTreeDirArrowCollapsible=""
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:nerdtree_tabs_open_on_gui_startup = 0
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : "☒",
    \ "Unknown"   : "?"
    \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" DevIcons
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Startify
let g:startify_custom_header = g:ascii
let g:startify_bookmarks = [
        \ { 'v': '~/.vimrc' },
        \ { 'z': '~/.zshrc' },
        \ { 's': '~/.ssh/config' },
        \ ]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" End
