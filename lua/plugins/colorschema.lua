return {
	{
		"blazkowolf/gruber-darker.nvim",
		config = function()
			require("gruber-darker").setup({
				italic = {
					strings = false,
					comments = false,
					operators = false,
					folds = false,
				},
			})

			vim.cmd([[ colorscheme gruber-darker ]])
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				compile = false,
				undercurl = true,
				commentStyle = { italic = false },
				functionStyle = { bold = false },
				keywordStyle = { italic = false },
				statementStyle = { bold = false },
				typeStyle = { bold = false },
				transparent = false,
				dimInactive = false,
				terminalColors = true,
				colors = {
					palette = {},
					theme = {
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
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				disable_background = true,
				styles = {
					italic = false,
				},
			})
		end,
	},
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				no_italic = true,
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "night",
				terminal_colors = true,
				-- transparent = true,
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					sidebars = "dark",
					floats = "dark",
				},
			})
		end,
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
		end,
	},
}
