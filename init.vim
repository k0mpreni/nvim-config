
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'stsewd/fzf-checkout.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'evanleck/vim-svelte'
Plug 'nvim-lua/plenary.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'rhysd/devdocs.vim'
Plug 'junegunn/goyo.vim'
call plug#end() 

set termguicolors
set background=dark
let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox

"-------------------Load files-----------------
source ~/.config/nvim/base.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugins.vim
lua require("alexlab")

