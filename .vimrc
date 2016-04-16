"pathogen support
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"line numbering
set number
set relativenumber

"tab defaults
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab

"wrap lines
set linebreak

"set display options
set scrolloff=1
set sidescrolloff=5
set display+=lastline

"statusline defaults
set laststatus=2
set ruler

"enable completion for command-line
set wildmenu

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

"search defaults
set incsearch
set hlsearch

"delete comment character when joining commented lines
set formatoptions+=j

"automatically re-read file if changed
set autoread

"clear search highlighting on Leader-c (clear)
nnoremap <Leader>c :noh<cr>:<backspace>

"auto-indent code on cu (clean up)
nnoremap cu gg=G``zz

"map F3 to toggle spellcheck
nnoremap <F3> :set spell! spell?<cr>
