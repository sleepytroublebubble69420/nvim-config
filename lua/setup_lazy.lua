local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup
({
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        "xero/miasma.nvim",
        branch = "dev",
        dependencies = {
            "rktjmp/lush.nvim",
            "rktjmp/shipwright.nvim",
        },
        lazy = false,
        priority = 1000
    },
    {
        "nyoom-engineering/oxocarbon.nvim"
        -- Add in any other configuration; 
        --   event = foo, 
        --   config = bar
        --   end,
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true},
    { "sainnhe/gruvbox-material" },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    {
        "nvim-treesitter/nvim-treesitter", 
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup
            ({
                highlight = { enable = true },
                indent = { enable = true }
            })
        end
    },
    { "lewis6991/gitsigns.nvim" },
    { "tpope/vim-surround" },
    { "tpope/vim-fugitive" }
})
