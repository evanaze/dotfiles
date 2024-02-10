-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

vim.g.mapleader = " "

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<Leader-h>', '<C-w>h', opts)
vim.keymap.set('n', '<Leader-j>', '<C-w>j', opts)
vim.keymap.set('n', '<Leader-k>', '<C-w>k', opts)
vim.keymap.set('n', '<Leader-l>', '<C-w>l', opts)
