return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "lua", "heex", "elixir", "erlang", "html" },

            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        }
    end
}
