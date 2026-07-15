return {
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			styles = {
	-- 				transparency = true,
	-- 			}
	-- 		})
	-- 		vim.cmd.colorscheme "tokyonight"
	-- 	end
	-- },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
					transparency = true,
				}
			})
			vim.cmd.colorscheme "rose-pine"
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "tokyonight",
		}
	},
}
