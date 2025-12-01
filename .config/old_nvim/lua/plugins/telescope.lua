return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			-- keymaps
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files (telescope)" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "file grep (telescope)" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "open buffers (telescope)" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
