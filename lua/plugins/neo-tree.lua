return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				hijack_netrw_behavior = "open_current",
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
					hide_by_name = {
						".git",
						"node_modules",
					},
				},
				hijack_netrw = true,
			},
		})

		vim.api.nvim_set_hl(0, "NeoTreeBufferNumber", { fg = "#fab387" })
		vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#313244" })
		vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = "#6c7086" })
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#f9e2af" })
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#89b4fa" })
		vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#a6adc8" })
		vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = "#cba6f7" })
		vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#cdd6f4" })
		vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = "#f5c2e7", bold = true })
		vim.api.nvim_set_hl(0, "NeoTreeFilterTerm", { fg = "#89b4fa", italic = true })
		vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = "#585b70" })
		vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { fg = "#f38ba8", bold = true })
		vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = "#f38ba8", bg = "#1e1e2e" })

		vim.keymap.set("n", "-", ":Neotree position=current reveal<CR>")
	end,
}
