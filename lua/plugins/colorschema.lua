return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				styles = {
					italic = false,
					transparency = true,
				},
			})

			vim.cmd("colorscheme rose-pine")
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
				contrast = "",
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = true,
				terminal_colors = true,
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
		"tiagovla/tokyodark.nvim",
		config = function()
			require("tokyodark").setup({
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					identifiers = { italic = false },
					functions = {},
					variables = {},
				},
			})
		end,
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
		end,
	},
	{

		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({
				transparent = false,
				style = {
					comments = "none",
					strings = "none",
					keyword_return = "none",
				},
				plugins = {
					lsp = {
						diagnostic_info = "none",
					},
				},
			})
		end,
	},
	{
		"catppuccin/nvim",
		"zenbones-theme/zenbones.nvim",
		"dasupradyumna/midnight.nvim",
		"tjdevries/colorbuddy.nvim",
		"bluz71/vim-moonfly-colors",
		"craftzdog/solarized-osaka.nvim",
		"miikanissi/modus-themes.nvim",
		"cryptomilk/nightcity.nvim",
	},
}
