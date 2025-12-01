-- Enable spellcheck and soft-wrapping for Markdown
local opts = { noremap = true, silent = true, buffer = true }

vim.opt_local.spell = true
vim.opt_local.linebreak = true

vim.keymap.set("n", "j", "gj", { buffer = true, silent = true })
vim.keymap.set("n", "k", "gk", { buffer = true, silent = true })
vim.keymap.set("n", "<leader>s", "1z=", { noremap = true, silent = true, desc = "Fix spelling error" })
