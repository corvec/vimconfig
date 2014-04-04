" The transparency feature requires vimtweak.dll
" which is available at http://www.vim.org/scripts/script.php?script_id=687
" Decrease transparency (reset if below a threshold)
function! DecreaseTransparency()
	let g:transparency=g:transparency - g:trans_inc
	" Threshold
	if (g:transparency < g:trans_min)
		call libcallnr("vimtweak.dll", "SetAlpha", 254)
		let g:transparency = g:trans_min " 255
	endif
	" Actually set the transparency
	call libcallnr("vimtweak.dll", "SetAlpha", g:transparency)
	echo "Set transparency to ".g:transparency
endfunc

" Decrease transparency (reset if below a threshold)
function! IncreaseTransparency()
	let g:transparency=g:transparency + g:trans_inc
	" Threshold
	if(g:transparency > 255)
		let g:transparency = 255 " g:trans_min
	endif
	call libcallnr("vimtweak.dll", "SetAlpha", g:transparency)
	echo "Set transparency to ".g:transparency
endfunc


" If we're transparent, make it solid
" If we're solid, set the transparency to 195
function! ToggleTransparency()
	if (g:transparency < 255)
		let g:transparency = 255
	else
		let g:transparency = g:trans_pref
    endif
	call libcallnr("vimtweak.dll", "SetAlpha", g:transparency)
	echo "Set transparency to ".g:transparency
endfunc

" Rotate through the list of themes up above
function! RotateTheme()
	let g:theme = g:theme + 1
	if(g:theme >= len(g:themes))
		let g:theme = 0
	endif
	exec 'colorscheme '.g:themes[g:theme]
endfunc

" Toggle between Automatic, Absolute, and Relative line numbering
function! ToggleRelNumbering()
	let g:relnum_state = g:relnum_state + 1
	if (g:relnum_state > 2)
		let g:relnum_state = 0
		call EnableAutoRelNumberToggling()
		set relativenumber " We're in normal mode and focused
		echo "Automatic Line number toggling enabled"
	else
		call DisableAutoRelNumberToggling()
		if(&relativenumber == 1)
			set norelativenumber
			echo "Line numbering - Absolute"
		else
			set relativenumber
			echo "Line numbering - Relative"
		endif
	endif
endfunc

function! EnableAutoRelNumberToggling()
	" Display absolute numbers when we lose focus
	autocmd FocusLost * :set norelativenumber
	"Display relative numbers when we gain focus
	autocmd FocusGained * :set relativenumber
	" Display absolute numbers in insert mode
	autocmd InsertEnter * :set norelativenumber
	" Display relative numbers when we leave insert mode
	autocmd InsertLeave * :set relativenumber
	" " Display absolute numbers in Command mode
	" nnoremap : :set norelativenumber<CR>:
	" nnoremap <ESC> <ESC>:set relativenumber<CR>
	" nnoremap <CR> <CR>:set relativenumber<CR>
endfunc

" 0 - auto; 1 - manual (absolute); 2 - manual (relative)
if !exists("g:relnum_state")
	let g:relnum_state = 1
	set norelativenumber
endif


function! DisableAutoRelNumberToggling()
	" Don't display absolute numbers when we lose focus
	autocmd! FocusLost *
	"Don't display relative numbers when we gain focus
	autocmd! FocusGained *
	" Don't display absolute numbers in insert mode
	autocmd! InsertEnter *
	" Don't display relative numbers when we leave insert mode
	autocmd! InsertLeave *
endfunc

function! AlignSpace(count)
	execute "normal! mi" . a:count . "I "
	execute "normal! `i" . a:count . "l"
endfunc

function! AccountServicesProject()
	set expandtab
	set smarttab
	set smartindent

	set softtabstop=4
	set shiftwidth=4
	set tabstop=4 "tabs are 4 characters long
	set autoindent
	set copyindent

	set wildignore+=*\\discovery\\*,
endfunc


" Function Mappings
if has("win32") || has("win64")
	nnoremap <F10> :call DecreaseTransparency()<CR>
	nnoremap <F11> :call IncreaseTransparency()<CR>
	nnoremap <c-F11> :call ToggleTransparency()<CR>
endif
nnoremap <c-F12> :call RotateTheme()<CR>
nnoremap <leader><c-n> :call ToggleRelNumbering()<CR>
" indent one space (countable) with ,> (like >> but for alignment)
nnoremap <leader>> :<c-u>call<space>AlignSpace(4*v:count1)<CR>
nnoremap <leader>< :s/\t\([^\t]\)/    \1/<CR>:noh<CR>

" Global Variables for this script:
let g:transparency=255
let g:themes = ["peachpuff","molokai"]
let g:theme = 0
let g:trans_inc = 20
let g:trans_min = 135
let g:trans_pref = 195

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

" backspace delete in visual mode
vnoremap <BS> d
" copy
vnoremap <c-c> "+y
" paste
map <c-v> "+gP
imap <c-v> <c-r>+
cmap <c-v> <c-r>+
" cut
vmap <c-x> d
" undo
inoremap <c-z> <c-o>u
noremap <c-z> u
" ctrl-v key sequence
noremap <c-q> <c-v>


set backupdir=~/vimbackup//
set directory=~/vimswap//
set udir=~/vimundo//
cd ~

" UltiSnips configuration
let g:UltiSnipsExpandTrigger="<C-J>"
let g:UltiSnipsListSnippets="<C-H>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Maximize VIM on Windows
au GUIEnter * simalt ~x

"Simplenote Configuration
if filereadable(expand('$HOME') . '/vimfiles/simplenote.vim')
	source ~/vimfiles/simplenote.vim
endif

"NERDTree
let g:NERDTreeBookmarksFile=expand('$HOME') . '/vimfiles/_nerdtreebookmarks'

" RuboCop
let g:vimrubocop_config=expand('$HOME') . '/vimfiles/rubocop.yml'

" Menu of all the things that I use:
function! MyMenu()
    if exists("g:loaded_my_menu")
        try
            silent! aunmenu my
        endtry
    endif
    let g:loaded_my_menu = 1

    if g:colors_name == "my" && g:my_menu != 0
		amenu &My\ Menu.&NERD\ Tree.&Toggle       :NERDTreeToggle
    endif
endfunction

