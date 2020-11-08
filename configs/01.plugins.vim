call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/neoinclude.vim'
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }
Plug 'scrooloose/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'elzr/vim-json'
Plug 'bronson/vim-trailing-whitespace'
Plug 'rhysd/devdocs.vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'kshenoy/vim-signature'
Plug 'yggdroot/indentline'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-slash'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'moll/vim-node'
Plug 'mattn/emmet-vim'
Plug 'drzel/vim-line-no-indicator'
Plug 'machakann/vim-highlightedyank'
Plug 'editorconfig/editorconfig-vim'
Plug 'AndrewRadev/tagalong.vim'
"snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
"fzf
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"ruby and rails
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'

call plug#end()
