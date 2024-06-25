require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { { "prettier" } },
    typescriptreact = { { "prettier" } },
    javascriptreact = { { "prettier" } },
    typescript = { { "prettier" } },
    html = { { "prettier" } },
    css = { { "prettier" } },
    scss = { { "prettier" } },
  },
  autoformat = true,
  format_on_save = {
    true,
    -- These options will be passed to conform.format()
    -- timeout_ms = 500,
    lsp_fallback = true,
  },
  -- Specify the filetypes you want this formatter to apply to
})
