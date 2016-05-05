set nocompatible "enable features that are too cool for VI

" Syntax highlighting, options, 
filetype plugin indent on

let g:vimDir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

exec 'source ' . g:vimDir . '/init/editing.vim'
exec 'source ' . g:vimDir . '/init/filesystem.vim'
exec 'source ' . g:vimDir . '/init/keybindings.vim'
exec 'source ' . g:vimDir . '/init/plugins.vim'
exec 'source ' . g:vimDir . '/init/presentation.vim'

exec 'source ' . g:vimDir . '/init/custom.vim'
exec 'source ' . g:vimDir . '/init/bundle.vim'
exec 'source ' . g:vimDir . '/init/angieslist.vim'
exec 'source ' . g:vimDir . '/init/os_specific.vim'


if has("win32") || has("win64") || has("osx")
	exec 'source ' . g:vimDir . '/init/transparency.vim'
endif

"Simplenote Configuration
if filereadable(g:vimDir . '/init/simplenote.vim')
	exec 'source ' . g:vimDir . '/init/simplenote.vim'
endif

