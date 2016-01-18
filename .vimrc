runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set linebreak
set autochdir
set hlsearch
set spell
set spelllang=en
set splitbelow
set splitright
filetype plugin indent on
syntax on

" rebind the command W to w
command W w

"clear search highlighting on backslash
nnoremap \ :noh<cr>:<backspace>

"auto-indent code on cu (clean up)
nnoremap cu gg=G``
