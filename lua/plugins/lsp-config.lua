local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
    -- require('completion').on_attach()

    client.server_capabilities.document_formatting = false
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end
    -- vim.lsp.set_log_level("debug")
    -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>h',
                   '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<leader>wa',
                   '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<leader>wr',
                   '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<leader>wl',
                   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                   opts)
    buf_set_keymap('n', '<leader>d',
                   '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>q',
                   '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap("n", "<leader>ld",
                   '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    buf_set_keymap("n", "<leader>ca", '<cmd>lua vim.lsp.buf.code_action()<CR>',
                   opts) -- > selects a code action available at the current cursor position
    buf_set_keymap("n", "<leader>f", '<cmd>lua vim.lsp.buf.formatting()<CR>',
                   opts) -- > formats the current buffer

    -- Set some keybinds conditional on server capabilities
    if client.server_capabilities.document_formatting then
        buf_set_keymap("n", "<leader>f",
                       "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.server_capabilities.document_range_formatting then
        buf_set_keymap("n", "<leader>f",
                       "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    end
end

---@diagnostic disable-next-line: undefined-global
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150
}
local servers = {'pyright', 'bashls', 'lua_ls'}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = lsp_flags,
        capabilities = capabilities
    }
end

nvim_lsp['ccls'].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    init_options = {
        compilationDatabaseDirectory = "build",
        index = {threads = 0},
        clang = {excludeArgs = {"-frounding-math"}}
    }
}
