local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  window = {
    completion = cmp.config.window.bordered({
      border = "rounded",
    }),
    documentation = cmp.config.window.bordered({
      border = "rounded",
    }),
  },

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
  }),

  sources = cmp.config.sources({
    {
      name = 'nvim_lsp'
    },
    {
      name = 'buffer'
    },
    {
      name = 'path'
    },
    {
      name = 'luasnip'
    }
  }),

  experimental = {
    ghost_text = true,
  },
})

