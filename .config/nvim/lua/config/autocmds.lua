-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.md",
  callback = function()
    -- Do nothing for Markdown
  end,
})

-- Push Todo
local todo_path = vim.fn.expand("~/Documents/todo.md")

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = todo_path,
  callback = function()
    vim.fn.jobstart({ "rclone", "copy", todo_path, "dropbox:/todo.md", "--update" }, { detach = true })
  end,
})
