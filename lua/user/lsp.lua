local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig.cssmodules_ls.setup {
  filetypes = { "typescriptreact", "javascriptreact" },
  init_options = {
    camelCase = 'dashes',
  },
}

-- require("lvim.lsp.manager").setup("angularls")
lspconfig.angularls.setup({})
-- local configs = require('lspconfig/configs')

-- if not lspconfig.angularls then
--   configs.angularls = {
--     default_config = {
--       cmd = { 'ngserver', '--stdio', '--tsProbeLocations', '', '--ngProbeLocations', '' },
--       filetypes = { 'typescript', 'html' },
--       root_dir = lspconfig.util.root_pattern('angular.json', 'package.json', '.git'),
--       on_new_config = function(new_config, new_root_dir)
--         -- Customize this function as needed
--       end,
--       settings = {},
--     },
--   }
-- end

-- lspconfig.angularls.setup {
--   on_attach = function(client, bufnr)
--     -- Your custom on_attach function, if needed
--   end,
--   flags = {
--     debounce_text_changes = 150,
--   },
--   handlers = {
--     ['$/progress'] = function() end, -- Ignore progress reports to avoid noise
--   }
-- }

-- Auto-restart language server on crash
-- vim.api.nvim_command('autocmd BufWritePost * lua require("lspconfig").angularls.setup{}')

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
