" This configuration file contains functions that are specific to Windows

" On Windows, the transparency feature requires vimtweak.dll
" which is available at http://www.vim.org/scripts/script.php?script_id=687
" On Mac, it uses set transparency

if has("win32") || has("win64")
	let g:transparency=255
	let g:trans_inc = 20
	let g:trans_min = 135
	let g:trans_max = 255
	let g:trans_pref = 195
	let g:trans_opaque = 255
elseif has("osx")
	let g:transparency=0
	let g:trans_inc = 10
	let g:trans_min = 0
	let g:trans_max = 100
	let g:trans_pref = 30
	let g:trans_opaque = 0
endif

function SetTransparency()
	if has("win32") || has("win64")
		call libcallnr("vimtweak.dll", "SetAlpha", g:transparency)
	elseif has("osx")
		let &transparency=g:transparency
	endif
	echo "Set transparency to ".g:transparency
endfunc


" Decrease transparency (reset if below a threshold)
function! DecreaseTransparency()
		let g:transparency=g:transparency - g:trans_inc
		" Threshold
		if g:transparency < g:trans_min
			let g:transparency=g:trans_min
		endif
		" Actually set the transparency
		call SetTransparency()
endfunc

" Decrease transparency (reset if below a threshold)
function! IncreaseTransparency()
		let g:transparency=g:transparency + g:trans_inc
		" Threshold
		if(g:transparency > g:trans_max)
			let g:transparency = g:trans_max
		endif
		call SetTransparency()
endfunc


" If we're transparent, make it solid
" If we're solid, set the transparency to 195
function! ToggleTransparency()
		if g:transparency == g:trans_opaque
			let g:transparency=g:trans_pref
		else
			let g:transparency=g:trans_opaque
		endif
		call SetTransparency()
endfunc


if has("win32") || has("win64") || has("osx")
	nnoremap <F9> :call DecreaseTransparency()<CR>
	nnoremap <F10> :call IncreaseTransparency()<CR>
	nnoremap <c-F10> :call ToggleTransparency()<CR>
endif

