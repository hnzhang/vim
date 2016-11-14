" please copy this file to ~/.vimrc for linux
" for basic setting
source ~/github/vim/vimrc_common.vim " for vim 8.0 or newer

"use Vundle as plugin manager
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'bundle/Vundle.vim' "load Vundle first
Plugin 'bundle/ctrlp.vim' "load ctrlp.vim
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
