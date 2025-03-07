return {
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				highlight_groups = {
					Normal = { bg = "#000000" },
					NormalNC = { bg = "#000000" },
				},
				styles = {
					italic = false,
				},
			})

			-- vim.cmd("colorscheme rose-pine-moon")
		end,
	},
	{
		"rktjmp/lush.nvim",
		{ dir = "/home/lucas/projects/rosetta", lazy = true },
	},
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				bold = false,
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				overrides = {
					SignColumn = { bg = "NONE" },
					LineNr = { bg = "NONE" },
				},
				contrast = "hard",
			})

			-- vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"catppuccin/nvim",
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				compile = false,
				undercurl = true,
				commentStyle = { italic = false },
				functionStyle = {},
				keywordStyle = { italic = false },
				statementStyle = { bold = false },
				typeStyle = {},
				transparent = false,
				dimInactive = false,
				terminalColors = true,
				colors = {
					palette = {},
					theme = {
						wave = {
							ui = {
								bg = "#111111",
							},
						},
						lotus = {},
						dragon = {
							ui = {
								bg = "#0b0600",
							},
						},
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
				overrides = function(colors)
					return {}
				end,
				theme = "wave",
				background = {
					dark = "wave",
					light = "lotus",
				},
			})

			-- vim.cmd("colorscheme kanagawa")
		end,
	},
	{

		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({})
			vim.cmd("colorscheme vague")
		end,
	},
}
