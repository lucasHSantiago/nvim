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
				disable_background = true,
				styles = {
					italic = false,
				},
			})

			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

			vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "storm",
				terminal_colors = true,
				transparent = true,
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
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({
				style = "darker",
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
		end,
	},
	{
		"projekt0n/github-nvim-theme",
	},
	{
		"Mofiqul/vscode.nvim",
	},
	{
		"nordtheme/vim",
	},
	{
		"aktersnurra/no-clown-fiesta.nvim",
	},
}
