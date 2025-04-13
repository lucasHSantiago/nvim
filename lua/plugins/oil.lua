return {
	"stevearc/oil.nvim",
	lazy = false,
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true,
			},
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
				["<C-c>"] = false,
				["<Esc>"] = { "actions.close", mode = "n" },
			},
		})

		vim.keymap.set("n", "-", ":Oil<CR>")
	end,
}
