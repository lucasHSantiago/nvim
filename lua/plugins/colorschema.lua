return {
    {
        "Mofiqul/dracula.nvim",
        config = function()
            require("dracula").setup({
                colors = {
                    bg = "#1E202C"
                }
            })
            -- vim.cmd [[colorscheme dracula]]
        end
    },
    {
        "morhetz/gruvbox",
        config = function()
            -- vim.cmd [[colorscheme gruvbox]]
        end
    },
    {
        "rose-pine/neovim",
        config = function()
            require("rose-pine").setup({
                highlight_groups = {
                    Normal = { bg = "#000000" },
                    NormalNC = { bg = "#000000" },
                },
                styles = {
                    italic = false,
                },
            })

            vim.cmd("colorscheme rose-pine-moon")
        end
    },
}
