
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
call plug#end() 


set termguicolors
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

lua << EOF
require'lspconfig'.gopls.setup{on_attach=on_attach}
EOF

"-------------------Load files-----------------
source ~/.config/nvim/base.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugins.vim
lua require("alexlab")

