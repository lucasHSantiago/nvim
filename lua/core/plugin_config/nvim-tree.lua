vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
		float = {
            enable = true,
			quit_on_focus_loss = true,
		},
	},
	renderer = {
		group_empty = true,
	},
})

vim.keymap.set("n", "<c-n>", ":NvimTreeFocus<CR>")
