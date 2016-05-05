" Angie's List uses two spaces as indentation rather than tabs
" This clashes with my normal editing process. But rather than just retab every file, I want to use tabs and push
" spaces.
" This is an attempt to do that.
"
" In the future, I plan to make a version of this that detects the indent scheme for the file, preserves that,
" changes it to tabs for my use, and then retabs it in that scheme upon saving.

" ===========================

" For reference: this is what I would use if I were editing the files the way they are displayed
"set softtabstop=2
"set shiftwidth=2
"set tabstop=2
"set expandtab
"set smarttab


" An answer on StackOverflow suggested using these to translate from 4 spaces to 2; it did not work to translate
" 2 spaces to 1 tab.

"syntax match spaces /  / conceal cchar=  
"set concealcursor=nvi
"set conceallevel=1


" Based on http://stackoverflow.com/questions/5144284/force-vi-vim-to-use-leading-tabs-only-on-retab/5144480#5144480

" Retab spaced file, but only indentation
command! RetabIndents call RetabIndents()
command! OpenFile call OpenFile()
command! SaveFile call SaveFile()

" Retab spaced file, but only indentation
func! RetabIndents()
	let saved_view = winsaveview()
	silent! execute '%s@^\( \{'.&ts.'}\)\+@\=repeat("\t", len(submatch(0))/'.&ts.')@'
	call winrestview(saved_view)
endfunc

func! OpenFile()
	set ts=2
	set noet
	" Avoid storing this in the undo history. Still stores when we first open the file, which makes sense.
	" Nested in a try block because it fails if we just did an undo.
	try
		execute "undojoin"
	catch
	endtry
	RetabIndents
	set ts=4
endfunc

func! SaveFile()
	set ts=2
	set expandtab
	" Avoid storing this in the undo history.
	" Nested in a try block because it fails if we just did an undo.
	try
		execute "undojoin"
	catch
	endtry
	retab
endfunc


augroup AdaptIndent
	autocmd!
	autocmd BufReadPost,BufWritePost */Users/corey.kump/source/angieslist/* OpenFile
	autocmd BufWritePre              */Users/corey.kump/source/angieslist/* SaveFile
augroup END
