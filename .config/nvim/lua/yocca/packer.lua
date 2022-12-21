return require('packer').startup(function(use)
    use { 'wbthomason/packer.nvim' }

    use { 'tpope/vim-fugitive' }

    use { 'ThePrimeagen/vim-be-good' }

    --use { 'junegunn/fzf.vim', requires = { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end } }
    
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use { 'nvim-treesitter/playground' }

    use { 'williamboman/mason.nvim' }
    
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

    use { 'editorconfig/editorconfig-vim' }

    use { 'catppuccin/nvim', as = 'catppuccin' }

    use { 'ThePrimeagen/harpoon' }

    use { 'github/copilot.vim' }

    use { 'takac/vim-hardtime' }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
end)

