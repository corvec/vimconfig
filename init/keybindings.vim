" This file is concerned with custom keybindings.
" NOTE: options that affect how existing keybindings work instead go in editing.vim
" NOTE: plugin keybindings are set in plugins.vim

" Used for custom keyboard commands; hit <LEADER> and then the custom key
" within 1000ms
let mapleader=","

" make Y match D and C - yank the rest of the line
nnoremap Y y$
" Preserve location of the cursor when yanking a selection (default: reverting from visual mode takes you to the 
" beginning of the selection). See http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" move on soft lines with up/down
" http://stackoverflow.com/questions/4946421/vim-moving-with-hjkl-in-long-lines-screen-lines
inoremap <Down> <ESC>gja
inoremap <Up> <ESC>gka
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk

function! EnableColemakNavigation()
	noremap n j
	noremap e k
	noremap i l
	" recover the lost keys from above
	noremap l i
	noremap k e
	noremap j n
endfunction

function DisableColemakNavigation()
	nunmap n
	nunmap e
	nunmap i
	nunmap l
	nunmap k
	nunmap j
endfunction

" swap use of ^ and 0
nnoremap ^ 0
nnoremap 0 ^
" move to the end of the previous line with backspace
nnoremap <BS> 0<BS>

" better deletion - I don't want <del>, s, or c to overwrite what I have in the
" default register (* because clipboard=unnamed above)
nnoremap x "ax
nnoremap <leader>x x
vnoremap x "ax
nnoremap <del> "a<del>
vnoremap <del> "a<del>
nnoremap c "ac
vnoremap c "ac
nnoremap s "as
vnoremap s "as

""""""""""""""""""""""""""""""""""""""""""""""""
" BUFFER HANDLING
""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""
" Next Buffer
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bn :bn<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Prev Buffer
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bp :bp<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Remove Buffer and Window
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bq :bd<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Remove Window only
""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>bw :q<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Remove Buffer, Keep Window
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
""""""""""""""""""""""""""""""""""""""""""""""""
" Next Window
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bl <c-w>w
nnoremap sl <c-w>w
""""""""""""""""""""""""""""""""""""""""""""""""
" Prev Window
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bh <c-w>W
nnoremap sh <c-w>W


""""""""""""""""""""""""""""""""""""""""""""""""
" Set local window cwd to that of the current folder
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>. :lcd %:p:h<CR>

" Open or refresh NERDTree with <leader>t
nnoremap <leader>t :NERDTreeTabsToggle<CR>
nnoremap <leader>T :NERDTreeFind<CR>

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
inoremap <c-tab> <ESC>:tabnext<CR>
nnoremap <c-tab> :tabnext<CR>
nnoremap sk :tabnext<CR>

""""""""""""""""""""""""""""""""""""""
" Previous Tab
""""""""""""""""""""""""""""""""""""""
inoremap <C-S-tab> <ESC>:tabprevious<CR>
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
nnoremap <f3>   "iyiw:let@/=@i<CR>:noau<SPACE>vimgrep<SPACE><C-R>i<SPACE>**/<C-R>x<CR>
nnoremap <c-f3> "iyiw:let@/=@i<CR>:noau<SPACE>vimgrep<SPACE><C-R>i<SPACE>**/<C-R>x<C-left><left>
vnoremap <f3>   "iy:let@/=@i<CR>:noau<SPACE>vimgrep<SPACE><C-R>i<SPACE>**/<C-R>x<CR>
vnoremap <c-f3> "iy:let@/=@i<CR>:noau<SPACE>vimgrep<SPACE><C-R>i<SPACE>**/<C-R>x<C-left><left>
nnoremap <f2> :let@x='<c-r>x'<left>

" NOTE: EasyGrep is invoked with <leader>vv
nnoremap <leader>/ "iyiw:let@/=@i<CR>:noau<SPACE>Grep<SPACE><C-R>i
vnoremap <leader>/ "iy:let@/=@i<CR>:noau<SPACE>Grep<SPACE><C-R>i
"nnoremap <f3>   "iyiw:let@/=@i<CR>:Grep<SPACE><C-R>i<CR>
"nnoremap <c-f3> "iyiW:let@/=@i<CR>:Grep<SPACE><C-R>i
"vnoremap <f3> "iy:let@/=@i<CR>:Grep<SPACE><C-R>i


" Folding keybindings
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Line break on <C-J> in normal mode (before current character)
" Line break on <C-K> in normal mode (after current character)
" Switch from nnoremap to nmap to not conflict with Smart-Tabs
" stackoverflow.com/questions/3961730/how-to-break-a-line-in-vim-in-normal-mode
nnoremap <C-J> i<CR><ESC>k$
nnoremap <C-K> a<CR><ESC>k$


" Keybindings to my own custom functions
nnoremap <c-F12> :call RotateTheme()<CR>
nnoremap <leader><c-n> :call ToggleRelNumbering()<CR>
" indent one space (countable) with ,> (like >> but for alignment)
nnoremap <leader>> :<c-u>call<space>AlignSpace(4*v:count1)<CR>
nnoremap <leader>< :s/\t\([^\t]\)/    \1/<CR>:noh<CR>

" backspace delete in visual mode
vnoremap <BS> d
" copy
vnoremap <c-c> "+y
" paste
noremap <c-v> "+gP
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
" cut
vnoremap <c-x> d
" undo
inoremap <c-z> <c-o>u
noremap <c-z> u
" Visual block mode
noremap <c-q> <c-v>
noremap <leader>v <c-v>

" Editing macros (Usage: "qcr to change the q register. `cr` stands for 'change register')
 nnoremap <silent> cr :<C-U><C-R><C-R>='let @' . v:register . ' = ' . string(getreg())<CR><C-F><Left>

" Github Copilot keybindings
" trigger on ctrl + space instead of tab. if nothing is displayed, request a suggestion
"imap <silent><script><expr> <leader><Space> copilot#Accept("\<M-\\>")
imap <leader>m <Cmd>call copilot#Suggest()<cr>
imap <leader><S-m> <Cmd>call copilot#Dismiss()<cr>
imap <leader>n <Cmd>call copilot#Next()<cr>
imap <leader>p <Cmd>call copilot#Previous()<cr>
imap <S-Space> <Cmd>call copilot#Accept("")<cr>
"This doesn't work, no clue why:
"imap <leader><Space> <Cmd>call copilot#Accept("\\<Cmd>call copilot#Suggest()\\<cr>")<cr>

" Go to definition
nnoremap <leader>g <Plug>
nnoremap <leader>f <
