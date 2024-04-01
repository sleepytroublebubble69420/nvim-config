require("lazy").setup
({
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    { "rktjmp/lush.nvim" },
    { "xero/miasma.nvim" },
    { 
        "nyoom-engineering/oxocarbon.nvim"
        -- Add in any other configuration; 
        --   event = foo, 
        --   config = bar
        --   end,
    },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
})

vim.cmd.colorscheme("oxocarbon")
vim.cmd.colorscheme("miasma")
