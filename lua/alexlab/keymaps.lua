local map = vim.api.nvim_set_keymap
local wk = require("which-key")

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' ' -- 'vim.g' sets global variables

options = {
    noremap = true
}
map('n', '<leader>pv', ':Vex<CR>', options)
map('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>', options)
map('n', '<C-j>', ':cprev<CR>', options)
map('n', '<C-k>', ':cnext<CR>', options)
map('x', '<leader>p', '"_dP<CR>', options)
map('n', '<leader>d', '"_d', options)
map('x', '<leader>d', '"_d', options)
map('n', '<leader>y', '"+y', options)
map('x', '<leader>y', '"+y', options)
map('n', '<leader>Y', 'gg"+yG', options)
map('v', 'J', ":m ''>+1<CR>gv=gv", options)
map('v', 'K', ":m '<-2<CR>gv=gv", options)

map('n', '<leader>gs', ":tab :G<CR>", {
    silent = true
})
map('n', '<leader>gj', ":diffget //3<CR>", {
    silent = true
})
map('n', '<leader>gf', ":diffget //2<CR>", {
    silent = true
})

map('n', '--', ":tabedit %<CR>:Gdiff<CR>", {
    silent = true
})

map('n', '<C-d>', "<C-d>zz", {
	silent = true
})
map('n', '<C-u>', "<C-u>zz", {
	silent = true
})

map('n', '<C-s>', ':w<cr>', options)
map('n', '<C-q>', ':q<cr>', options)


wk.register({
    f = {
        name = "find", -- optional group name
        w = {"<cmd>Telescope live_grep<cr>", "Find Word"},
        b = {"<cmd>Telescope file_browser<cr>", "Browse Files"},
        f = {"<cmd>Telescope find_files<cr>", "Find Files"}
    },
    v = {
        name = "LSP",
        d = {vim.lsp.buf.definition, "See definition"},
        f = {vim.lsp.buf.formatting, "Formatting"},
        i = {vim.lsp.buf.implementation, "See implementation"},
        s = {
            h = {vim.lsp.buf.signature_help, "See signature help"},
            d = {vim.lsp.diagnostic.show_line_diagnostics, "See line diagnostics"}
        },
        r = {
            r = {vim.lsp.buf.references, "Buffer references"},
            n = {vim.lsp.buf.rename, "Buffer Rename"}
        },
        h = {vim.lsp.buf.hover, "Hover"},
        a = {vim.lsp.buf.code_action, "Code action"},
        n = {vim.diagnostic.goto_next, "Go to next diagnostic"}
    }
}, {
    prefix = "<leader>"
})

