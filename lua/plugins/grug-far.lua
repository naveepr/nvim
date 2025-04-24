-- search/replace in multiple files
require('grug-far').setup({headerMaxWidth = 80})
-- on_attach = function(bufnr)
local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = bufnr
    vim.keymap.set(mode, l, r, opts)
end
-- local opts = {noremap = true, silent = true}
map({'n', 'v'}, '<leader>sr', function()
    local grug = require("grug-far")
    local ext = vim.bo.buftype == "" and vim.fn.expand("%:e")
    grug.open({
        transient = true,
        prefills = {filesFilter = ext and ext ~= "" and "*." .. ext or nil}
    })
end, opts)
-- end
-- })
