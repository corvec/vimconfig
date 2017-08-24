if has("win32") || has("win64")
	" Maximize VIM on Windows
	au GUIEnter * simalt ~x
endif
if has("win32unix")
endif

" Mac-specific commands
if has("osx") || has("macunix") ||  has("mac")
endif


" Linux specific commands
if has("gui_gtk") || (has("unix") && !has("win32unix") && !has("macunix") && !has("mac"))
endif
