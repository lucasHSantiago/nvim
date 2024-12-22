vim.opt.signcolumn = "yes"

local lspconfig_defaults = require("lspconfig").util.default_config
lspconfig_defaults.capabilities =
	vim.tbl_deep_extend("force", lspconfig_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "clangd", "omnisharp", "gopls", "dockerls", "yamlls" },
})

local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup({
	capabilities = capabilities,
})

lspconfig.lua_ls.setup({})

lspconfig.clangd.setup({
	settings = {
		clangd = {
			InlayHints = {
				Designators = true,
				Enabled = true,
				ParameterNames = true,
				DeducedTypes = true,
			},
			fallbackFlags = { "-std=c++20" },
		},
	},
})

lspconfig.gopls.setup({})

lspconfig.yamlls.setup({})

lspconfig.dockerls.setup({})

lspconfig.omnisharp.setup({
	capabilities = capabilities,
	enable_roslyn_analysers = true,
	enable_import_completion = true,
	organize_imports_on_format = true,
	enable_decompilation_support = true,
	filetypes = { "cs", "vb", "csproj", "sln", "slnx", "props", "csx", "targets" },
	settings = {
		RoslynExtensionsOptions = {
			InlayHintsOptions = {
				EnableForParameters = true,
				ForLiteralParameters = true,
				ForIndexerParameters = true,
				ForObjectCreationParameters = true,
				ForOtherParameters = true,
				SuppressForParametersThatDifferOnlyBySuffix = false,
				SuppressForParametersThatMatchMethodIntent = false,
				SuppressForParametersThatMatchArgumentName = false,
				EnableForTypes = true,
				ForImplicitVariableTypes = true,
				ForLambdaParameterTypes = true,
				ForImplicitObjectCreatio = true,
			},
		},
	},
})

require("inlay-hints").setup()

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>ro", vim.lsp.buf.hover, {})

