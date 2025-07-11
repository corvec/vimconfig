" Vim-Plug configuration

" https://github.com/junegunn/vim-plug
let vim_plug_file=expand(g:vimDir . '/bundle/vim-plug/plug.vim')
let vim_plug_install_needed=0
if !filereadable(vim_plug_file)
	execute 'cd ' . g:vimDir
	silent !git submodule init
	silent !git submodule update
	let vim_plug_install_needed=1
endif

execute 'so ' . vim_plug_file

call plug#begin(g:vimDir . '/bundle')

""""""""""""""""""
" Plugins
""""""""""""""""""
" Simplify switching between a single-line statement and a multi-line one
Plug 'AndrewRadev/splitjoin.vim'
" Git status gutter
Plug 'airblade/vim-gitgutter'
" Change display color of CSS color values
Plug 'ap/vim-css-color'
" Add camel-case motion commands, like ,w for next camel word
Plug 'bkad/CamelCaseMotion'
" Eclipse integration - my personal fork - 'corvec/eclim-for-vundle'
" Removed due to not being used anymore.

" Basic Scala features
Plug 'derekwyatt/vim-scala'
" <C-_> closes the most recent html/xml tag that has not yet been closed
Plug 'docunext/closetag.vim'
" Simplify motion by highlighting all possible choices and allowing you to press
" a key to jump to the target
Plug 'easymotion/vim-easymotion'
" Use tab for insert-mode auto-completion
Plug 'ervandew/supertab'
" Leap
if has("nvim")
	Plug 'gandor/leap.nvim'
endif
" Github Copilot
" TODO: Investigate this alternative lib
"Plug('Exafunction/codeium.vim')
if has("nvim")
  Plug 'github/copilot.vim'
endif
" Highlight the matching HTML tag when the cursor is positioned on a tag
Plug 'gregsexton/MatchTag'
" forked version of vim-scripts/JavaScript-Indent
Plug 'HuidaeCho/JavaScript-Indent'
" Make NERDTree feel like a true panel, independent of tabs
Plug 'jistr/vim-nerdtree-tabs'
" Convenient way to manipulate buffers
Plug 'jlanzarotta/bufexplorer'
" Fuzzy-finder that is allegedly faster and better than Ctrl+P
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Patterns become text-objects. i/ an    , note that a/ and a? are identical
" NOTE: Requires kana/vim-text-obj-user
Plug 'kana/vim-textobj-lastpat'
" Lines become text-objects. il excludes leading/trailing whitespace; al includes it
" NOTE: Requires kana/vim-text-obj-user
Plug 'kana/vim-textobj-line'
" customizable text objects
Plug 'kana/vim-textobj-user'
" Project-specific vimrc support
Plug 'MarcWeber/vim-addon-local-vimrc'
" Enable using the jsbeautifier by running :JsBeautifier()
Plug 'maksimr/vim-jsbeautify'
" Removed in favor of asyncomplete:
""" " In JavaScript files, hook into the omni completion and provide additional
""" " useful commands: TernDef, TernDoc, TernType, TernRefs, TernRename
""" " NOTE: Requires nodejs to be installed
""" " NOTE: Requires npm install to be run in its directory
""" " Do not install for neovim
""" if !has("nvim")
""" 	Plug 'marijnh/tern_for_vim'
""" " Completion if we don't have neovim
""" 	Plug 'shougo/neocomplete.vim', { 'do': ':UpdateRemotePlugins' }
""" else
""" 	" Better alternative for neovim:
""" 	Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
""" 	let g:deoplete#enable_at_startup = 1
""" endif
" indented blocks become text objects, using 'i'. Use 'ii' to select just the
" block; use 'ai' to include the line just above the block.
" Especially useful for Python and YAML
Plug 'michaeljsmith/vim-indent-object'
" Interacts with the simplenote api and allows saving and loading notes
if filereadable(g:vimDir . '/init/simplenote.vim')
	Plug 'mrtazz/simplenote.vim'
