if has("win32") || has("win64")
	" Maximize VIM on Windows
	au GUIEnter * simalt ~x
	let g:livepreview_previewer = 'mupdf'
endif
if has("win32unix")
endif

" Mac-specific commands
if has("osx") || has("macunix") ||  has("mac")
	let g:livepreview_previewer = 'open -a Preview'
endif


" Linux specific commands
if has("gui_gtk") || (has("unix") && !has("win32unix") && !has("macunix") && !has("mac"))
endif
