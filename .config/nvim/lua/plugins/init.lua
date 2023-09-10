local default_plugins = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    init = function ()
      vim.cmd[[colorscheme tokyonight]]
    end,
  },
  {"nvim-treesitter/nvim-treesitter", 
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return require("plugins.configs.treesitter")
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  -- lsp
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    opts = function()
      return require("plugins.configs.mason")
    end,
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      require("plugins.configs.lspconfig")
    end,
  },
};

local config = require("plugins.configs.lazy")

require("lazy").setup(default_plugins, config)
