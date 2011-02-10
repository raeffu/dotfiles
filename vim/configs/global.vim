""""""""""""""""""""""""""""""""""""""""
" GLOBAL SETTINGS
""""""""""""""""""""""""""""""""""""""""
let maplocalleader = ","
let mapleader = ";"
set nobackup
filetype on
filetype plugin on
if g:current_os == "windows"
  set dir=c:\\swap\\vim
endif

""""""""""""""""""""""""""""""""""""""""
" INDENTING SETTINGS
""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent

""""""""""""""""""""""""""""""""""""""""
" TABS
""""""""""""""""""""""""""""""""""""""""
set showtabline=2

""""""""""""""""""""""""""""""""""""""""
" SEARCHING
""""""""""""""""""""""""""""""""""""""""
set hlsearch            " highlight search results
set incsearch           " highlight search resultsw while typing
set ignorecase          " case-insensitive search
set smartcase           " use smartcase => case-insensitive with lowercase
