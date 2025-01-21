return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            size = 12,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = "horizontal",
            close_on_exit = false,
            shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
        })

        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
    end
}
