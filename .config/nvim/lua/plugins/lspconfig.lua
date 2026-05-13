return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- existing lua_ls config (unchanged)
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "love" },
              },
              workspace = {
                library = {
                  vim.env.VIMRUNTIME, -- neovim lua
                  vim.fn.expand("~/.local/share/lua-love2d-stubs"), -- love2d type definitions
                },
                checkThirdParty = false,
              },
            },
          },
        },

        harper_ls = {
          filetypes = { "markdown", "typst" },
        },
        gdscript = {},
      },
    },
  },
}
