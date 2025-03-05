return {
	{
		"morhetz/gruvbox",
		config = function()
			vim.g.gruvbox_contrast_dark = "hard"

			-- vim.cmd("colorscheme gruvbox")
		end,
	},
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
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				transparent = true,
				styles = {
					functions = {},
				},
			})
		end,
	},
	{
		"tjdevries/gruvbuddy.nvim",
		dependencies = {
			"tjdevries/colorbuddy.nvim",
		},
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

			vim.cmd("colorscheme kanagawa")
		end,
	},
}
