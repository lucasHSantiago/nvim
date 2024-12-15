local neogit = require('neogit')
neogit.setup {}

vim.keymap.set("n", "<leader>gs", ":Neogit kind=floating<CR>")

