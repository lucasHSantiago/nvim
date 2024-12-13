require("lazy").setup({
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",

	"ellisonleao/gruvbox.nvim",

	"nvim-lualine/lualine.nvim",

	"nvim-treesitter/nvim-treesitter",

	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",

	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	"neovim/nvim-lspconfig",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	"nvim-telescope/telescope-ui-select.nvim",

	"nvimtools/none-ls.nvim",

	"kevinhwang91/nvim-hlslens",

	"akinsho/toggleterm.nvim",
    "akinsho/bufferline.nvim",

    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
})
