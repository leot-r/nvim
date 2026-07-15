vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 8

-- Turn off relative numbers in insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
	vim.opt.relativenumber = false
    end,
})

-- Turn them back on when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
	vim.opt.relativenumber = true
    end,
})

-- Search better
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- lsp
vim.lsp.enable("lua_ls") 
