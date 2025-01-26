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
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd[[colorscheme tokyonight-night]]
        end
    }
}
