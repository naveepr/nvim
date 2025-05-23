require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
local lsp_installer = require("nvim-lsp-installer")
local lsp_installer_servers = require('nvim-lsp-installer.servers')

local servers = {"ccls", "pyright", "bashls", "lua_ls"}

for _, server_name in pairs(servers) do
    local server_available, server = lsp_installer_servers.get_server(
                                         server_name)
    if server_available then
        --         server:on_ready(function ()
        --             -- When this particular server is ready (i.e. when installation is finished or the server is already installed),
        --             -- this function will be invoked. Make sure not to also use the "catch-all" lsp_installer.on_server_ready()
        --             -- function to set up your servers, because by doing so you'd be setting up the same server twice.
        --             local opts = {}
        --             server:setup(opts)
        --         end)
        if not server:is_installed() then
            -- Queue the server to be installed.
            server:install()
        end
    end
end
