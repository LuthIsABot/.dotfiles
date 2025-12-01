return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pylsp",
					"html",
					"cssls",
					"ts_ls",
					"phpactor",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			-- Global diagnostic settings
			vim.diagnostic.config({
				virtual_text = false,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})

			-- Lua LSP
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						workspace = {
							library = {
								"${3rd}/love2d/library",
							},
						},
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			-- Python LSP
			lspconfig.pylsp.setup({ capabilities = capabilities })

			-- HTML, CSS, JS/TS, PHP LSPs
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.phpactor.setup({ capabilities = capabilities })

			-- Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
		end,
	},
}

