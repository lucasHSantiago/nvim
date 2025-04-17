return {
	"folke/trouble.nvim",
	opts = {},
	cmd = "Trouble",
	keys = {
		{
			"<leader>tt",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"]t",
			"<cmd>Trouble diagnostics next jump=true skip_groups=true<cr>",
			desc = "go to the next item",
		},
		{
			"[t",
			"<cmd>Trouble diagnostics prev jump=true skip_groups=true<cr>",
			desc = "go to the previous item",
		},
	},
}
