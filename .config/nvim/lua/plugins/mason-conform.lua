return {
  "zapling/mason-conform.nvim",
  dependencies = { "mason-org/mason.nvim", "stevearc/conform.nvim" },
  config = function()
    require("mason-conform").setup({
      -- Optional: auto-install formatters when missing
      ensure_installed = { "prettier", "black", "stylua" },
      automatic_installation = true,
    })
  end,
}
