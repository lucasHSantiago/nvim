require("oil").setup({
	use_default_keymaps = false,
	keymaps = {
		["<CR>"] = "actions.select",
		["-"] = { "actions.parent", mode = "n" },
		["_"] = { "actions.open_cwd", mode = "n" },
	},
    view_options = {
        show_hidden = true
    }
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
