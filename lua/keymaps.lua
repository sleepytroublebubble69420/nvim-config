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

vim.keymap.set("", "k", "n", opts) vim.keymap.set("", "K", "N", opts)

vim.keymap.set("", "h", "m", opts) vim.keymap.set("", "H", "M", opts)

vim.keymap.set("", "s", "d", opts) vim.keymap.set("", "S", "D", opts)
vim.keymap.set("", "c", "x", opts) vim.keymap.set("", "C", "X", opts)

vim.keymap.set("", "p", "r", opts) vim.keymap.set("", "P", "R", opts)
vim.keymap.set("", "r", "s", opts) vim.keymap.set("", "R", "S", opts)
vim.keymap.set("", "d", "c", opts) vim.keymap.set("", "D", "C", opts)

vim.keymap.set("", "z", "b", opts) vim.keymap.set("", "Z", "B", opts)
vim.keymap.set("", "f", "e", opts) vim.keymap.set("", "F", "E", opts)

vim.keymap.set("", "t", "f", opts) vim.keymap.set("", "T", "F", opts)
vim.keymap.set("", "b", "t", opts) vim.keymap.set("", "B", "T", opts)

vim.keymap.set("", "x", "z", opts) vim.keymap.set("", "X", "Z", opts)

vim.keymap.set("", "o", ";", opts) vim.keymap.set("", "O", ":", opts)
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
