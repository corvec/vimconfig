" Global Variables for these functions
let g:transparency=255
let g:themes = ["peachpuff","molokai"]
let g:theme = 0
let g:trans_inc = 20
let g:trans_min = 135
let g:trans_pref = 195

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

