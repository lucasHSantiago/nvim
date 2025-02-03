return {
    -- {
    --     "loctvl842/monokai-pro.nvim",
    --     config = function()
    --         require("monokai-pro").setup({
    --             filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
    --         })
    --         vim.cmd([[colorscheme monokai-pro]])
    --     end
    -- },
    {
        "Mofiqul/dracula.nvim",
        config = function()
            vim.cmd [[colorscheme dracula]]
        end
    },
}
