" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"let g:ale_disable_lsp = 1

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/taglist.vim'
Plug 'geoffharcourt/vim-matchit'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/DoxygenToolkit.vim'
"Plug 'nfvs/vim-perforce'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go support
"Plug 'sebdah/vim-delve'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'

"Git plugins
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"search and motion plugin
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'

"Language server and auto complete
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'anott03/nvim-lspinstall'

"Theme and colorscheme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'flazz/vim-colorschemes'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'

"Syntax highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'tmhedberg/SimpylFold'
"Plug 'michaeljsmith/vim-indent-object'
"Plug 'sheerun/vim-polyglot'

"Indent line
"Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

"Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

"File Explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'jremmen/vim-ripgrep'

" Markdown plugin
Plug 'iamcco/markdown-preview.nvim'

" PlantUML
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

call plug#end()
