" verzola's .vimrc
" https://github.com/verzola/.vimrc
" released under the WTFPL v2 license
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'                                     " Git diff in the gutter
  Plug 'airblade/vim-rooter'                                        " Find project root
  Plug 'easymotion/vim-easymotion'                                  " Vim EasyMotion
  Plug 'editorconfig/editorconfig-vim'                              " Editorconfig support
  Plug 'jistr/vim-nerdtree-tabs'                                    " NERDTree tabs
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }               " Fuzzy finder
  Plug 'junegunn/fzf.vim'                                           " Fuzzy finder vim integration
  Plug 'junegunn/vim-emoji'                                         " Emojis for Vim
  Plug 'mattn/emmet-vim'                                            " Emmet
  Plug 'mhinz/vim-startify'                                         " Fancy start screen for Vim
  Plug 'mxw/vim-jsx'                                                " JSX support
  "Plug 'nathanaelkane/vim-indent-guides'                            " Indent Guides
  Plug 'neoclide/coc.nvim', {'branch': 'release'}                   " Conqueror of Completion
  Plug 'othree/html5.vim'                                           " Better HTML5 support
  Plug 'pangloss/vim-javascript'                                    " Better JS support
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }            " Prettier support
  Plug 'ryanoasis/vim-devicons'                                     " Glyphs and icons
  Plug 'scrooloose/nerdtree'                                        " Tree explorer
  Plug 'terryma/vim-multiple-cursors'                               " Multiple cursors support
  Plug 'tpope/vim-commentary'                                       " Fast commenter
  Plug 'tpope/vim-fugitive'                                         " Git wrapper
  Plug 'tpope/vim-obsession'                                        " Sessions
  Plug 'tpope/vim-repeat'                                           " Repeat plugin actions
  Plug 'tpope/vim-sensible'                                         " Better defaults
  Plug 'tpope/vim-surround'                                         " Fast surround
  Plug 'vim-airline/vim-airline'                                    " Light tabline
  Plug 'vim-airline/vim-airline-themes'                             " Light tabline themes
  Plug 'vim-test/vim-test'                                          " Vim Test
  Plug 'w0rp/ale'                                                   " Async linter
  Plug 'yggdroot/indentline'                                        " Display indention levels
  " Not always used plugins
  "Plug 'stephpy/vim-php-cs-fixer'
  " Colorschemes
  Plug 'dracula/vim', { 'as': 'dracula' }                           " Dracula colorscheme
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Checks
" Create undo-dir if it does not exists
if !isdirectory($HOME."/.vim-undo")
  call mkdir($HOME."/.vim-undo", "", 0700)
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
" Colors
set background=dark                                 " Use colors that suit a dark background
colorscheme dracula                                 " Change colorscheme
set termguicolors                                   " Enable 24-bit colors on terminal
syntax enable                                       " Enable syntax highlighting

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
    set guifont=FantasqueSansMono\ Nerd\ Font\ Mon:h11:cANSI:qDRAFT
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
ab :ok: ✅
ab :no: ❌
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Auto commands
" Remember last line on file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Indentation settings for typescript
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType php set tabstop=4|set shiftwidth=4|set expandtab

" Auto insert mode if terminal
autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif

" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" For Vim<8, replace EndOfBuffer by NonText
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE
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
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_sign_error = '' " Less aggressive than the default '>>'
let g:ale_sign_warning = ''
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_fix_on_save = 1
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
hi Normal guibg=NONE ctermbg=NONE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Emoji
set completefunc=emoji#complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Git Gutter
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vim Test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" COC
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

