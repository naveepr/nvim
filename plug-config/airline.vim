"----------------------------------------------
" Plugin: 'vim-airline/vim-airline' 
"----------------------------------------------

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
"let g:Tlist_Use_SingleClick=1

" Switch to your current theme
"let g:airline_theme = 'onedark'
let g:airline_theme='gruvbox'

set laststatus=2

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
