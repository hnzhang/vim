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
"set font of VIM
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif




set number

"for python
"
"for c++

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
	if &sh =~ '\<cmd'
	  let cmd = '""' . $VIMRUNTIME . '\diff"'
	  let eq = '"'
	else
	  let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
	endif
  else
	let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

