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

function VIM_UI()
	set lsp=0
	set wildmenu "turn on wild menu
	set ruler "show current positions along the bottom
	set cmdheight=2
	set number
	set lazyredraw "dont redraw while running macros(much faster)
	set hid " you can change buffer without saving
	set backspace=2 "make backspace work normal
	set whichwrap+=<,>,h,l "backspace and cursor keys wrap to
	set mouse=a "use mouse everywhere
	set shortmess=atI "shortens message to avoid 'prss a key' prompt
	set report=0 " tell us when anything is changed via:...
	set noerrorbells "dont make noise
	"make the splitters btw windows be blink
	set fillchars=vert:\ ,stl:\ ,stlnc:\ 
endfunction


" visualize invisible chars
set encoding=utf-8
"if has('gui_running')
"	set listchars=eol:⏎,tab:▶\ ,trail:␠,nbsp:⎵,space:.
"	"for vim UI
"	call VIM_UI()
"else
"	set listchars=tab:>.,trail:.,extends:\#,nbsp:.,space:.
endif
set list

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

