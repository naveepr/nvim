local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
-- local code_actions = null_ls.builtins.code_actions

local sources = {
    --[[ formatting ]]
    formatting.autopep8, formatting.prettier, formatting.lua_format
    -- formatting.clang_format
    --[[ code actions ]]
}

local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
        filter = function(client)
            -- apply whatever logic you want (in this example, we'll only use null-ls)
            return client.name == "null-ls"
        end,
        bufnr = bufnr
    })
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({group = augroup, buffer = bufnr})
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function() lsp_formatting(bufnr) end
        })
    end
end

null_ls.setup({
    sources = sources,
    on_attach = on_attach,
    on_init = function(new_client, _) new_client.offset_encoding = 'utf-32' end
})
