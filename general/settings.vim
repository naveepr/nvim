" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set ignorecase

set showmatch                           " show matching brackets when text indicator is over them
set mat=2                               " How many tenths of a second to blink when matching brackets
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set cmdheight=2                         " More space for displaying messages
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set nowrap                              " Display long lines as just one line
set laststatus=0                        " Always display the status line
set hidden                              " Required to keep multiple buffers open multiple buffers
set smartcase                           " When searching try to be smart about cases
set hlsearch                            " Highlight search results

" 1 tab == 4 spaces
set scrolloff=5
set wildmenu
set mouse=a                            " Enable your mouse
set title
set cursorline                          " Enable highlighting of the current line
set number
"set relativenumber
set ruler
set bs=indent,eol,start                 " allow backspacing over everything in insert mode
set autoindent                          " Good auto indent
set smartindent                         " Makes indenting smart
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set showtabline=2                       " Always show tabs
"set autochdir                           " Your working directory will always be the same as your working directory

"au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
            " than 50 lines of registers
set history=50      " keep 50 lines of command line history

" Be smart when using tabs ;)
set smarttab
" Use spaces instead of tabs
set tabstop=4                           " Insert 4 spaces for a tab
set expandtab                           " Converts tabs to spaces
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set softtabstop=4                        
set list
set listchars=tab:>-
set tw=78
  
"set t_Co=256
set background=dark
if (has("termguicolors"))
    set termguicolors
endif

" If you would like some of the code to be bolded
"let g:enable_bold_font = 1
" If you want comments to be in italic
"let g:enable_italic_font = 1
" To use transparent background
"let g:hybrid_transparent_background = 1
"colorscheme hybrid_reverse
colorscheme gruvbox

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif
