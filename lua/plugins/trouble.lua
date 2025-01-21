return {
    "folke/trouble.nvim",
    config = function()
        vim.keymap.set("n", "<Space>fd", ":Trouble diagnostics<CR>")
    end
}
