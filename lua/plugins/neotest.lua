return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		{ "fredrikaverpil/neotest-golang", version = "*" },
	},
	config = function()
		local neotest_golang_opts = {}
		require("neotest").setup({
			adapters = {
				require("neotest-golang")(neotest_golang_opts),
			},
		})

		vim.keymap.set("n", "<leader>tf", function()
			require("neotest").run.run(vim.fn.expand("%"))
		end)

		vim.keymap.set("n", "<leader>tc", ":Neotest run<CR>")
		vim.keymap.set("n", "<leader>to", ":Neotest output<CR>")
		vim.keymap.set("n", "<leader>tp", ":Neotest output-panel<CR>")
		vim.keymap.set("n", "<leader>ts", ":Neotest summary<CR>")
	end,
}
