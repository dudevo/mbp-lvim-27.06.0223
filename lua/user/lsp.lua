local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({
  {
    command = "prettierd",
    filetypes = {
      -- "javascript",
      -- "javascriptreact",
      -- "typescript",
      -- "typescriptreact",
      "css",
      "scss",
      -- "html",
      -- "yaml",
      "graphql",
      "json",
    }
  },
})

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup({
--   {
--     command = "eslint_d",
--     filetypes = { "javascript", "typescript", "typescriptreact", "json" }
--   },
-- })
