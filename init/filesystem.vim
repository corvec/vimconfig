" This configuration file is concerned with how files are handled, e.g., 
" saving, loading, file encoding, undo files, swap files, and backups.


" Use a forward slash when expanding file names
set shellslash


" Backup files on saving
set backup
" Create <filename>.un~ files whenever I edit a file.
set undofile

if has("nvim")
	" https://vi.stackexchange.com/a/53
	if !isdirectory($HOME."/.config/nvim/backup")
		call mkdir($HOME."/.config/nvim/backup", "", 0700)
	endif
	if !isdirectory($HOME."/.config/nvim/swap")
		call mkdir($HOME."/.config/nvim/swap", "", 0700)
	endif
	if !isdirectory($HOME."/.config/nvim/undo")
		call mkdir($HOME."/.config/nvim/undo", "", 0700)
	endif
	let &backupdir=$HOME."/.config/nvim/backup"
	let &directory=$HOME."/.config/nvim/swap"
	let &undodir=$HOME."/.config/nvim/undo"
else
	let &backupdir=g:vimDir . "/vimbackup//"
	let &directory=g:vimDir . "/vimswap//"
	let &udir=g:vimDir . "/vimundo//"
endif
