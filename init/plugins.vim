" This configuration file is concerned with the configuration of plugins
" It is loaded before the plugins are loaded

"""""""""""""""""
" EasyMotion
"""""""""""""""""

" See comment below this line for description of all its side effects:
let g:EasyMotion_leader_key = '<Leader><Leader>'
" " overrides:
"     " <Leader>f{char}   | Find {char} to the right. See |f|.
"     " <Leader>F{char}   | Find {char} to the left. See |F|.
"     " <Leader>t{char}   | Till before the {char} to the right. See |t|.
"     " <Leader>T{char}   | Till after the {char} to the left. See |T|.
"     " <Leader>w         | Beginning of word forward. See |w|.
"     " <Leader>W         | Beginning of WORD forward. See |W|.
"     " <Leader>b         | Beginning of word backward. See |b|.
"     " <Leader>B         | Beginning of WORD backward. See |B|.
"     " <Leader>e         | End of word forward. See |e|.
"     " <Leader>E         | End of WORD forward. See |E|.
"     " <Leader>ge        | End of word backward. See |ge|.
"     " <Leader>gE        | End of WORD backward. See |gE|.
"     " <leader>j         | Line downward. See |j|.
"     " <leader>k         | Line upward. See |k|.
"     " <Leader>n         | Jump to latest "/" or "?" forward. See |n|.
"     " <Leader>N         | Jump to latest "/" or "?" backward. See |N|.

let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_no_startup_for_diff=0
let g:nerdtree_tabs_synchronize_view=0
" Required for CtrlP to work based on the opened directory
let g:NERDTREEChDirMode = 2

" Sparkup
" to avoid a conflict with Supertab
let g:sparkupNextMapping="<c-l>"

" Leap (vim-sneak replacement) settings
if has("nvim")
	nnoremap s <Plug>(leap)
	xnoremap s <Plug>(leap)
	onoremap s <Plug>(leap)
	nnoremap S <Plug>(leap-from-window)

	" None of the following work:
	" require('leap').set_default_mappings()

	" Alternative (same effect):
	" vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
	" vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')

	" Alternative (Sneak Mode):
	" vim.keymap.set({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
	" vim.keymap.set({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')
	" vim.keymap.set({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)')
endif

" SplitJoin
" note: Does not work if you instead try to set the variables to these particular key-bindings
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
nnoremap <leader><C-j> :SplitjoinJoin<cr>
nnoremap <leader><C-k> :SplitjoinSplit<cr>

" TernJS and Deoplete
if has("nvim")
	let g:python_host_prog = trim(system('which python'))
	let g:python3_host_prog = trim(system('which python3'))
endif

" SuperTab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-p>"

"""""""""""""
" Syntastic "
"""""""""""""
let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_wq = 1

" Syntax checking
let g:syntastic_javascript_jshint_conf=g:vimDir . '/_jshintrc'
let g:syntastic_html_checkers = ['tidy'] " alternatively: w3, validator
let g:syntastic_ruby_checkers = ['mri'] " alternatively, rubylint

" Syntastic settings from https://medium.com/usevim/in-editor-linting-with-syntastic-6814122bdbec
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


"""""""""""""""""""""""""""""""""""""""
" Statusline (fugitive and syntastic) "
"""""""""""""""""""""""""""""""""""""""
" from https://github.com/spf13/spf13-vim/blob/master/.vimrc
if has('statusline')
	set laststatus=2
	" Broken down into easily includeable segments
	set statusline=%<%f\    " Filename
	set statusline+=%w%h%m%r " Options
	set statusline+=%{fugitive#statusline()} "  Git Hotness
	set statusline+=\ [%{&ff}/%Y]            " filetype
	" set statusline+=\ [%{getcwd()}]          " current dir
	set statusline+=%#warningmsg#
	" set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" CloseTag should only open for html/xml like files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako,jsp let b:closetag_html_style=1

""""""""""""
" NERDTree "
""""""""""""
let g:NERDTreeBookmarksFile=g:vimDir . '/_nerdtreebookmarks'

"""""""""""
" RuboCop "
"""""""""""
let g:vimrubocop_config=g:vimDir . '/rubocop.yml'

"""""""""""""""""""""""""""
" UltiSnips configuration "
"""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<C-J>"
let g:UltiSnipsListSnippets="<C-H>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""" Autocompletion """""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""
" Github Copilot "
""""""""""""""""""

" Disable suggestions until Alt+Space is pressed, and use that to both request and accept suggestions


"let g:copilot_no_maps=v:true
let g:copilot_no_tab_map = v:true
let g:copilot_enabled=0
" Bindings are in keybindings.vim

""""""""""""""""
" Asyncomplete "
""""""""""""""""
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" preview window
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

""""""""""""""""""""
" vim-lsp settings "
""""""""""""""""""""

" Needed to enable using the LSP to provide folding
set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()


function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
	nmap <buffer> gd <plug>(lsp-definition)
	nmap <buffer> gs <plug>(lsp-document-symbol-search)
	nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
	nmap <buffer> gr <plug>(lsp-references)
	nmap <buffer> gi <plug>(lsp-implementation)
	nmap <buffer> gt <plug>(lsp-type-definition)
	nmap <buffer> <leader>rn <plug>(lsp-rename)
	nmap <buffer> [g <plug>(lsp-previous-diagnostic)
	nmap <buffer> ]g <plug>(lsp-next-diagnostic)
	nmap <buffer> K <plug>(lsp-hover)
	nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
	nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

	let g:lsp_format_sync_timeout = 1000
	autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

	" refer to doc to add more commands
endfunction

augroup lsp_install
	au!
	" call s:on_lsp_buffer_enabled only for languages that has the server registered.
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"""""""
" ALE "
"""""""

"let g:ale_fixers = {
"\   '*': ['remove_trailing_lines', 'trim_whitespace'],
"\   'javascript': ['prettier', 'eslint'],
"\}

" Enable automatically fixing files when you save them.
"let g:ale_fix_on_save = 1

" -----------------
" FZF configuration
" -----------------
" Use ripgrep
if executable("rg")
	silent! !export FZF_DEFAULT_COMMAND='rg --files --smartcase'

	" --column: Show column number
	" --line-number: Show line number
	" --no-heading: Do not show file headings in results
	" --fixed-strings: Search term as a literal string
	" --ignore-case: Case insensitive search
	" --no-ignore: Do not respect .gitignore, etc...
	" --hidden: Search hidden files and folders
	" --follow: Follow symlinks
	" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
	" --color: Search color options
	command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

	set grepprg=rg\ --vimgrep
elseif executable("ag")
	" If we have Ag but not ripgrep, then
	" Use Ag: https://github.com/ggreer/the_silver_searcher
	set grepprg=ag\ --nogroup\ --nocolor
endif
nnoremap <leader>o :Files<cr>
nnoremap <leader>p :Files<Space>
" also use the same mapping as CtrlP
nnoremap <C-P> :Files<cr>


" ------

"""""""""""""""""""""""""""""""
" javascript-libraries-syntax "
"""""""""""""""""""""""""""""""
" Is this useful anymore with the LSP stuff? idk
let g:used_javascript_libs = 'underscore,react'
