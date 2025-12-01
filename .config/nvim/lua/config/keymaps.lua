-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- make x delete without adding to clip
vim.keymap.set("v", "x", '"_d', { noremap = true, silent = true })
vim.keymap.set("n", "x", '"_d', { noremap = true, silent = true })

-- leader y to copy to global clip
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
