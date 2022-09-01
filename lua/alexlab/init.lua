require("alexlab.plugins")
require("alexlab.lsp")
-- require("alexlab.plugins.telescope")
require("alexlab.keymaps")

local default_options = {
    -- jumpoptions = 'view',
    background = 'dark',
    backup = false, -- creates a backup file
    clipboard = "unnamedplus", -- allows neovim to access the system clipboard
    -- cmdheight = 2, -- more space in the neovim command line for displaying messages
    colorcolumn = "80", -- fixes indentline for now
    -- completeopt = { "menuone", "noselect" },
    -- conceallevel = 0, -- so that `` is visible in markdown files
    -- fileencoding = "utf-8", -- the encoding written to a file
    -- foldmethod = "manual", -- folding, set to "expr" for treesitter based folding
    -- foldexpr = "", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
    -- guifont = "monospace:h17", -- the font used in graphical neovim applications
    hidden = true, -- required to keep multiple buffers and open multiple buffers
    -- hlsearch = true, -- highlight all matches on previous search pattern
    ignorecase = true, -- ignore case in search patterns
    mouse = "a", -- allow the mouse to be used in neovim
    -- pumheight = 10, -- pop up menu height
    -- showmode = false, -- we don't need to see things like -- INSERT -- anymore
    -- showtabline = 2, -- always show tabs
    -- smartcase = true, -- smart case
    smartindent = true, -- make indenting smarter again
    -- splitbelow = true, -- force all horizontal splits to go below current window
    -- splitright = true, -- force all vertical splits to go to the right of current window
    -- swapfile = false, -- creates a swapfile
    termguicolors = true, -- set term gui colors (most terminals support this)
    timeoutlen = 250, -- time to wait for a mapped sequence to complete (in milliseconds)
    -- title = true, -- set the title of window to the value of the titlestring
    -- -- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
    -- undodir = undodir, -- set an undo directory
    -- undofile = true, -- enable persistent undo
    -- updatetime = 300, -- faster completion
    -- writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true, -- convert tabs to spaces
    shiftwidth = 4, -- the number of spaces inserted for each indentation
    tabstop = 2, -- insert 2 spaces for a tab
    cursorline = true, -- highlight the current line
    number = true, -- set numbered lines
    relativenumber = true, -- set relative numbered lines
    numberwidth = 4, -- set number column width to 2 {default 4}
    signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
    wrap = true, -- display lines as one long line
    -- shadafile = join_paths(get_cache_dir(), "lvim.shada"),
    scrolloff = 10, -- minimal number of screen lines to keep above and below the cursor.
    sidescrolloff = 10, -- minimal number of screen lines to keep left and right of the cursor.
    exrc = true,
    softtabstop = 4,
    incsearch = true,
}

---  SETTINGS  ---
-- vim.opt.shortmess:append "c" --don't show redundant messages from ins-completion-menu
-- vim.opt.shortmess:append "I" --don't show the default intro message
vim.opt.whichwrap:append "<,>,[,],h,l"

for k, v in pairs(default_options) do
    vim.opt[k] = v
end

P = function(v)
    print(vim.inspect(v))
    return v
end

if pcall(require, 'plenary') then
    RELOAD = require('plenary.reload').reload_module

    R = function(name)
        RELOAD(name)
        return require(name)
    end
end

vim.cmd([[colorscheme gruvbox]])

vim.g['netrw_banner'] = 0
vim.g['netrw_liststyle'] = 3
vim.g['netrw_browse_split'] = 3
vim.g['netrw_altv'] = 1
vim.g['netrw_winsize'] = 25