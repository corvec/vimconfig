" Vundle initialization
filetype off
let &rtp=&rtp . ',' . g:vimDir . '/bundle/vundle/'
call vundle#begin(g:vimDir . '/bundle')

" Allows Vundle to manage itself
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""
" Vundle Bundles
""""""""""""""""""
" Simplify switching between a single-line statement and a multi-line one
Plugin 'AndrewRadev/splitjoin.vim.git'
" Change display color of CSS color values
Plugin 'ap/vim-css-color.git'
" Add camel-case motion commands, like ,w for next camel word
Plugin 'bkad/CamelCaseMotion.git'
" <C-_> closes the most recent html/xml tag that has not yet been closed
Plugin 'docunext/closetag.vim.git'
" Use tab for insert-mode auto-completion
Plugin 'ervandew/supertab.git'
" Highlight the matching HTML tag when the cursor is positioned on a tag
Plugin 'gregsexton/MatchTag.git'
" Make NERDTree feel like a true panel, independent of tabs
Plugin 'jistr/vim-nerdtree-tabs'
" Full path fuzzy file/buffer/mru/tag/etc. finder, activated with Ctrl+P
Plugin 'kien/ctrlp.vim.git'
" Status-line plugin that uses Python
Plugin 'Lokaltog/powerline.git'
" Simplify motion by highlighting all possible choices and allowing you to press
" a key to jumpt to the target
Plugin 'Lokaltog/vim-easymotion.git'
" Enable using the jsbeautifier by running :JsBeautifier()
Plugin 'maksimr/vim-jsbeautify.git'
" In JavaScript files, hook into the omni completion and provide additional
" useful commands: TernDef, TernDoc, TernType, TernRefs, TernRename
" NOTE: Requires nodejs to be installed
" NOTE: Requires npm install to be run in its directory
Plugin 'marijnh/tern_for_vim.git'
" Interacts with the simplenote api and allows saving and loading notes
Plugin 'mrtazz/simplenote.vim.git'
" Enable folding by section headings in markdown documents by adding a foldexpr
Plugin 'nelstrom/vim-markdown-folding.git'
" Runs rubocop (must be installed separately) and displays the results in Vim
" NOTE: Requires RuboCop to be installed
Plugin 'ngmy/vim-rubocop.git'
" Provides automatic closing of quotes, parentheses, brackets, etc..
Plugin 'Raimondi/delimitMate.git'
" File panel with additional features
Plugin 'scrooloose/nerdtree.git'
" Syntax checking plugin that uses external syntax checkers
" NOTE: Requires relevant external checkers to be installed
Plugin 'scrooloose/syntastic.git'
" Undo tree invoked by :Gundo
Plugin 'sjl/gundo.vim.git'
" Comment current line or block of lines
Plugin 'tomtom/tcomment_vim.git'
" Git plugin
Plugin 'tpope/vim-fugitive.git'
" Dispatch builds to an external process rather than using vim's (blocking)
" command or using a separate console
Plugin 'tpope/vim-dispatch.git'
" Navigation-based complementary mappings, plus encoding and decoding
" NOTE: all commands can
Plugin 'tpope/vim-unimpaired.git'
" Remap . (repeat) so that plugins can use it
Plugin 'tpope/vim-repeat.git'
" Enable <C-A> and <C-X> to increment and decrement dates properly
Plugin 'tpope/vim-speeddating.git'
" Add surroundings mappings: cs<old><new>, ds<old>, S<new>, ysi<textobj><new>
" NOTE: use ([{ to add a space inside the surroundings; use )]} for no space
Plugin 'tpope/vim-surround.git'
" Syntax highlighting and filetype plugins for markdown
Plugin 'tpope/vim-markdown.git'
" :Abolish auto-corrections ; :%Subvert/facilit{y,ies}/replacement{,s}/g ;
" Coercion: crX - [s]nake_case, [m]IxedCase, [c]amelCase, [u]PPER_CASE
Plugin 'tpope/vim-abolish.git'
" Type things like `ul > li*5 < div` and expand them into proper html
Plugin 'tristen/vim-sparkup.git'
" Improved Grep command
Plugin 'vim-scripts/EasyGrep.git'
" Allows % to match more than just single characters
Plugin 'vim-scripts/matchit.zip.git'

" Required to make plugins available
call vundle#end()
filetype plugin indent on