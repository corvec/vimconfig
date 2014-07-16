" Vundle initialization
filetype off
let &rtp=&rtp . ',' . g:vimDir . '/bundle/vundle/'
call vundle#begin(g:vimDir . '/bundle')

" Allows Vundle to manage itself
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""
" Vundle Bundles
""""""""""""""""""
" Commands to join/split blocks of code
Plugin 'AndrewRadev/splitjoin.vim.git'
" Change display color of CSS color values
Plugin 'ap/vim-css-color.git'
" Add camel-case motion commands, like ,w for next camel word
Plugin 'bkad/CamelCaseMotion.git'
" <C-_> closes the most recent html/xml tag that has not yet been closed
Plugin 'docunext/closetag.vim.git'
Plugin 'ervandew/supertab.git'
Plugin 'gregsexton/MatchTag.git'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim.git'
Plugin 'Lokaltog/powerline.git'
Plugin 'Lokaltog/vim-easymotion.git'
Plugin 'maksimr/vim-jsbeautify.git'
Plugin 'marijnh/tern_for_vim.git'
Plugin 'mrtazz/simplenote.vim.git'
Plugin 'nelstrom/vim-markdown-folding.git'
Plugin 'ngmy/vim-rubocop.git'
Plugin 'Raimondi/delimitMate.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'sjl/gundo.vim.git'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-dispatch.git'
Plugin 'tpope/vim-unimpaired.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-speeddating.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-markdown.git'
Plugin 'tpope/vim-abolish.git'
Plugin 'tristen/vim-sparkup.git'
Plugin 'vim-scripts/EasyGrep.git'
Plugin 'vim-scripts/matchit.zip.git'

" Required to make plugins available
call vundle#end()
filetype plugin indent on
