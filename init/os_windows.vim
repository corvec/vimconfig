" This configuration file contains functions that are specific to Windows

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

if has("win32") || has("win64")
	nnoremap <F10> :call DecreaseTransparency()<CR>
	nnoremap <F11> :call IncreaseTransparency()<CR>
	nnoremap <c-F11> :call ToggleTransparency()<CR>
endif

" Maximize VIM on Windows
au GUIEnter * simalt ~x

