" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim


" ========== OPTIONS ==========

" auto-read when file is modified outside of the vim
set autoread

" allows bs over indent, line breaks, start of insert
set backspace=indent,eol,start

" directory for backups
set backupdir=~/.vim/backupdir
"
" turn backuping on
set backup

" automatic C program indenting
au FileType c,cpp,java set cindent

" no compability with vi
set nocompatible 

" copy existing lines indent when autoindenting a new line
set copyindent

" replace tabs with spaces
set expandtab

" syntax highlighting items specify folds
au FileType c,cpp,java set foldmethod=syntax

" no highlight search pattern matches
set nohlsearch

" size of command history
set history=20

" ignore case in search patterns
set ignorecase

" while searcing show where the current typed pattern matches
set incsearch

" the last windows always has status line
set laststatus=2

" lazy redrawing window
set lazyredraw

" show command on the last line
set scrolloff=2

" show cursor position
set ruler

" amount of time to show the matchin bracket
set matchtime=2

" line numbers
set number

" no paste mode
set nopaste

" no wrap long lines
set nowrap

" don't use swap files for the buffer
set noswapfile

" when inserting a bracket, briefly jump to the matching one
set showmatch

" number of spaces that a <Tab> in the file counts for
set tabstop=4

" number of spaces to use for each step of indent (used for cindent)
set shiftwidth=4

" number of spaces that a <Tab> counts for while performing editing operations
set softtabstop=4

" a <Tab> in front of a line inserts blanks according to shiftwidth
set smarttab

" smart autoindenting 
set smartindent

" maximum number of changes that can be undone
set undolevels=100

" directory for undo files
set undodir=~/.vim/undodir/

" save undo history
set undofile

" save whole buffer for undo when reloading
set undoreload=100

" command line completion  
set wildmenu

" full completion
set wildmode=longest:full


syntax enable
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
colorscheme luna-term

filetype off


" ========== plugins ==========
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" snippets support 
Plugin 'garbas/vim-snipmate'		    " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'	" Dependency #1
Plugin 'tomtom/tlib_vim'	 	        " Dependency #2
Plugin 'honza/vim-snippets'		        " Snippets repository

" status
Plugin 'vim-airline/vim-airline'        " Lean & mean status/tabline
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme = 'luna'
let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts = 1
set t_Co=256
set rtp+=/usr/local/lib/python3.5/site-packages/powerline/bindings/vim/

Plugin 'majutsushi/tagbar'              " tagbar

Plugin 'xuhdev/vim-latex-live-preview'  " latex live preview
let g:livepreview_previewer = 'zathura'

call vundle#end()
filetype indent plugin on


" ========== keys mapping ========== 
vmap <C-c> "+yi
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
