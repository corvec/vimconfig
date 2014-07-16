" This configuration file is concerned with how files are handled, e.g., 
" saving, loading, file encoding, undo files, swap files, and backups.


" Use a forward slash when expanding file names
set shellslash


" Backup files on saving
set backup
" Create <filename>.un~ files whenever I edit a file.
set undofile

set backupdir=~/vimbackup//
set directory=~/vimswap//
set udir=~/vimundo//
