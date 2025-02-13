vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.cmd([[ set noswapfile ]])
vim.cmd([[ set termguicolors ]])

vim.wo.wrap = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.cursorline = false
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

