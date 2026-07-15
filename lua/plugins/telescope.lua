return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    -- TODO move to keymaps
    config = function()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
	vim.keymap.set('n', '<leader>ft', builtin.live_grep, { desc = "Find Text through grep" })
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find help" })
    end
}
