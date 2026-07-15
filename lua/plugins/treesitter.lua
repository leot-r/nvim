return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
      local configs = require("nvim-treesitter")
      configs.setup({
	  highlight = { enable = true },
	  indent = { enable = true },
	  autotage = { enable = true },
	  ensure_installed = {
	      "lua",
	      "bash",
	      "python",
	      "javascript",
	      "typescript",
	      "html",
	      "css",
	      "json",
	      "markdown",
	      "markdown_inline",
	      "go",
	      "rust",
	      "c_sharp",
	  },
	  auto_install = false,
      })
  end
}
