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
    ["w"] = { "<cmd>w!<CR>", "Save" },
    ["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
    ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
    p = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        -- r = { "<cmd>lua require('lvim.plugin-loader').recompile()<cr>", "Re-compile" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
      },
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
        },
        r = {
            r = {vim.lsp.buf.references, "Buffer references"},
            n = {vim.lsp.buf.rename, "Buffer Rename"}
        },
        h = {vim.lsp.buf.hover, "Hover"},
    },
    l = {
        name = "LSP",
        a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
        d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
        w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        I = { "<cmd>Mason<cr>", "Mason Info" },
        j = {
          vim.diagnostic.goto_next,
          "Next Diagnostic",
        },
        k = {
          vim.diagnostic.goto_prev,
          "Prev Diagnostic",
        },
        l = { vim.lsp.codelens.run, "CodeLens Action" },
        q = { vim.diagnostic.setloclist, "Quickfix" },
        r = { vim.lsp.buf.rename, "Rename" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
        S = {
          "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
          "Workspace Symbols",
        },
        e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
      },
}, {
    prefix = "<leader>"
})

