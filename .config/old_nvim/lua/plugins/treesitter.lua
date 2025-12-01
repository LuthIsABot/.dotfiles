return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  dependencies = { "windwp/nvim-ts-autotag" }, -- add autotag plugin
  opts = {
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
    autotag = { enable = true }, -- enable auto-closing HTML tags
    ensure_installed = { "html", "css", "javascript", "typescript", "php", "lua", "vue" },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}

