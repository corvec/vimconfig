" This configuration file is concerned with how the editor functions


" Tab magic:
" Indent with tabs
set noexpandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4 "tabs are 4 characters long
set nosmarttab
set autoindent

" Make it easier to preserve manually aligning with spaces:
set copyindent
" removed because it stops vim from fixing alignment when = is used:
" set preserveindent
" searches ignore case unless the case is mixed
set ignorecase
set smartcase

" Default values:
set backspace=indent,eol,start

" yanks go to the system clipboard
set clipboard=unnamed

" Sets the encoding of vim buffers
set encoding=utf-8

" makes search-replace global by default instead of local to the line
"set gdefault
" search as you go
set incsearch

if has("nvim")
	set inccommand=nosplit
end

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread

" line breaks on words if set nolist is run
set linebreak

" in insert mode, arrow keys will take you to the next line / prev line
set whichwrap+=[,]

" format options (default tcq):
" (q) Allow formatting comments with gq
" (r) Prepend comment character to newline when hitting <enter> in insert mode
" (o) Prepend comment character to newline when hitting 'o' in normal mode
" (n) Recognize numbered lists when formatting text
" (1) Don't break a line after a one-letter word, break before it instead
" (t) Automatically wrap text
" (c) Automatically wrap comments
" (j) Where it makes sense, remove a comment leader when joining lines.
" (l) Long lines are not broken in insert mode if they were already too long.
" NOTE: (j) is not supported on older versions of vim and will throw an error.
" It's added separately from the other options so that if it fails, they'll still be added.
" The 'silent!' command is used to prevent the error from appearing.
" NOTE: (o) gets added to my formatoptions for some reason, but if I explicitly remove it, it doesn't.
set formatoptions=qrn1crl
silent! set formatoptions+=j
silent! set formatoptions-=o

" Indent folding:
set nofoldenable
set fdm=indent

" Spell Checking:
set nospell
set spelllang=en
set spellsuggest=9 "only show 9 suggestions

" Thesuaur Lookup
let &thesaurus=g:vimDir . "/mthesaur.txt"

" Automatically open the quickfix window after :*grep* commands
autocmd QuickFixCmdPost *grep* cwindow

" Adds the nonascii character type for syntax highlighting purposes
highlight nonascii guibg=Red ctermbg=1 term=standout
au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"

" Commands specific to given filetypes
augroup filetype_text
	autocmd!
	au FileType text,markdown,MKD  setlocal formatoptions+=t
	au FileType text,markdown,MKD  setlocal statusline+=\ %{WordCount()}\ words
	au FileType text,markdown,MKD  setlocal spell
augroup END
