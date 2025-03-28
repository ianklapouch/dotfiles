let mapleader="\<space>"
set number
set relativenumber

set clipboard=unnamed
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
nnoremap <Leader>| :vsplit<Return>
nnoremap <Leader>- :split<Return>

"Move between splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

"Center cursor on screen after move
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzz
kjoremap N Nzz

"Delete text without affecting default register
nnoremap x "_x

" File
nnoremap <Leader>bd :vsc File.Close<CR>
nnoremap <Leader>bo :vsc File.CloseAllButThis<CR>

" Editor commands
:nmap gc :vsc Edit.ToggleLineComment<CR>
:vmap gc :vsc Edit.ToggleLineComment<CR>

nnoremap <Leader>ff :vsc Edit.GoToFile<CR>
nnoremap <Leader>fr :vsc Edit.GoToRecentFile<CR>
