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

"clear search highlighting on Leader-n (no highlighting)
nnoremap <Leader>n :noh<cr>:<backspace>

"auto-indent code on cu (clean up)
nnoremap cu gg=G``zz

"map F3 to toggle spellcheck
nnoremap <F3> :set spell! spell?<cr>

"open the shell on Leader-s (shell)
nnoremap <Leader>s :!$SHELL<cr>

"cd to file location on Leader-c (change)
nnoremap <Leader>c :lcd %:p:h<cr>:pwd<cr>
