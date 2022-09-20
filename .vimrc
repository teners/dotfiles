set autoread
set backspace=indent,eol,start
set backupdir=~/.vim/backupdir
set backup
set nocompatible
set copyindent
set expandtab
set nohlsearch
set history=50
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set scrolloff=5
set splitbelow
set splitright
set ruler
set matchtime=2
set number
set nopaste
set nowrap
set noswapfile
set noshowmode
set showmatch
set tabstop=4
set shiftwidth=4
set softtabstop=4
au Filetype html,css,js,ts,vim,lua setlocal ts=2 sw=2 sts=2 expandtab
au Filetype python setlocal colorcolumn=80
set smarttab
set smartindent
set undolevels=100
set undodir=~/.vim/undodir/
set undofile
set undoreload=100
set wildmenu
set wildmode=longest:full
set completeopt=menu,menuone,noselect
set foldmethod=expr
set nofoldenable

let mapleader = '§'

syntax enable
filetype indent plugin on
language en_GB
