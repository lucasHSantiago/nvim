return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "OmniSharp/omnisharp-vim",
        "kevinhwang91/nvim-hlslens",
    },
    config = function()
        vim.opt.signcolumn = "yes"

        local lspconfig_defaults = require("lspconfig").util.default_config
        lspconfig_defaults.capabilities =
            vim.tbl_deep_extend("force", lspconfig_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

        require("mason").setup()

        require("mason-lspconfig").setup({
            -- Some lsps need the language installed, so a comment for while, because not necessarily I have the languages installerd.
            -- ensure_installed = { "lua_ls", "clangd", "omnisharp", "gopls", "dockerls", "yamlls", "rust_analyzer" },
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

        lspconfig.html.setup({})

        lspconfig.cssls.setup({})

        lspconfig.elixirls.setup({})

        -- lspconfig.lexical.setup({})

        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, {})
        vim.keymap.set("n", "<leader>ro", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<C-s>", vim.lsp.buf.signature_help, {})
    end
}
