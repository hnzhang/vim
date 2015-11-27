".vimrc file for linux, _vimrc for windows
set nocompatible "get out of horrible vi compatible issue
colorscheme murphy
set number
set cmdheight=2
set laststatus=2
set ruler "show current positon along the bottom
set backspace=2
syntax on
filetype on "detect filetype
filetype plugin indent on " load file type plugins
set isk+=_,$,@,%,#,- "None of them should be word dividers
set incsearch hlsearch
"----------------
" case insensitive search
set ignorecase
set smartcase
"--------------------------------------------
"for pathongen--plugin manager in bundle folder
execute pathogen#infect()
"--------------------------------------------
" vim session
set ssop-=options "do not store global and local variables in a session
set ssop-=folds " do not store folds

"visualize invisible chars
set encoding=utf-8
set list listchars=tab:>-,trail:>,extends:>,precedes:<
set autoindent
set smartindent
set cindent "do c-style indenting
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab smarttab

"font
if has("gui_running") &&  has("win32")
    set guifont=Consolas:h12:cDefault
endif

