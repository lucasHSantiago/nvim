vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.guicursor = "n-v-c:block"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.incsearch = true

vim.cmd([[ set noswapfile ]])
vim.cmd([[ set termguicolors ]])

vim.wo.wrap = false

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.cursorline = false
vim.opt.showmode = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undofile = true

if vim.fn.has("win32") ~= 1 then
	vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 50 })
	end,
})
