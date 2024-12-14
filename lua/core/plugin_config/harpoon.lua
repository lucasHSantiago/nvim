local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-F1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-F2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-F3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-F4>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<C-F5>", function() harpoon:list():select(5) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<Tab>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<S-Tab>", function() harpoon:list():next() end)