endif
" Enable Vim JSX syntax highlighting
Plug 'mxw/vim-jsx'
" Enable folding by section headings in markdown documents by adding a foldexpr
Plug 'nelstrom/vim-markdown-folding'
" Runs rubocop (must be installed separately) and displays the results in Vim
" NOTE: Requires RuboCop to be installed
"Plug 'ngmy/vim-rubocop'
" ES6 JavaScript Syntax - use ft=javascript
Plug 'othree/yajs.vim'
" Syntax for JS libraries
Plug 'othree/javascript-libraries-syntax.vim'
" Improved Vim JavaScript syntax highlighting and indent support
Plug 'pangloss/vim-javascript'
" Enable improved markdown support
Plug 'plasticboy/vim-markdown'
" Status-line plugin that uses Python
" Plug 'powerline/powerline'
" ^ Removed in favor of airline because it requires a separate install.

" Filetype specific commenting
" NOTE: Toggle with <leader>c<space>
Plug 'scrooloose/nerdcommenter'
" File panel with additional features
Plug 'scrooloose/nerdtree' " , { 'on': 'NERDTreeTabsToggle' }
" Syntax checking plugin that uses external syntax checkers
" NOTE: Requires relevant external checkers to be installed
"Plug 'scrooloose/syntastic'
" Undo tree invoked by :Gundo
Plug 'sjl/gundo.vim'
" Color-coding for the icons in NERDTree from vim-dev-icons
" This plugin has an issue in neovim
if !has("nvim")
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
endif
" Alignment operators: gl (add spaces to the left) and gL (add spaces to the right), e.g., glip= or 3gLi(,
Plug 'tommcdo/vim-lion'
" Git plugin
Plug 'tpope/vim-fugitive'
" Dispatch builds to an external process rather than using vim's (blocking)
" command or using a separate console
Plug 'tpope/vim-dispatch'
" Helpers for UNIX shell commands (Delete, Unlink, Move, Rename, Chmod, Mkdir, Find, Locate, SudoWrite and SudoEdit)
if has("unix")
	Plug 'tpope/vim-eunuch'
endif
" wisely add "end" in ruby, endfunction/endif/more in vim script, etc.
Plug 'tpope/vim-endwise'
" Fully automatic indentation detection
Plug 'tpope/vim-sleuth'
" Navigation-based complementary mappings, plus encoding and decoding
" NOTE: all commands can
Plug 'tpope/vim-unimpaired'
" Remap . (repeat) so that plugins can use it
Plug 'tpope/vim-repeat'
" Enable <C-A> and <C-X> to increment and decrement dates properly
Plug 'tpope/vim-speeddating'
" Add surroundings mappings: cs<old><new>, ds<old>, S<new>, ysi<textobj><new>
" NOTE: use ([{ to add a space inside the surroundings; use )]} for no space
Plug 'tpope/vim-surround'
" :Abolish auto-corrections ; :%Subvert/facilit{y,ies}/replacement{,s}/g ;
" Coercion: crX - [s]nake_case, [m]IxedCase, [c]amelCase, [u]PPER_CASE
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-sensible'
" Type things like `ul > li*5 < div` and expand them into proper html
Plug 'corvec/sparkup', {'rtp': 'vim/'}
" lean & mean status / tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
" Function arguments become text objects, using 'a'
Plug 'vim-scripts/argtextobj.vim'
" Improved Grep command
Plug 'vim-scripts/EasyGrep'
" Allows % to match more than just single characters
Plug 'vim-scripts/matchit.zip'
" Vim Wiki
" Commented out because I don't actually use it and because it's conflicting with my camelcase bindings
"Plug 'vimwiki/vimwiki'
" Add additional text objects
Plug 'wellle/targets.vim'
" Git integration into NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'


" Icons in NERDTree, needs to be run after NERDTree and other plugins it hooks into
Plug 'ryanoasis/vim-devicons'

" Language Server Protocol support
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" LSP-powered Autocomplete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" LSP-powered Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
" LSP-powered async linting
" Plug 'dense-analysis/ale'

" Required to make plugins available
call plug#end()

if vim_plug_install_needed == 1
	PlugInstall
end
