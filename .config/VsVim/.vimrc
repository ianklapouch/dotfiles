let mapleader="\<space>"
set relativenumber

" ignore case when searching
set ignorecase
" case insensitive unles uppercase is entered
set smartcase
set showmatch
set expandtab
set smarttab
set shiftwidht=4
set tabstop=4

"Auto ident, smart ident, wrap lines
set ai
set si
set wrap

"Next/Prev tab
nnoremap L gt
nnoremap H gT

"Split Window
nnoremap ss :split<Return>
nnoremap sv :vsplit<Return>
nnoremap sl <C-W>l

"Move between splits
nnoremap sh <C-W>h
nnoremap sj <C-W>j
nnoremap sk <C-W>k
nnoremap sl <C-W>l

"Center cursor on screen after move
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzz
kjoremap N Nzz

"Delete text without affecting default register
nnoremap x _x

