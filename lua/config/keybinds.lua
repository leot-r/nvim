vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sa", vim.cmd.Ex)

vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Undo Tree" })

-- Ctrl+c = esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Copy to clipbord
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- TODO add renaME

-- Trigger custom bindings when native LSP hooks into a buffer
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)              -- Show documentation
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)        -- Go to definition
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)        -- Find references
    vim.keymap.set('n', 'grn', vim.lsp.buf.rename, opts)           -- Smart rename symbol
    vim.keymap.set('n', 'gra', vim.lsp.buf.code_action, opts)      -- Trigger code actions
    vim.keymap.set('i', '<C-S>', vim.lsp.buf.signature_help, opts) -- Show function arguments
  end,
})
