source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/paths.vim

"plug-config
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/SimpylFold.vim
source $HOME/.config/nvim/plug-config/taglist.vim
source $HOME/.config/nvim/plug-config/commentary.vim 
source $HOME/.config/nvim/plug-config/Doxygen.vim
source $HOME/.config/nvim/plug-config/perforce.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/vsnip.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/lsp-config.vim

"lua-config
luafile $HOME/.config/nvim/lua/plugins/compe-config.lua
luafile $HOME/.config/nvim/lua/lsp/python-ls.lua
