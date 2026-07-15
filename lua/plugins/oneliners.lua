return {
    {
	"mbbill/undotree"
    },
    {
	"numToStr/Comment.nvim",
	opts = {
	},
	config = function()
	    require("Comment").setup({
		mappings = {
		    basic = true
		}
	    })
	end
    },
    {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
	    local npairs = require("nvim-autopairs")
	    npairs.setup({
		check_ts = true,
		fast_wrap = {},
		enable_check_bracket_line = false,
	    })
	end
    },
}
