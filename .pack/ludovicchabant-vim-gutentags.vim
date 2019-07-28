let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_exclude_project_root = [expand('~/.vim')]
let g:gutentags_cache_dir = expand('~/.cache/gutentags')

let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

" Universal Ctags support Wildcard in options.
let g:gutentags_ctags_extra_args = ['--fields=*', '--extras=*', '--all-kinds=*']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
if executable('rg')
  let g:gutentags_file_list_command = 'rg --files'
else
  let g:gutentags_ctags_extra_args += ['--exclude=.git', '--exclude=node_modules', '--exclude=test', '--exclude=build']
endif

" If built-in parser exists for the target, it is used.
" Else if pygments parser exists it is used.
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = expand('~/.vim/globalrc')

let g:gutentags_define_advanced_commands = 1
