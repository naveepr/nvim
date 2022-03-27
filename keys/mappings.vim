nmap <F7>   :TlistToggle<cr>
nmap <F8>   :Tabularize /
nmap <F9>   :%s/\s\+$//e<cr>
nmap <F10>  :%s/foo/bar/gcI

" Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<cr>
nnoremap <M-k>    :resize +2<cr>
nnoremap <M-h>    :vertical resize -2<cr>
nnoremap <M-l>    :vertical resize +2<cr>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<cr>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<cr>
nnoremap <Leader>x :bdelete<cr>

" Alternate way to save
nnoremap <C-s> :w<cr>
" Alternate way to quit
nnoremap <C-Q> :q!<cr>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da


