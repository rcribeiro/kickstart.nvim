-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- setup a key map for :NvimTreeFindFile which will open the tree and select the current file
vim.api.nvim_set_keymap("n", "<leader>ff", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })

