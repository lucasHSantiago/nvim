vim.opt.signcolumn = "yes"

local lspconfig_defaults = require("lspconfig").util.default_config
lspconfig_defaults.capabilities =
	vim.tbl_deep_extend("force", lspconfig_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "clangd", "omnisharp", "gopls", "dockerls", "yamlls", "rust_analyzer" },
})

local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup({
	capabilities = capabilities,
})

lspconfig.lua_ls.setup({})

lspconfig.clangd.setup({})

lspconfig.gopls.setup({})

lspconfig.yamlls.setup({})

lspconfig.dockerls.setup({})

lspconfig.omnisharp.setup({})

lspconfig.rust_analyzer.setup({})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>ro", vim.lsp.buf.hover, {})

