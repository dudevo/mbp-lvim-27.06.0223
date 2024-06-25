local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()


lspconfig.cssmodules_ls.setup {
  filetypes = { "typescriptreact", "javascriptreact" },
  init_options = {
    camelCase = 'dashes',
  },
}


lspconfig.emmet_ls.setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "html", "javascript", "javascriptreact", "scss", "typescriptreact" },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  }
})

-- lspconfig.angularls.setup({})


local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({
  {
    command = "prettierd",
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "css",
      "scss",
      "html",
      -- "yaml",
      "graphql",
      "json",
    }
  }
})

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { --[[ { command = "flake8", filetypes = { "python" } } ]] }
