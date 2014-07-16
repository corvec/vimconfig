" Vundle initialization
filetype off
if has('win32') || has('win64')
	set rtp+=~/vimfiles/bundle/vundle
	call vundle#begin('$HOME/vimfiles/bundle')
else
	set rtp+=~/.vim/bundle/vundle
	call vundle#begin()
endif

" Allows Vundle to manage itself
Plugin 'gmarik/Vundle.vim'

" Vundle Bundles
Bundle 'AndrewRadev/splitjoin.vim.git'
Bundle 'ap/vim-css-color.git'
Bundle 'bkad/CamelCaseMotion.git'
Bundle 'docunext/closetag.vim.git'
Bundle 'ervandew/supertab.git'
Bundle 'gregsexton/MatchTag.git'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim.git'
Bundle 'Lokaltog/powerline.git'
Bundle 'Lokaltog/vim-easymotion.git'
Bundle 'maksimr/vim-jsbeautify.git'
Bundle 'marijnh/tern_for_vim.git'
Bundle 'mrtazz/simplenote.vim.git'
Bundle 'nelstrom/vim-markdown-folding.git'
Bundle 'ngmy/vim-rubocop.git'
Bundle 'Raimondi/delimitMate.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'sjl/gundo.vim.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-dispatch.git'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-speeddating.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'tpope/vim-abolish.git'
Bundle 'tristen/vim-sparkup.git'
Bundle 'vim-scripts/EasyGrep.git'
Bundle 'vim-scripts/matchit.zip.git'

" Required to make plugins available
call vundle#end()
filetype plugin indent on
