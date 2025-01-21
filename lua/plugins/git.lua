return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",

        "nvim-telescope/telescope.nvim",
        "ibhagwan/fzf-lua",
        "echasnovski/mini.pick",
    },

    config = function()
        local neogit = require('neogit')
        neogit.setup {}

        vim.keymap.set("n", "<leader>gs", ":Neogit kind=floating<CR>")
    end
}
