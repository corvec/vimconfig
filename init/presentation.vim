" enable syntax highlighting
syn enable
colorscheme peachpuff
if !has("gui_running") && has("termguicolors")
	set termguicolors
	if !has("nvim")
	" Fix from https://github.com/vim/vim/issues/993#issuecomment-255651605
	" set Vim-specific sequences for RGB colors
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum""
	endif
endif
" Set font appropriately depending on our OS
if has("nvim")
	" Where are the docs on how / where this works?
	command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>") | let g:Guifont="<args>"
	let g:Guifont="Input Mono:h18"
	"let g:Guifont="Fira Code Regular Nerd Font Complete:h14"
elseif has("gui_running")
	if has("gui_kde")
		set guifont=Consolas/12/-1/5/50/0/0/0/0/0
	elseif has("gui_gtk")
		set guifont=Consolas\ 12
	elseif has("win32") || has("win64")
		set guifont=Consolas:h11
	elseif has("osx") || has("macunix") ||  has("mac")
		set guifont=-xos4-terminus-medium-r-normal--14-140-72-72-c-80-iso8859-1
	else " This is the fallback for Mac...
		set guifont=-xos4-terminus-medium-r-normal--14-140-72-72-c-80-iso8859-1
	endif
endif
" show line numbers
set number

set wrap
" hide buffers instead of closing them
set hidden
" Don't beep.
set visualbell

" Disable modelines, which could be exploited
" Modelines are a way to execute vim commands when that file was opened
set modelines=0
" Display the mode at the bottom of the screen
set showmode
" http://stackoverflow.com/questions/9511253/how-to-effectively-use-vim-wildmenu
set wildmenu
"Filename completion
"set wildmode=longest,full,list "Complete longest, then each match, then show a list
set wildmode=list:full "nah, just show me a list
" Improves smoothness
set ttyfast
" Show the percent through the file and the column / row in the statusbar
set ruler
" Makes it so there is always a status bar
set laststatus=2
" When you insert a bracket, briefly jump to the matching one
set showmatch
" Highlights when searching
set hlsearch
" textwidth is used for auto-wrapping comments and code
set textwidth=120
" Show a colored column at column 120
set colorcolumn=120

" set list listchars=tab:\|_
" Enter the middle-dot by pressing Ctrl-k then .M
" Enter the right-angle-quote by pressing Ctrl-k then >>
" Enter the Pilcrow mark by pressing Ctrl-k then PI
" Extra options :dig
set list listchars=tab:»\ ,trail:·,extends:>
"set list listchars eol:¶


" Show the menu but not the toolbar
if ! has("nvim")
	set guioptions=m
endif

" 3 lines of buffer offset while scrolling:
set scrolloff=3

" Highlight current line
set cursorline

" Icon Options

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:airline_powerline_fonts = 1

" Custom Git symbols in NERDTree
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
