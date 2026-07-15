return {
    {
	"tpope/vim-fugitive",
	cmd = { "G", "Git", "Gdiffsplit" },
    },
    {
	"lewis6991/gitsigns.nvim",
	event = "BufRead",
	config = function()
	    require("gitsigns").setup()
	end,
    },
}
