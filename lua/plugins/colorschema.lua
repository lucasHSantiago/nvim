return {
    -- {
    --     "rose-pine/neovim",
    --     config = function()
    --         require("rose-pine").setup({
    --             highlight_groups = {
    --                 Normal = { bg = "#000000" },
    --                 NormalNC = { bg = "#000000" },
    --             },
    --         })
    --
    --         vim.cmd("colorscheme rose-pine-moon")
    --     end
    -- },
    -- {
    --     "folke/tokyonight.nvim",
    --     config = function()
    --         vim.cmd[[colorscheme tokyonight]]
    --     end
    -- }
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = function()
    --         require("gruvbox").setup({
    --             contrast = "hard",
    --         })
    --
    --         vim.cmd("colorscheme gruvbox")
    --     end
    -- },
    {
        "loctvl842/monokai-pro.nvim",
        config = function()
            require("monokai-pro").setup({
                filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
            })
            vim.cmd([[colorscheme monokai-pro]])
        end
    }
}
