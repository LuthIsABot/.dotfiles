-- conifig
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars = { eob = "~" }

vim.opt.undofile = true
vim.opt.undodir = "/tmp/nvim-undo"
vim.fn.mkdir(vim.opt.undodir[1], "p")

-- make x delete without adding to clip
vim.keymap.set("v", "x", '"_d', { noremap = true, silent = true })
vim.keymap.set("n", "x", '"_d', { noremap = true, silent = true })

-- leader y to copy to global clip
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })

local todo_path = vim.fn.expand("~/Documents/todo.md")

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = todo_path,
  callback = function()
    vim.fn.jobstart({"rclone", "copy", todo_path, "dropbox:/todo.md", "--update"}, {detach=true})
  end,
})

