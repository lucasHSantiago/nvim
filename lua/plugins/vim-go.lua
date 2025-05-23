return {
	"fatih/vim-go",
	ft = "go",
	config = function()
		--enabled:
		vim.g.go_gopls_enabled = 1

		--disabled:
		vim.g.go_disable_autoinstall = 1
		vim.g.go_disable_maps = 1
		vim.g.go_disable_autocmd = 1
		vim.g.go_metalinter_autosave = 0
		vim.g.go_mod_fmt_autosave = 0
		vim.g.go_auto_type_info = 0
		vim.g.go_echo_go_info = 0
		vim.g.go_term_enabled = 0
		vim.g.go_fmt_autosave = 0
		vim.g.go_imports_autosave = 0
		vim.g.go_doc_keywordprg_enabled = 0
		vim.g.go_def_mapping_enabled = 0
		vim.g.go_code_completion_enabled = 0
		vim.g.go_diagnostics_enabled = 0
		vim.g.go_highlight_diagnostic_errors = 0
		vim.g.go_highlight_diagnostic_warnings = 0

		vim.keymap.set("n", "<leader>h", ":GoAlternate<CR>")
	end,
}
