-- Keep current directory and browsing directory synced
vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = 'cp -r'

-- Line numbers
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

-- Directory style
vim.g.netrw_liststyle = 3

-- Open file in a window to the right
vim.g.netrw_altv = 1
vim.g.netrw_preview = 1
vim.opt.autochdir = true
vim.g.netrw_winsize = 30

-- Hide dotfiles
-- vim.g.netrw_list_hide = "\(^\|\s\s\)\zs\.\S\+"

-- Toggle Netrw
vim.keymap.set("n", "<leader>pj", vim.cmd.Lex)

