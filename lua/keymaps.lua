vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_dd')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<leader>x", '"_x')
vim.keymap.set("v", "<leader>x", '"_x')

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>j", ":cnext<CR>")
vim.keymap.set("n", "<leader>k", ":cprev<CR>")

vim.keymap.set("n", "<leader>ff", function()
	require("myplugins.dir_picker").pick_directory()
end, { desc = "Pick dir with snacks", noremap = true, silent = true })
