let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on
autocmd BufEnter * :set scroll=10
syntax on
set nocompatible
set langmenu=en_US.UTF-8
set guioptions=aAce
set showtabline=2
set so=10
set scrolloff=999
set fileformat=unix
set tabstop=2
set mouse=a
set colorcolumn=+1
set backupcopy=yes
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
set undolevels=1000
set spelllang=it
set softtabstop=2
set signcolumn=yes
set shortmess+=c
set noshowmode
set number
set relativenumber
set hidden
set splitright
set splitbelow
set wrapscan
set nowritebackup
set noswapfile
set noautowrite
set noundofile
set nofoldenable
set showcmd
set showmatch
set ignorecase
set hlsearch
set smartcase
set noerrorbells
set nojoinspaces
set title
set cursorline
set nobackup
set nolist listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣

" jump to the last known cursor position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

" Set cursor position
au WinLeave * set nocursorcolumn
au WinEnter * set cursorcolumn

"imap
inoremap jj <ESC>
inoremap <silent> <c-l> <ESC>la
inoremap <silent><expr><Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <silent><expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
"nmap
nnoremap ; :
nnoremap <Esc><Esc> :nohlsearch<CR>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <c-x> :BD<cr>
noremap Y y$
nmap <silent> ff <Plug>(easymotion-overwin-f2)
nmap <silent> fl <Plug>(easymotion-overwin-line)
noremap <silent> <c-k> :wincmd k<CR>
noremap <silent> <c-j> :wincmd j<CR>
noremap <silent> <c-h> :wincmd h<CR>
noremap <silent> <c-l> :wincmd l<CR>

"copy/pase
vnoremap < <gv
vnoremap > >gv
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
