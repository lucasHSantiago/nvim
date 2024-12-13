local cmp = require("cmp")

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
	},
	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
		["<C-n>"] = cmp.mapping.select_next_item({ behavior = "select" }),

		["<CR>"] = cmp.mapping.confirm({ select = false }),

        ["<C-d>"] = cmp.mapping.complete(),
	}),
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
})

