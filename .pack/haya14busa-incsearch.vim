" The basic feature of incsearch.vim is already provided by vim 8.0.1238.
" https://medium.com/@haya14busa/incsearch-vim-is-dead-long-live-incsearch-2b7070d55250

" basic usage
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
map z/ <Plug>(incsearch-stay)

" auto no highlight
"set hlsearch
"let g:incsearch#auto_nohlsearch = 1
"map n  <Plug>(incsearch-nohl-n)
"map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)

" additional map
"augroup incsearch-keymap
"    autocmd!
"    autocmd VimEnter * call s:incsearch_keymap()
"augroup END
"function! s:incsearch_keymap()
"    IncSearchNoreMap <Right> <Over>(incsearch-next)
"    IncSearchNoreMap <Left>  <Over>(incsearch-prev)
"    IncSearchNoreMap <Down>  <Over>(incsearch-scroll-f)
"    IncSearchNoreMap <Up>    <Over>(incsearch-scroll-b)
"endfunction
