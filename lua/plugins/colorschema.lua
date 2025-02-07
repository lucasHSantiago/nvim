return {
    {
        "Mofiqul/dracula.nvim",
        config = function()
            require("dracula").setup({
                colors = {
                    bg = "#1E202C"
                }
            })
            vim.cmd [[colorscheme dracula]]
        end
    }
}
