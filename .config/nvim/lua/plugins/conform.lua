return {
  "stevearc/conform.nvim",
  dependencies = { "zapling/mason-conform.nvim" },
  opts = {
    formatters_by_ft = {
      markdown = { "prettierd" },
      html = { "prettierd" },
      json = { "prettierd" },
      yaml = { "prettierd" },
      lua = { "stylua" },
      sh = { "shfmt" },
    },
  },
}
