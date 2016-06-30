" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Plugins
    " Barra lateral
    Plugin 'scrooloose/nerdtree'
    " CTRL+P (Goto file)
    Plugin 'ctrlpvim/ctrlp.vim'
    " Barra de status
    Plugin 'bling/vim-airline'
    " Temas
    Plugin 'vim-airline/vim-airline-themes'
    " Integração do PHP com Vim
    Plugin 'spf13/PIV'
    " Comentários rápidos
    Plugin 'scrooloose/nerdcommenter'
    " Integração com Git
    Plugin 'tpope/vim-fugitive'
    " Checador de sintaxe
    Plugin 'scrooloose/syntastic'
    " Git Gutter
    Plugin 'airblade/vim-gitgutter'
    " Autocomplete
    Plugin 'Shougo/neocomplete.vim'
    " Emmet
    Plugin 'mattn/emmet-vim'
    " DevIcons
    Plugin 'ryanoasis/vim-devicons'
" Vundle
call vundle#end()
filetype plugin indent on

" Colorscheme
colorscheme itg_flat
" Sintaxe com cores
syntax enable
" Mostra linhas
set nu
" Sempre mostra abarra de status
set laststatus=2
" Habilita mouse
set mouse=a
" Esconde mouse quando digitar
set mousehide
" Tamanho do histórico de comandos
set history=1000
" Tamanho do histórico de Undos
set undolevels=1000
" Pesquisa incremental
set incsearch
" Pesquisa sublinhada
set hlsearch
" Pesquisa case-insensitive
set ignorecase
" Case inteligente
set smartcase
" Indentação automática
set autoindent
" Cria split pra direita
set splitright
" Cria split pra baixo
set splitbelow
" Atalho para modo de colar
set pastetoggle=<F12>
" Desabilita backup
set nobackup
set nowritebackup
" Desabilita swap
set noswapfile
" Deixa o cursor ir além do final da linha
set virtualedit=onemore
" Remove exibição padrão de status
set noshowmode
" Sublinha linha do cursor
set cursorline
" Mostra comandos sendo executados
set showcmd
" Corrige backspace
set backspace=indent,eol,start
" Mostra delimitador equivalente
set showmatch
" Autocomplete para comandos
set wildmenu
set wildmode=list:longest,full
" Mosta espaço em branco
set list
set listchars=tab:â€º\ ,trail:â€¢,extends:#,nbsp:.
" Espaço em vez de tab
set expandtab
" 4 espaços no tab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set nofoldenable
set encoding=utf8

" Redefine tecla leader
let mapleader = ","
let g:mapleader = ","

" Alias para erros de digitação
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq

" Atalho para salvar
nmap <Leader>w :w<CR>
" Atalho para sair
nmap <Leader>q :q!<CR>
" Atalho para sair e salvar
nmap <Leader>x :x<CR>
" Editar o vimrc
nmap <Leader>ev :tabedit $MYVIMRC<CR>
" Desabilita highlight de pesquisa
nmap <Leader><space> :nohlsearch<CR>

" Auto source vimrc on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

" Atalho para navegar entre splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Toggle de sublinhado da busca
nnoremap <F3> :set hlsearch!<CR>

" Salva como sudo
cmap w!! w !sudo tee % >/dev/null

" Lembra da linha dos arquivos
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" NeoComplete
    " Habilita neocomplete ao inicializar
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplcache_enable_at_startup = 1

" NerdTree
    " Atalho para abrir
    map <C-e> :NERDTreeToggle<CR>
    " Fecha quando abrir um arquivo
    let NERDTreeQuitOnOpen = 0
    " Simplifica exibição da árvore de diretórios
    let g:NERDTreeDirArrows=0

" Airline
    " Tema
    let g:airline_theme = 'powerlineish'
    " Habilita
    let g:airline#extensions#tabline#enabled = 1

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

    " Usa a listagem de arquivos do git que é muito mais rápida de indexar
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

