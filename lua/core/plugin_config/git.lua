local neogit = require('neogit')
neogit.setup {}

vim.keymap.set("n", "<leader>gs", ":Neogit kind=floating<CR>")
vim.keymap.set("n", "<leader>gc", ":Neogit commit<CR>")


