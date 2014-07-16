" This configuration file is concerned with the configuration of plugins

"""""""""""""""""
" EasyMotion
"""""""""""""""""

" See comment below this line for description of all its side effects:
let g:EasyMotion_leader_key = '<Leader>'
" " overrides:
"     " <Leader>f{char}   | Find {char} to the right. See |f|.
"     " <Leader>F{char}   | Find {char} to the left. See |F|.
let g:EasyMotion_mapping_t = '<leader><leader>t'
"     " <Leader>t{char}   | Till before the {char} to the right. See |t|.
let g:EasyMotion_mapping_T = '<leader><leader>T'
"     " <Leader>T{char}   | Till after the {char} to the left. See |T|.
"     " <Leader><leader>w | Beginning of word forward. See |w|.
let g:EasyMotion_mapping_w = '<leader><leader>w'
"     " <Leader>W         | Beginning of WORD forward. See |W|.
"     " <Leader>b         | Beginning of word backward. See |b|.
"     " <Leader>B         | Beginning of WORD backward. See |B|.
"     " <Leader>e         | End of word forward. See |e|.
"     " <Leader>E         | End of WORD forward. See |E|.
"     " <Leader>ge        | End of word backward. See |ge|.
"     " <Leader>gE        | End of WORD backward. See |gE|.
"     " <leader><Leader>j         | Line downward. See |j|.
let g:EasyMotion_mapping_j = '<leader><leader>j'
"     " <leader><Leader>k         | Line upward. See |k|.
let g:EasyMotion_mapping_k = '<leader><leader>k'
"     " <Leader><leader>n | Jump to latest "/" or "?" forward. See |n|.
let g:EasyMotion_mapping_n = '<leader><leader>n'
"     " <Leader>N         | Jump to latest "/" or "?" backward. See |N|.

let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_no_startup_for_diff=0
let g:nerdtree_tabs_synchronize_view=0

"Sparkup
let g:sparkup=g:vimDir."/bundle/sparkup.vim/sparkup.py"
let g:sparkupNextMapping="<c-l>"

" SplitJoin
" note: Does not work if you instead try to set the variables to these particular key-bindings
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
nnoremap <leader><C-j> :SplitjoinJoin<cr>
nnoremap <leader><C-k> :SplitjoinSplit<cr>



" SuperTab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-p>"

" Syntastic
let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_wq = 1
" Syntax checkers:
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_jshint_conf=g:vimDir . '/_jshintrc'
let g:syntastic_html_checkers = ['tidy']
" let g:syntastic_html_checkers = ['w3','validator']
let g:syntastic_ruby_checkers = ['mri']
" let g:syntastic_ruby_checkers = ['rubylint']

" Statusline (fugitive and syntastic)
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

"NERDTree
let g:NERDTreeBookmarksFile=g:vimDir . '/_nerdtreebookmarks'

" RuboCop
let g:vimrubocop_config=g:vimDir . '/rubocop.yml'

" UltiSnips configuration
let g:UltiSnipsExpandTrigger="<C-J>"
let g:UltiSnipsListSnippets="<C-H>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" TComment toggle shortcut
noremap <leader>c :TComment<cr>
