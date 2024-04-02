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
    { "tpope/vim-surround" }
})

require("gruvbox").setup
({
    transparent_mode = true
})
vim.cmd.colorscheme("gruvbox")
require("lualine").setup()
