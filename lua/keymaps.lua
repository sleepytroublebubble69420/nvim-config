vim.keymap.set("", "<Space>", "<Leader>", opts)

vim.keymap.set("", "m", "h", opts) vim.keymap.set("", "M", "H", opts)
vim.keymap.set("", "n", "j", opts) vim.keymap.set("", "N", "J", opts)

vim.keymap.set("", "e", "k", opts) vim.keymap.set("", "E", "K", opts)
vim.keymap.set("", "i", "l", opts) vim.keymap.set("", "I", "L", opts)

vim.keymap.set("", "u", "i", opts) vim.keymap.set("", "U", "I", opts)
vim.keymap.set("", "y", "o", opts) vim.keymap.set("", "Y", "O", opts)

vim.keymap.set("", "l", "u", opts) vim.keymap.set("", "L", "U", opts)

vim.keymap.set("", "j", "y", opts) vim.keymap.set("", "J", "Y", opts)
vim.keymap.set("", ";", "p", opts) vim.keymap.set("", ":", "P", opts)

vim.keymap.set("", "o", ";", opts) vim.keymap.set("", "O", ":<Ignore>", opts)
--[[
local opts = {
    noremap = true,
    silent = true
}
--[[
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)
--]]
