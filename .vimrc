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
" Tagbar
Plugin 'majutsushi/tagbar'
" Barra de modo
Plugin 'bling/vim-airline'
" Múltiplos cursores
Plugin 'terryma/vim-multiple-cursors'
" Integração do PHP com Vim
Plugin 'spf13/PIV'
" Fecha tags automaticamente
Plugin 'Townk/vim-autoclose'
" Plugin para comentários
Plugin 'scrooloose/nerdcommenter'
" Plugin para Git
Plugin 'tpope/vim-fugitive'
" Comandos assíncronos
Plugin 'tpope/vim-dispatch'
" Checa sintaxe
Plugin 'scrooloose/syntastic'
" Surrounds
Plugin 'tpope/vim-surround'
" Git gutter
Plugin 'airblade/vim-gitgutter'

" Vundle
call vundle#end()
filetype plugin indent on

" Colorscheme
colorscheme itg_flat

" Liga e desliga marcação da busca
nnoremap <F3> :set hlsearch!<CR>
" Mostra os buffers
nnoremap <F5> :buffers<CR>:buffer<Space>Q
" Abre o NerdTreeTabs
map <C-e> :NERDTreeToggle<CR>
" Salva como sudo
cmap w!! w !sudo tee % >/dev/null

" Alias para erros de digitação
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq

" Splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
nnoremap <space>gps :Gpush<CR>
nnoremap <space>gpl :Gpull<CR>

" Redefine tecla leader
let mapleader = ","
let g:mapleader=","
" Habilita airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Escolhe tema do airline
let g:airline_theme = 'powerlineish'
" Habilita neocomplete ao inicializar
let g:neocomplete#enable_at_startup = 1
let g:neocomplcache_enable_at_startup = 1
" Mostra arquivos escondidos
let NERDTreeShowHidden = 1
" Fecha NerdTree quando abrir um arquivo
let NERDTreeQuitOnOpen = 1

" Configuração do syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Sintaxe colorida
syntax enable
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
set undolevels=1000
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
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

if exists("g:ctrl_user_command")
      unlet g:ctrlp_user_command
endif

" Lembra da linha dos arquivos
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

nmap ]g <Plug>GitGutterNextHunk
nmap [g <Plug>GitGutterPrevHunk
