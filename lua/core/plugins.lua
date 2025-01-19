require("lazy").setup({
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",

	"ellisonleao/gruvbox.nvim",
	"folke/tokyonight.nvim",
	"rose-pine/neovim",
	"scottmckendry/cyberdream.nvim",
	"tiagovla/tokyodark.nvim",
	"catppuccin/nvim",
	"olimorris/onedarkpro.nvim",
	"nvim-tree/nvim-web-devicons",

	"nvim-lualine/lualine.nvim",

	"nvim-treesitter/nvim-treesitter",

	{
		"stevearc/oil.nvim",
		dependencies = { "echasnovski/mini.icons" },
	},

	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	"neovim/nvim-lspconfig",

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
    "windwp/nvim-ts-autotag",

	"nvim-telescope/telescope-ui-select.nvim",
	"folke/trouble.nvim",

	"nvimtools/none-ls.nvim",

	"kevinhwang91/nvim-hlslens",

	"akinsho/toggleterm.nvim",

	"mfussenegger/nvim-dap",
	"nvim-neotest/nvim-nio",
	"rcarriga/nvim-dap-ui",

	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",

			"nvim-telescope/telescope.nvim",
			"ibhagwan/fzf-lua",
			"echasnovski/mini.pick",
		},
	},

	"OmniSharp/omnisharp-vim",

	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	},
})
