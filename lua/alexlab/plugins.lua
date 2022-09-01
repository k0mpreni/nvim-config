vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    ---------------------
    -- Package Manager --
    ---------------------

    use 'wbthomason/packer.nvim'

    ----------------------
    -- Required plugins --
    ----------------------

    use 'nvim-lua/plenary.nvim'

    ----------------------------------------
    -- Theme, Icons, Statusbar, Bufferbar --
    ----------------------------------------
    use 'morhetz/gruvbox'

    --------------------------
    -- Editor UI Niceties --
    --------------------------

    use 'easymotion/vim-easymotion'

    -----------------------------------
    -- Nice stuff: Blazingly fast editing --
    -----------------------------------

    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use({'jose-elias-alvarez/null-ls.nvim'})

    use 'tpope/vim-commentary'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = function()
            require('alexlab.plugins.telescope')
        end
    }

    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = {{'nvim-telescope/telescope.nvim'}}
    }

    use {
        'nvim-telescope/telescope-ui-select.nvim',
        requires = {{'nvim-telescope/telescope.nvim'}}
    }

    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use "tpope/vim-fugitive"

end)

