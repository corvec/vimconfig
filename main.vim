set nocompatible "enable features that are too cool for VI
syn enable "enable syntax highlighting
colorscheme peachpuff
" colorscheme molokai
set clipboard=unnamed "yanks go to clipboard
set number "show line numbers
set linebreak "line breaks on words if set nolist is run
" set formatoptions=l
" set formatoptions=croql
set formatoptions=qrn1
" set formatoptions=cqrn1

set wrap
set tabstop=4 "tabs are 4 characters long
set noexpandtab
set nosmarttab
set shellslash
set hidden " hide buffers instead of closing them
set shiftwidth=4
set visualbell
set encoding=utf-8
set backup

" Changes added 2013/02/28 - http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set modelines=0
" 
set autoindent
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
" Default values:
set backspace=indent,eol,start
" Makes it so there is always a status bar
set laststatus=2
" Display the relative position rather than absolute in line numbers
set relativenumber
" Create <filename>.un~ files whenever I edit a file.
set undofile
" searches ignore case unless the case is mixed
set ignorecase
set smartcase
" makes search-replace global by default instead of local to the line
"set gdefault
" search as you go
set incsearch
" When you insert a bracket, briefly jump to the matching one
set showmatch
" Highlights when searching
set hlsearch
" textwidth is used for auto-wrapping comments and code
set textwidth=80
" Show a colored column at column 120
set colorcolumn=80



" Used for custom keyboard commands; hit <LEADER> and then the custom key
" within 1000ms
let mapleader=","

" move on soft lines with up/down
" http://stackoverflow.com/questions/4946421/vim-moving-with-hjkl-in-long-lines-screen-lines
inoremap <Down> <ESC>gja
inoremap <Up> <ESC>gka
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk

" Line break on <C-J> in normal mode (before current character)
" Line break on <C-K> in normal mode (after current character)
" stackoverflow.com/questions/3961730/how-to-break-a-line-in-vim-in-normal-mode
nnoremap <C-J> i<CR><ESC>k$
nnoremap <C-K> a<CR><ESC>k$

" See comment below this line for description of all its side effects:
let g:EasyMotion_leader_key = '<Leader>'
" " overrides:
"     " <Leader>f{char}   | Find {char} to the right. See |f|.
"     " <Leader>F{char}   | Find {char} to the left. See |F|.
let g:EasyMotion_mapping_t = '<leader><leader>t'
"     " <Leader>t{char}   | Till before the {char} to the right. See |t|.
"     " <Leader>T{char}   | Till after the {char} to the left. See |T|.
"     " <Leader><leader>w | Beginning of word forward. See |w|.
let g:EasyMotion_mapping_w = '<leader><leader>w'
"     " <Leader>W         | Beginning of WORD forward. See |W|.
"     " <Leader>b         | Beginning of word backward. See |b|.
"     " <Leader>B         | Beginning of WORD backward. See |B|.
"     " <Leader>e         | End of word forward. See |e|.
"     " <Leader>E         | End of WORD forward. See |E|.
"     " <Leader>ge        | End of word backward. See |ge|.
"     " <Leader>gE        | End of WORD backward. See |gE|.
"     " <Leader>j         | Line downward. See |j|.
"     " <Leader>k         | Line upward. See |k|.
"     " <Leader><leader>n | Jump to latest "/" or "?" forward. See |n|.
let g:EasyMotion_mapping_n = '<leader><leader>n'
"     " <Leader>N         | Jump to latest "/" or "?" backward. See |N|.
" Comment toggle shortcut
map <leader>c <c-_><c-_>
""""""""""""""""""""""""""""""""""""""""""""""""
" BUFFER HANDLING
""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""
" Next Buffer
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>n :bn<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Prev Buffer
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>p :bp<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Remove Buffer and Window
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>q :bd<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Remove Window only
""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>w :q<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Remove Buffer, Keep Window
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>d :bp<bar>sp<bar>bn<bar>bd<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Next Window
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>l <c-w>w
nnoremap sl <c-w>w
""""""""""""""""""""""""""""""""""""""""""""""""
" Prev Window
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>h <c-w>W
nnoremap sh <c-w>W


""""""""""""""""""""""""""""""""""""""""""""""""
" Set local window cwd to that of the current folder
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>. :lcd %:p:h<CR>

" Open or refresh NERDTree with <leader>t
nnoremap <leader>t :NERDTreeTabsToggle<CR>

