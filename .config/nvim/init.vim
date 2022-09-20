" ========== OPTIONS ==========
" auto-read when file is modified outside of the vim
set autoread
" allows bs over indent, line breaks, start of insert
set backspace=indent,eol,start
" directory for backups
set backupdir=~/.vim/backupdir
" turn backuping on
set backup
" automatic C program indenting
au FileType c,cpp,java set cindent
" syntax highlighting items specify folds
au FileType c,cpp,java set foldmethod=manual
" no compability with vi
set nocompatible
" copy existing lines indent when autoindenting a new line
set copyindent
" replace tabs with spaces
set expandtab
" no highlight search pattern matches
set nohlsearch
" size of command history
set history=50
" ignore case in search patterns
set ignorecase
" while searcing show where the current typed pattern matches
set incsearch
" the last windows always has status line
set laststatus=2
" lazy redrawing window
set lazyredraw
" show command on the last line
set scrolloff=5
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
" don't show default mode indication
set noshowmode
" when inserting a bracket, briefly jump to the matching one
set showmatch
" number of spaces that a <Tab> in the file counts for
set tabstop=4
" number of spaces to use for each step of indent (used for cindent)
set shiftwidth=4
" number of spaces that a <Tab> counts for while performing editing operations
set softtabstop=4
au Filetype html,css,js,ts,vim,lua setlocal ts=2 sw=2 sts=2 expandtab
au Filetype python setlocal colorcolumn=80
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
" completion settings per nvim-cmp's doc
set completeopt=menu,menuone,noselect

let mapleader = '§'

let g:coq_settings = { 'auto_start': 'shut-up' }

" ========== plugins ==========
" see plugins' after-init configs
" in ~/.config/nvim/after/init/plugins directory
lua require('plugins')

nmap <leader>tt :NvimTreeToggle<CR>

nmap <leader>gb :Git blame<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fs <cmd>lua require'telescope.builtin'.treesitter{}<cr>
nnoremap <leader>rg <cmd>Telescope live_grep<cr>
nnoremap <leader>gc <cmd>lua require'telescope.builtin'.git_commits{}<cr>
nnoremap <leader>fh <cmd>lua require'telescope.builtin'.oldfiles{}<cr>
nnoremap <leader>ch <cmd>lua require'telescope.builtin'.command_history{}<cr>
nnoremap <leader>sh <cmd>lua require'telescope.builtin'.search_history{}<cr>

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
" ============ settings =============
syntax enable
colorscheme tokyonight-night
filetype indent plugin on

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "!*.{min.js,swp,o}"
  \ -g "!{.git}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

language en_GB

let g:loaded_python_provider = 1
let g:python3_host_prog = '/usr/local/bin/python3'
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
