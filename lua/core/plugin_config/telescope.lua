local actions = require("telescope.actions")
local open_with_trouble = require("trouble.sources.telescope").open

local add_to_trouble = require("trouble.sources.telescope").add

require("telescope").setup({
	file_ignore_patterns = {
		"node%_modules/.*",
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	defaults = {
		mappings = {
			i = { ["<c-t>"] = open_with_trouble },
			n = { ["<c-t>"] = open_with_trouble },
		},
	},
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<c-p>", builtin.find_files, {})
vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, {})
vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<Space>fh", builtin.help_tags, {})

require("telescope").load_extension("ui-select")
