require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    -- python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "prettier" } },
    typescriptreact = { { "prettier" } },
    javascriptreact = { { "prettier" } },
    typescript = { { "prettier" } },
    html = { { "prettier" } },
    css = { { "prettier" } },
    scss = { { "prettier" } },
  },
  format_on_save = {
    true,
    -- These options will be passed to conform.format()
    -- timeout_ms = 500,
    lsp_fallback = true,
  },
})
