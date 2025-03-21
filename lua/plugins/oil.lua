return {
	"stevearc/oil.nvim",
	lazy = false,
	config = function()
		require("oil").setup({
			columns = {
				-- "icon",
				-- "permissions",
				-- "size",
				-- "mtime",
			},
			keymaps = {
				["<C-s>"] = false,
				["<C-h>"] = false,
				["<C-t>"] = false,
				["<C-p>"] = false,
				["<C-l>"] = false,
			},
		})

		vim.keymap.set("n", "-", ":Oil<CR>")
	end,
}
