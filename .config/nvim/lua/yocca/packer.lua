return require("packer").startup(function(use)
    use { "wbthomason/packer.nvim" }

    use { "tpope/vim-fugitive" }

    use { "ThePrimeagen/vim-be-good" }

    --use { "junegunn/fzf.vim", requires = { "junegunn/fzf", run = function() vim.fn["fzf#install"]() end } }
    
    use { "nvim-treesitter/nvim-treesitter"}

    use { "nvim-treesitter/playground" }

    use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }

    use { "editorconfig/editorconfig-vim" }

    use { "catppuccin/nvim", as = "catppuccin" }

    use { "github/copilot.vim" }

    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

    use { "takac/vim-hardtime" }
end)

