" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
" Barra lateral
Plugin 'scrooloose/nerdtree'
" Movimentação rápida
Plugin 'Lokaltog/vim-easymotion'
" Goto file
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
" Barra de modo
Plugin 'bling/vim-airline'
" Abas na barra lateral
Plugin 'jistr/vim-nerdtree-tabs'
" Múltiplos cursores
Plugin 'terryma/vim-multiple-cursors'
Plugin 'spf13/PIV'
" Autocomplete
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neocomplcache.vim'
" Fecha tags automaticamente
Plugin 'Townk/vim-autoclose'
" Plugin para comentários
Plugin 'scrooloose/nerdcommenter'
" Plugin para Git
Plugin 'tpope/vim-fugitive'
" Comandos assíncronos
Plugin 'tpope/vim-dispatch'

" Vundle
call vundle#end()
filetype plugin indent on

" Colorscheme
colorscheme itg_flat

" Mappings
" Liga e desliga marcação da busca
nnoremap <F3> :set hlsearch!<CR>
" Mostra os buffers
nnoremap <F5> :buffers<CR>:buffer<Space>Q
" Abre o tagbar
nmap <F8> :TagbarToggle<CR>
" Abre o NerdTreeTabs
map <C-e> <plug>NERDTreeTabsToggle<CR>
" Salva como sudo
cmap w!! w !sudo tee % >/dev/null
" Alias para erros de digitação
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq
" Navegação por splits
noremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" ; vale como ;
nnoremap ; :

" Mappings do Fugitive
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>gbl :Gblame<CR>
nnoremap <space>gwb :Gbrowse<CR>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

" Redefine tecla leader
let mapleader = ","
" Habilita airline
let g:airline#extensions#tabline#enabled = 1
" Escolhe tema do airline
let g:airline_theme = 'powerlineish'
" Habilita neocomplete ao inicializar
let g:neocomplete#enable_at_startup = 1
let g:neocomplcache_enable_at_startup = 1
" Mostra arquivos escondidos
let NERDTreeShowHidden = 1

" Mostra linhas
set nu
" Sempre barra de status 
set laststatus=2
" Habilita mouse
set mouse=a
" Esconde mouse quando digitar
set mousehide
set virtualedit=onemore
set history=1000
set hidden
set iskeyword-=.
set iskeyword-=#
set iskeyword-=-
" Undos
set undofile
set undolevels=1000
set undoreload=1000
set tabpagemax=15
set noshowmode
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
set listchars=tab:â€º\ ,trail:â€¢,extends:#,nbsp:.
set nowrap
" Indentação automática
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces
" Cria splits a direita e abaixo
set splitright
set splitbelow
" Modo de colar
set pastetoggle=<F13>
" Desabilita criação de arquivos de backup, swap e undo
set nobackup
set noswapfile
set nowritebackup
set noundofile

if exists("g:ctrl_user_command")
      unlet g:ctrlp_user_command
endif

" Lembra da linha dos arquivos
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Correção para multiple cursors e neocomplete
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

" Abre NerdTree ao inicializar
autocmd vimenter * NERDTree
