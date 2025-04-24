-- Flash enhances the built-in search functionality by showing labels
-- at the end of each match, letting you quickly jump to a specific
-- location.
require('flash').setup({vscode = true})
local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = bufnr
    vim.keymap.set(mode, l, r, opts)
end

map({'n', 'x', 'o'}, 's', function() require("flash").jump() end, opts)
map({'n', 'x', 'o'}, 'S', function() require("flash").treesitter() end, opts)
map({'o'}, 'r', function() require("flash").remote() end, opts)
map({'o', 'x'}, 'R', function() require("flash").treesitter_search() end, opts)
map({'c'}, 'c-s', function() require("flash").toggle() end, opts)
