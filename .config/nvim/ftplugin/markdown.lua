-- Enable spellcheck and soft-wrapping for Markdown
local opts = { noremap = true, silent = true, buffer = true }

vim.opt_local.spell = true
vim.opt_local.linebreak = true

-- vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, noremap = true })
-- vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, noremap = true })
vim.keymap.set("n", "<leader>s", "1z=", { noremap = true, silent = true, desc = "Fix spelling error" })
