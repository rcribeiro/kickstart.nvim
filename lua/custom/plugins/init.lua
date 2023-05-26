-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.o.incsearch = true
vim.wo.relativenumber = true
-- Show cursor line whike in normal mode
vim.opt.cursorline = true
-- Buffer history chane
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Move selected text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the yanked text for multiples pastes
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Replace all occurrences of a selected text at once
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod +x the file you are in 
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

return {
'mbbill/undotree',
'github/copilot.vim',
}
