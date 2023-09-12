local servers = {
  "astro",
}

local options = {
  on_attach = function(client, _)
    client.server_capabilities.documentFormattingProvider = true
    client.server_capabilities.documentRangeFormattingProvider = true

    -- utils.load_mappings("lspconfig", { buffer = bufnr })

    -- if client.server_capabilities.signatureHelpProvider then
    --   require("nvchad.signature").setup(client)
    -- end

    -- if not utils.load_config().ui.lsp_semantic_tokens and client.supports_method "textDocument/semanticTokens" then
    --   client.server_capabilities.semanticTokensProvider = nil
    -- end
  end,

  capabilities = vim.lsp.protocol.make_client_capabilities()
}

options.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {
  on_attach = options.on_attach,
  capabilities = options.capabilities,

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(options)
end
