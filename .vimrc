" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! ubuntu.vim


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
au FileType c,cpp,java set foldmethod=manual

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

" open new split below current
set splitbelow

" open new split right to current
set splitright

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




" ========== plugins ==========
call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'

" snippets support 
Plug 'garbas/vim-snipmate'		    " Snippets manager
Plug 'MarcWeber/vim-addon-mw-utils'	" Dependency #1
Plug 'tomtom/tlib_vim'	 	        " Dependency #2
Plug 'honza/vim-snippets'		        " Snippets repository

" status
" Plugin 'vim-airline/vim-airline'        " Lean & mean status/tabline
" Plugin 'vim-airline/vim-airline-themes'
" let g:Powerline_symbols = 'unicode'
" let g:airline_powerline_fonts = 1
" set t_Co=256
" set rtp+=/usr/local/lib/python3.5/site-packages/powerline/bindings/vim/

Plug 'itchyny/lightline.vim'

Plug 'majutsushi/tagbar'              " tagbar
nmap <F8> :TagbarToggle<CR>

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nmap <F7> :NERDTreeToggle<CR>

Plug 'metakirby5/codi.vim'            " python REPL
let g:codi#width = 50

Plug 'rakr/vim-one'                   " vim-one colorscheme

Plug 'jmcantrell/vim-virtualenv'      " python venv

Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" ============ settings =============
syntax enable
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

filetype off
set background=dark
colorscheme one
let g:lightline = {'colorscheme': 'seoul256',}
if (empty($TMUX))
  if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
filetype indent plugin on

 let g:rg_command = '
   \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
   \ -g "!*.{min.js,swp,o}" 
   \ -g "!{.git}/*" '
 
 command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