" mistyping F1 when aiming for ESC now triggers ESC
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" make ; trigger :
nnoremap ; :
" exit normal mode for escape mode with jj
inoremap jj <ESC>
" use fully featured regexes in searches:
" nnoremap / /\v
" vnoremap / /\v

" Stop Highlighting
nnoremap <leader><space> :noh<cr>

" Space bar removes highlights in normal mode
" noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
" IMPROVED TAB HANDLING
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
"Next Tab
""""""""""""""""""""""""""""""""""""""
" inoremap <C-tab> <ESC>:tabnext<CR>i
nnoremap <c-tab> :tabnext<CR>
nnoremap sk :tabnext<CR>

""""""""""""""""""""""""""""""""""""""
" Previous Tab
""""""""""""""""""""""""""""""""""""""
" inoremap <C-S-tab> <ESC>:tabprevious<CR>i
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap sj :tabprev<CR>

""""""""""""""""""""""""""""""""""""""
" New (Empty) Tab
""""""""""""""""""""""""""""""""""""""
" inoremap <C-t> <ESC>:tabnew<CR>i
nnoremap <C-t> :tabnew<CR>
nnoremap se :tabnew<CR>

""""""""""""""""""""""""""""""""""""""
" New Tab (Filled with Current Window)
""""""""""""""""""""""""""""""""""""""
" inoremap <C-n> <ESC>:tabedit %<CR>i
nnoremap <c-n> :tabedit %<CR>
nnoremap sn :tabedit %<CR>
""""""""""""""""""""""""""""""""""""""
" Close Current Tab
""""""""""""""""""""""""""""""""""""""
" inoremap <C-F4> <ESC>:tabclose<CR>i
nnoremap <C-F4> :tabclose<CR>
nnoremap sq :tabclose<CR>

""""""""""""""""""""""""""""""""""""""
" Close Current Window
""""""""""""""""""""""""""""""""""""""
nnoremap sw :q<CR>


""""""""""""""""""""""""""""""""""""""
" Go to First Tab
""""""""""""""""""""""""""""""""""""""
" nnoremap sh :tabfirst<CR>
" nnoremap s1 :tabfirst<CR>

""""""""""""""""""""""""""""""""""""""
" Go to Last Tab
""""""""""""""""""""""""""""""""""""""
" nnoremap sl :tablast<CR>
" nnoremap s0 :tablast<CR>

""""""""""""""""""""""""""""""""""""""
" Move Tab
""""""""""""""""""""""""""""""""""""""
nnoremap sm :tabmove<Space>

" " Use F3 to vimgrep the cwd recursively for the text under the keyboard
let@x='*'
nnoremap <f3>   "iyiw:let@/=@i<CR>:vimgrep<SPACE><C-R>i<SPACE>**/<C-R>x<CR>
nnoremap <c-f3> "iyiw:let@/=@i<CR>:vimgrep<SPACE><C-R>i<SPACE>**/<C-R>x<C-left><left>
vnoremap <f3>   "iy:let@/=@i<CR>:vimgrep<SPACE><C-R>i<SPACE>**/<C-R>x<CR>
vnoremap <c-f3> "iy:let@/=@i<CR>:vimgrep<SPACE><C-R>i<SPACE>**/<C-R>x<C-left><left>
nnoremap <f2> :let@x='<c-r>x'<left>

" NOTE: EasyGrep is invoked with <leader>vv
"nnoremap <f3>   "iyiw:let@/=@i<CR>:Grep<SPACE><C-R>i<CR>
"nnoremap <c-f3> "iyiW:let@/=@i<CR>:Grep<SPACE><C-R>i
"vnoremap <f3> "iy:let@/=@i<CR>:Grep<SPACE><C-R>i


" Pathogen
execute pathogen#infect()

filetype plugin indent on

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

" Indent folding:
set nofoldenable
set fdm=indent

" Highlight current line
set cursorline

"Spell Checking:
set spell
set spelllang=en
set spellsuggest=9 "only show 9 suggestions

" Automatically open the quickfix window after :*grep* commands
autocmd QuickFixCmdPost *grep* cwindow

" CloseTag should only open for html/xml like files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1

let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_no_startup_for_diff=0
let g:nerdtree_tabs_synchronize_view=0

" SuperTab
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-p>"

" OS Specific Configuration and key-bindings
source ~/vimfiles/custom.vim
