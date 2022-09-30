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
    use {"sainnhe/gruvbox-material"}

    use {"morhetz/gruvbox"}

    --------------------------
    -- Editor UI Niceties --
    --------------------------

    use 'easymotion/vim-easymotion'

    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        },
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'gruvbox',
                    component_separators = '|'
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'diff', 'diagnostics'},
                    lualine_c = {'filename'},
                    lualine_x = {'fileformat', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                }
            }
        end
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        event = "UIEnter",
        config = "require('plugins.bufferline')"
    }

    -----------------------------------
    -- Nice stuff: Blazingly fast editing --
    -----------------------------------

    use {'lewis6991/impatient.nvim'}

    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use({
        'jose-elias-alvarez/null-ls.nvim',
        sources = {require("null-ls").builtins.formatting.stylua, require("null-ls").builtins.diagnostics.eslint_d,
                   require("null-ls").builtins.completion.spell}
    })

    use {
        "numToStr/Comment.nvim",
        event = "BufRead",
        config = function()
            require('Comment').setup()
        end
    }

    use {
        "lewis6991/gitsigns.nvim",
        event = "BufWinEnter",
        config = function()
            require('gitsigns').setup()
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
        -- config = require("plugins.telescope")
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
        'nvim-telescope/telescope-fzf-native.nvim',
        requires = {{'nvim-telescope/telescope.nvim'}},
        run = 'make'
    }

    use {
        "williamboman/mason.nvim",
        cmd = {"MasonInstall", "MasonUninstall", "Mason", "MasonUninstallAll", "MasonLog"},
        config = "require('plugins.mason')"
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

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate",
        event = "BufRead",
        cmd = 'require("plugins.commands").treesitter',
        config = "require('plugins.treesitter')"
    }

end)
