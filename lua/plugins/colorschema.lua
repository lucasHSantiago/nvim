return {
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
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "storm",
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
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				no_italic = true,
			})

			vim.cmd("colorscheme catppuccin")
		end,
	},
}
