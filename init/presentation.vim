" enable syntax highlighting
syn enable
colorscheme peachpuff
if !has('gui_running')
	exec 'source ' . g:vimDir . '/colors/molokai.vim'
endif
" Set font appropriately depending on our OS
if has("gui_kde")
	set guifont=Consolas/12/-1/5/50/0/0/0/0/0
elseif has("gui_gtk")
	set guifont=Consolas\ 12
elseif has("gui_running")
	if has("win32") || has("win64")
		set guifont=Consolas:h11
	else
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
set guioptions=m

" 3 lines of buffer offset while scrolling:
set scrolloff=3

" Highlight current line
set cursorline

