" Vundle initialization
filetype off

" Should only happen if the vundle submodule was not initialized
let vundle_readme=expand(g:vimDir . '/bundle/Vundle.vim/README.md')
let vundle_install_needed=0
if !filereadable(vundle_readme)
	execute 'cd ' . g:vimDir
	silent !git submodule init
	silent !git submodule update
	execute 'so ' . g:vimDir . '/bundle/Vundle.vim/autoload/vundle.vim'
	let vundle_install_needed=1
endif
let &rtp=&rtp . ',' . g:vimDir . '/bundle/Vundle.vim/'
call vundle#begin(g:vimDir . '/bundle')

" Allows Vundle to manage itself
Plugin 'VundleVim/Vundle.vim'

""""""""""""""""""
" Vundle Bundles
""""""""""""""""""
" Simplify switching between a single-line statement and a multi-line one
Plugin 'AndrewRadev/splitjoin.vim'
" Change display color of CSS color values
Plugin 'ap/vim-css-color'
" Add camel-case motion commands, like ,w for next camel word
Plugin 'bkad/CamelCaseMotion'
" Eclipse integration
Plugin 'corvec/eclim-for-vundle'
" Full path fuzzy file/buffer/mru/tag/etc. finder, activated with Ctrl+P
Plugin 'ctrlpvim/ctrlp.vim'
" Basic Scala features
Plugin 'derekwyatt/vim-scala'
" <C-_> closes the most recent html/xml tag that has not yet been closed
Plugin 'docunext/closetag.vim'
" Use tab for insert-mode auto-completion
Plugin 'ervandew/supertab'
" Highlight the matching HTML tag when the cursor is positioned on a tag
Plugin 'gregsexton/MatchTag'
" forked version of vim-scripts/JavaScript-Indent
Plugin 'HuidaeCho/JavaScript-Indent'
" Make NERDTree feel like a true panel, independent of tabs
Plugin 'jistr/vim-nerdtree-tabs'
" Convenient way to manipulate buffers
Plugin 'jlanzarotta/bufexplorer'
" Patterns become text-objects. i/ and i?, note that a/ and a? are identical
" NOTE: Requires kana/vim-text-obj-user
Plugin 'kana/vim-textobj-lastpat'
" Lines become text-objects. il excludes leading/trailing whitespace; al includes it
" NOTE: Requires kana/vim-text-obj-user
Plugin 'kana/vim-textobj-line'
" customizable text objects
Plugin 'kana/vim-textobj-user'
" Status-line plugin that uses Python
Plugin 'Lokaltog/powerline'
" Simplify motion by highlighting all possible choices and allowing you to press
" a key to jump to the target
Plugin 'Lokaltog/vim-easymotion'
" Enable using the jsbeautifier by running :JsBeautifier()
Plugin 'maksimr/vim-jsbeautify'
" In JavaScript files, hook into the omni completion and provide additional
" useful commands: TernDef, TernDoc, TernType, TernRefs, TernRename
" NOTE: Requires nodejs to be installed
" NOTE: Requires npm install to be run in its directory
Plugin 'marijnh/tern_for_vim'
" indented blocks become text objects, using 'i'. Use 'ii' to select just the
" block; use 'ai' to include the line just above the block.
" Especially useful for Python and YAML
Plugin 'michaeljsmith/vim-indent-object'
" Interacts with the simplenote api and allows saving and loading notes
Plugin 'mrtazz/simplenote.vim'
" Enable Vim JSX syntax highlighting
Plugin 'mxw/vim-jsx'
" Enable folding by section headings in markdown documents by adding a foldexpr
Plugin 'nelstrom/vim-markdown-folding'
" Runs rubocop (must be installed separately) and displays the results in Vim
" NOTE: Requires RuboCop to be installed
Plugin 'ngmy/vim-rubocop'
" ES6 JavaScript Syntax - use ft=javascript
Plugin 'othree/yajs.vim'
" Syntax for JS libraries
Plugin 'othree/javascript-libraries-syntax.vim'
" Improved Vim JavaScript syntax highlighting and indent support
Plugin 'pangloss/vim-javascript'
" Enable improved markdown support
Plugin 'plasticboy/vim-markdown'
" Filetype specific commenting
" NOTE: Toggle with <leader>c<space>
Plugin 'scrooloose/nerdcommenter'
" File panel with additional features
Plugin 'scrooloose/nerdtree'
" Syntax checking plugin that uses external syntax checkers
" NOTE: Requires relevant external checkers to be installed
Plugin 'scrooloose/syntastic'
" Undo tree invoked by :Gundo
Plugin 'sjl/gundo.vim'
" Git plugin
Plugin 'tpope/vim-fugitive'
" Dispatch builds to an external process rather than using vim's (blocking)
" command or using a separate console
Plugin 'tpope/vim-dispatch'
" Navigation-based complementary mappings, plus encoding and decoding
" NOTE: all commands can
Plugin 'tpope/vim-unimpaired'
" Remap . (repeat) so that plugins can use it
Plugin 'tpope/vim-repeat'
" Enable <C-A> and <C-X> to increment and decrement dates properly
Plugin 'tpope/vim-speeddating'
" Add surroundings mappings: cs<old><new>, ds<old>, S<new>, ysi<textobj><new>
" NOTE: use ([{ to add a space inside the surroundings; use )]} for no space
Plugin 'tpope/vim-surround'
" :Abolish auto-corrections ; :%Subvert/facilit{y,ies}/replacement{,s}/g ;
" Coercion: crX - [s]nake_case, [m]IxedCase, [c]amelCase, [u]PPER_CASE
Plugin 'tpope/vim-abolish'
" Type things like `ul > li*5 < div` and expand them into proper html
Plugin 'corvec/sparkup', {'rtp': 'vim/'}
" Function arguments become text objects, using 'a'
Plugin 'vim-scripts/argtextobj.vim'
" Improved Grep command
Plugin 'vim-scripts/EasyGrep'
" Allows % to match more than just single characters
Plugin 'vim-scripts/matchit.zip'
" Vim Wiki
Plugin 'vimwiki/vimwiki'

" Required to make plugins available
call vundle#end()

if vundle_install_needed == 1
	PluginInstall
end


filetype plugin indent on
