" write and tested with vim 8.0
" ========================================================
" common settings for both linux and windows
set nocompatible " don't not compatible with vi
colorscheme pablo
syntax on
filetype on
filetype plugin indent on "load file type plugins
set isk+=_,$,@,%,#,- "none of these should be world dividers

set incsearch hlsearch
set showmatch

set showcmd
set cursorline

set textwidth=0 wrapmargin=0 "turn off physical line wrapping
set wrap "turn on wrap lines visually.

" vim session
set ssop-=options " do not store global and local variables in session
set ssop-=folds   " do not store folds in session

set foldmethod=indent "use zc and zo for folding
set foldnestmax=10
set nofoldenable
set foldlevel=2

"tabs
set tabstop=2 softtabstop=2 shiftwidth=2
set noexpandtab
set smarttab "use tabs at the start of each line, spaces elsewhere
set autoindent
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list
"set guifont=Monospace\ Regular\ 14 "tested with Linux Ubuntu
"set guifont=Menlo-Regular:h14 'tested with MacBook with MacVIM

set number
