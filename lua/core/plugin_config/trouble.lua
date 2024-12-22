require("trouble").setup({})

vim.keymap.set("n", "<Space>fd", ":Trouble diagnostics<CR>")
