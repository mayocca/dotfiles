local cmp = require "cmp"

local M = {}

M.completion = {
  completeopt = "menu,menuone,noselect",
}

M.mapping = {
  ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
  ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
  ["<C-d>"] = cmp.mapping.scroll_docs(-4),
  ["<C-f>"] = cmp.mapping.scroll_docs(4),
  ["<C-e>"] = cmp.mapping.abort(),
  ["<C-y>"] = cmp.mapping(
    cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    { "i", "c" }
  ),
  ["<C-Space>"] = cmp.mapping {
    i = cmp.mapping.complete(),
    c = function(_)
      if cmp.visible() then
        if not cmp.confirm { select = true } then
          return
        end
      else
        cmp.complete()
      end
    end,
  },
  ["<Tab>"] = cmp.config.disable,
}

M.snippet = {
  expand = function(args)
    require("luasnip").lsp_expand(args.body)
  end,
}

M.sources = cmp.config.sources({
  { name = "nvim_lua" },
  { name = "nvim_lsp" },
  { name = "luasnip" },
}, {
  { name = "path" },
  { name = "buffer", keyword_length = 5 }
})

return M
