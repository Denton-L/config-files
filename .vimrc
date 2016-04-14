"pathogen support
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"line numbering
set number
set relativenumber

"tab defaults
set tabstop=4
set shiftwidth=4

"wrap lines
set linebreak

"automatically change directory to file location
set autochdir
"this line is to fix a bug with autochdir in vim
autocmd VimEnter * set autochdir

"change spellcheck to english
set spelllang=en

"enable sensible splits
set splitbelow
set splitright

"indent by filetype
filetype plugin indent on

"enable syntax highlighting
syntax on

" rebind the command W to w
command W w

"highlight search results
set hlsearch

"clear search highlighting on Leader-c (clear)
nnoremap <Leader>c :noh<cr>:<backspace>

"auto-indent code on cu (clean up)
nnoremap cu gg=G``zz

"map F3 to toggle spellcheck
nnoremap <F3> :set spell! spell?<cr>
