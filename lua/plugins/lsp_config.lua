local function keymaps()
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<C-s>", vim.lsp.buf.signature_help, {})

    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, {})
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, {})
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, {})
end

local function setup_lsp()
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

    lspconfig.tailwindcss.setup({})
end

local function setup_diagnostics()
    vim.diagnostic.config({
        -- update_in_insert = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = "",
        },
    })
end

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "OmniSharp/omnisharp-vim",
        "kevinhwang91/nvim-hlslens",
        "j-hui/fidget.nvim",
    },
    config = function()
        vim.opt.signcolumn = "yes"

        local lspconfig_defaults = require("lspconfig").util.default_config
        lspconfig_defaults.capabilities =
            vim.tbl_deep_extend("force", lspconfig_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

        require("fidget").setup({})
        require("mason").setup()

        require("mason-lspconfig").setup({
            -- Some lsps need the language installed, so a comment for while, because not necessarily I have the languages installerd.
            -- ensure_installed = { "lua_ls", "clangd", "omnisharp", "gopls", "dockerls", "yamlls", "rust_analyzer" },
        })

        setup_lsp()
        setup_diagnostics()
        keymaps()
    end
}
