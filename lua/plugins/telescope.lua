return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		local open_with_trouble = require("trouble.sources.telescope").open

		require("telescope").setup({
			pickers = {
				find_files = {
					hidden = true,
				},
			},
			defaults = {
				file_ignore_patterns = {
					"node_modules",
					"^.git/",
				},
				mappings = {
					i = { ["<c-t>"] = open_with_trouble },
					n = { ["<c-t>"] = open_with_trouble },
				},
			},
		})

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<c-p>", builtin.find_files, {})
		vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

		require("telescope").load_extension("ui-select")
	end,
}
