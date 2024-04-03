local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require("mason").setup({})
require("mason-lspconfig").setup
({
    ensure_installed = {},
    handlers = {
        lsp_zero.default_setup,
    }
})

vim.keymap.set("i", "<C-e>", "<Nop>")

local cmp = require("cmp")
cmp.setup({
  sources = {
    {name = "nvim_lsp"},
  },
  mapping = {
    ["<C-o>"] = cmp.mapping.confirm({select = false}),
    ["<C-h>"] = cmp.mapping.abort(),
    -- ["<C-e>"] = cmp.mapping.select_prev_item({behavior = "select"}),
    -- ["<C-n>"] = cmp.mapping.select_next_item({behavior = "select"}),
    ["<C-e>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = "insert"})
      else
        cmp.complete()
      end
    end),
    ["<C-n>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({behavior = "insert"})
      else
        cmp.complete()
      end
    end),
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
})
