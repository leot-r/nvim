return {
    {
	"williamboman/mason.nvim",
	config = function()
	    require("mason").setup()
	end
    },
    {
	"williamboman/mason-lspconfig.nvim",
	dependencies = { "williamboman/mason.nvim" },
	config = function()
	    require("mason-lspconfig").setup({
		ensure_installed = {
		    "lua_ls",
		    "pyright",
		    "vtsls",
		    "html",
		    "cssls",
		    "jsonls",
		    "bashls",
		    "yamlls",
		    "gopls",
		    "rust_analyzer",
		    "asm_lsp",
		    "clangd",
		    "omnisharp",
		}
	    })
	end
    },
    {
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason-lspconfig.nvim", "saghen/blink.cmp" },
	config = function()
	    -- local lspconfig = require("lspconfig")
	    local blink = require("blink.cmp")

	    vim.diagnostic.config({
		virtual_text = { prefix = "●" },
		signs = true,
		underline = true,
		update_in_insert = false,
		severity_sort = true,
	    })


	    -- KEYBINDS: Modern way using global LspAttach autocmd
	    vim.api.nvim_create_autocmd("LspAttach", {
		callback = function(event)
		    local opts = { noremap = true, silent = true, buffer = event.buf }
		    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
		    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opts)
		    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
		    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
		end,
	    })

	    local capabilities = vim.lsp.protocol.make_client_capabilities()
	    capabilities = blink.get_lsp_capabilities(capabilities)

	    local servers = {
		"lua_ls",
		"pyright",
		"vtsls",
		"html",
		"cssls",
		"jsonls",
		"bashls",
		"yamlls",
		"gopls",
		"rust_analyzer",
		"asm_lsp",
		"clangd",
		"omnisharp"
	    }

	    -- TODO sort out custom per lsp configs lsp/lua-ls.lua
	    vim.lsp.enable(servers)
	end,
    },
    {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '*',
	opts = {
	    keymap = { preset = 'super-tab' },
	    appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = 'mono'
	    },
	    sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	    },
	},
    },
}

