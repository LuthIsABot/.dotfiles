return {
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        name = "dracula",
        priority = 1000,
        config = function()
            local transparent = false

            local function apply_dracula_theme()
                require("dracula").setup({
                    theme = "dracula-soft",
                    transparent_bg = transparent,
                    colors = {
                        bg = "#151515",
                    },
                })
                vim.cmd.colorscheme("dracula-soft")
            end

            apply_dracula_theme()

            vim.keymap.set("n", "<leader>tb", function()
                transparent = not transparent
                apply_dracula_theme()
            end, { desc = "Toggle Dracula transparency" })
        end,
    },
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
    },
}
