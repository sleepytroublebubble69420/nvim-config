vim.g.mapleader = " "



local opts = {
    -- noremap = true
}



-- vim.keymap.set("", "m", "h") vim.keymap.set("", "M", "H")
-- vim.keymap.set("", "n", "j") vim.keymap.set("", "N", "J")
-- vim.keymap.set("", "e", "k") vim.keymap.set("", "E", "K")
-- vim.keymap.set("", "i", "l") vim.keymap.set("", "I", "L")
-- 
-- vim.keymap.set("", "u", "i") vim.keymap.set("", "U", "I")
-- vim.keymap.set("", "y", "o") vim.keymap.set("", "Y", "O")
-- 
-- vim.keymap.set("", "l", "u") vim.keymap.set("", "L", "U")
-- 
-- vim.keymap.set("", "j", "y") vim.keymap.set("", "J", "Y")
-- vim.keymap.set("", ";", "p") vim.keymap.set("", ":", "P")
-- 
-- vim.keymap.set("", "k", "n") vim.keymap.set("", "K", "N")
-- 
-- vim.keymap.set("", "h", "m") vim.keymap.set("", "H", "M")
-- 
-- vim.keymap.set("", "s", "d") vim.keymap.set("", "S", "D")
-- vim.keymap.set("", "c", "x") vim.keymap.set("", "C", "X")
-- 
-- vim.keymap.set("", "p", "r") vim.keymap.set("", "P", "R")
-- vim.keymap.set("", "r", "s") vim.keymap.set("", "R", "S")
-- vim.keymap.set("", "d", "c") vim.keymap.set("", "D", "C")
-- 
-- vim.keymap.set("", "z", "b") vim.keymap.set("", "Z", "B")
-- vim.keymap.set("", "f", "e") vim.keymap.set("", "F", "E")
-- 
-- vim.keymap.set("", "t", "f") vim.keymap.set("", "T", "F")
-- vim.keymap.set("", "b", "t") vim.keymap.set("", "B", "T")
-- 
-- vim.keymap.set("", "x", "z") vim.keymap.set("", "X", "Z")
-- 
-- vim.keymap.set("", "o", ";") vim.keymap.set("", "O", ":")

opts = {
    noremap = true,
    silent = true
}

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

vim.keymap.set("n", "<Leader>n", vim.cmd.Ex)
