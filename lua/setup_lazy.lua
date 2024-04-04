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
    { "ellisonleao/gruvbox.nvim",            priority = 1000, config = true },
    { "sainnhe/gruvbox-material" },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl",    opts = {} },
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
    { "tpope/vim-fugitive" },
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- {"williamboman/mason.nvim"},
    -- {"williamboman/mason-lspconfig.nvim"},

    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "VonHeikemen/lsp-zero.nvim",        branch = "v3.x" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
    {
        'linux-cultist/venv-selector.nvim',
        dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
        opts = {
            -- Your options go here
            name = "venv",
            enable_debug_output = true,
            auto_refresh = true
        },
        event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
        keys = {
            -- Keymap to open VenvSelector to pick a venv.
            { '<leader>vs', '<cmd>VenvSelect<cr>' },
            -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
            { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
        },
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
})
