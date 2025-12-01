-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- conifig
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars = { eob = "~" }
vim.opt.cursorline = true

-- save the undotree until system restart
vim.opt.undofile = true
vim.opt.undodir = "/tmp/nvim-undo"
vim.fn.mkdir(vim.opt.undodir[1], "p")

-- let shell aliases work in nvim
vim.opt.shellcmdflag = "-ic"
