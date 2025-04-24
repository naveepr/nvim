-- Finds and lists all of the TODO, HACK, BUG, etc comment
-- in your project and loads them into a browsable list.
require('todo-comments').setup({})
local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = bufnr
    vim.keymap.set(mode, l, r, opts)
end
map({'n'}, ']t', function() require("todo-comments").jump_next() end, opts)
map({'n'}, '[t', function() require("todo-comments").jump_prev() end, opts)
-- map({}, '<leader>xt', "<cmd>Trouble todo toggle<cr>", opts)
-- map({}, '<leader>xT', "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", opts)
map({'n'}, '<leader>st', '<cmd>TodoTelescope<cr>', opts)
map({'n'}, '<leader>sT', '<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>', opts)
