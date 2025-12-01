return {
  {
    "stevearc/oil.nvim",
    lazy = false, -- <-- Load on startup (important)
    opts = {
      default_file_explorer = true,
      view_options = { show_hidden = true },
    },
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open Oil" },
    },
  },
}
