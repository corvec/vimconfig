" Vundle initialization
filetype off
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()

" Allows Vundle to manage itself
Plugin 'gmarik/Vundle.vim'

" Vundle Bundles
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

" Required to make plugins available
call vundle#end()
filetype plugin indent on
