" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

let g:ale_disable_lsp = 1

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/taglist.vim'
"Plug 'geoffharcourt/vim-matchit'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/DoxygenToolkit.vim'
"Plug 'nfvs/vim-perforce'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go support
"Plug 'sebdah/vim-delve'
" Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'

"Git plugins
" Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'lewis6991/gitsigns.nvim'

"search and motion plugin
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'

"Language server and auto complete
" Plug 'williamboman/mason.nvim'
" Plug 'williamboman/mason-lspconfig.nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/nvim-compe'
Plug 'jose-elias-alvarez/null-ls.nvim'

"Theme and colorscheme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'flazz/vim-colorschemes'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'EdenEast/nightfox.nvim'

"Syntax highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'tmhedberg/SimpylFold'
"Plug 'michaeljsmith/vim-indent-object'
"Plug 'sheerun/vim-polyglot'

"Indent line
"Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

"Snippets
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'

"File Explorer
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
" requires
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-github.nvim'
" Plug 'BurntSushi/ripgrep'
" Plug 'sharkdp/fd'
" Plug 'jremmen/vim-ripgrep'

" Markdown plugin
Plug 'iamcco/markdown-preview.nvim'

" PlantUML
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

call plug#end()
