
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'stsewd/fzf-checkout.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'evanleck/vim-svelte'
Plug 'nvim-lua/plenary.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'dense-analysis/ale'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'rhysd/devdocs.vim'
call plug#end() 


set termguicolors
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

"-------------------Load files-----------------
source ~/.config/nvim/base.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugins.vim
lua require("alexlab")

