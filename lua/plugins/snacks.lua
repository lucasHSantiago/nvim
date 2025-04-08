return {
	{
		{
			"folke/snacks.nvim",
			priority = 1000,
			lazy = false,
			opts = {
				bigfile = {
					enabled = true,
				},
				quickfile = {
					enabled = true,
				},
				picker = {
					enabled = true,
					layout = {
						preset = function()
							return vim.o.columns >= 120 and "sidebar" or "vertical"
						end,
					},
					matcher = {
						frecency = true,
					},
					formatters = {
						file = {
							filename_first = true,
						},
						severity = {
							icons = false,
						},
					},
					icons = {
						files = {
							enabled = false,
						},
						git = {
							enabled = false,
						},
					},
				},
			},
			keys = {
				{
					"<c-p>",
					function()
						Snacks.picker.smart()
					end,
					desc = "Smart Find Files",
				},
				{
					"<leader>fg",
					function()
						Snacks.picker.grep()
					end,
					desc = "Grep",
				},
				{
					"<leader>fw",
					function()
						Snacks.picker.grep_word()
					end,
					desc = "Visual selection or word",
					mode = { "n", "x" },
				},
				{
					"<leader>fh",
					function()
						Snacks.picker.help()
					end,
					desc = "Help Pages",
				},
				{
					"<leader>fk",
					function()
						Snacks.picker.keymaps()
					end,
					desc = "Keymaps",
				},
				{
					"<leader>fc",
					function()
						Snacks.picker.colorschemes()
					end,
					desc = "Colorschemes",
				},
				{
					"<leader>fd",
					function()
						Snacks.picker.diagnostics()
					end,
					desc = "Diagnostics",
				},
				{
					"<leader>fD",
					function()
						Snacks.picker.diagnostics_buffer()
					end,
					desc = "Buffer Diagnostics",
				},
				-- LSP
				{
					"gd",
					function()
						Snacks.picker.lsp_definitions()
					end,
					desc = "Goto Definition",
				},
				{
					"gD",
					function()
						Snacks.picker.lsp_declarations()
					end,
					desc = "Goto Declaration",
				},
				{
					"gr",
					function()
						Snacks.picker.lsp_references()
					end,
					nowait = true,
					desc = "References",
				},
				{
					"<leader>gi",
					function()
						Snacks.picker.lsp_implementations()
					end,
					desc = "Goto Implementation",
				},
				{
					"<leader>D",
					function()
						Snacks.picker.lsp_type_definitions()
					end,
					desc = "Goto T[y]pe Definition",
				},
				{
					"<leader>fs",
					function()
						Snacks.picker.lsp_symbols()
					end,
					desc = "LSP Symbols",
				},
				{
					"<leader>as",
					function()
						Snacks.picker.lsp_workspace_symbols()
					end,
					desc = "LSP Workspace Symbols",
				},
			},
		},
	},
}
