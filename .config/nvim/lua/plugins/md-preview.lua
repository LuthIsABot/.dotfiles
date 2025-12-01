return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && npm install", -- <─ simpler and works reliably
    keys = {
        {
            "<leader>cp",
            "<cmd>MarkdownPreviewToggle<cr>",
            mode = "n",
            ft = "markdown",
            desc = "Markdown Preview",
        },
    },
}

