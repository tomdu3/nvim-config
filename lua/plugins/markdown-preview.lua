return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    
    vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", {})
    vim.keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>", {})
    vim.keymap.set("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", {})
  end,
  ft = { "markdown" },
}
