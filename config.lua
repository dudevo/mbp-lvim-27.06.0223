lvim.plugins = {
  {
    "pocco81/auto-save.nvim",
  },
  { "windwp/nvim-ts-autotag", event = "VeryLazy" },
  { "kylechui/nvim-surround" },
  {
    "codota/tabnine-nvim",
    build = "./dl_binaries.sh",

    config = function()
      require('tabnine').setup({
        disable_auto_comment = true,
        accept_keymap = "<C-o>", -- "<TAB>"
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
        log_file_path = nil, -- absolute path to Tabnine log file
      })
    end
  },
}

local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')

require 'lspconfig'.cssmodules_ls.setup {
  init_options = {
    camelCase = 'dashes',
  },
}



local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false


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
require('nvim-ts-autotag').setup({
  filetypes = { "html", "javascriptreact", "typescript", "typescriptreact", "javascript" },
})



lvim.builtin.telescope.defaults.file_ignore_patterns = {
  ".git/",
  "target/",
  "docs/",
  "vendor/*",
  "%.lock",
  "__pycache__/*",
  "%.sqlite3",
  "%.ipynb",
  "node_modules/*",
  -- "%.jpg",
  -- "%.jpeg",
  -- "%.png",
  "%.svg",
  "%.otf",
  "%.ttf",
  "%.webp",
  ".dart_tool/",
  ".github/",
  ".gradle/",
  ".idea/",
  ".settings/",
  ".vscode/",
  "__pycache__/",
  "build/",
  "env/",
  "gradle/",
  "node_modules/",
  "%.pdb",
  "%.dll",
  "%.class",
  "%.exe",
  "%.cache",
  "%.ico",
  "%.pdf",
  "%.dylib",
  "%.jar",
  "%.docx",
  "%.met",
  "smalljre_*/*",
  ".vale/",
  "%.burp",
  "%.mp4",
  "%.mkv",
  "%.rar",
  "%.zip",
  "%.7z",
  "%.tar",
  "%.bz2",
  "%.epub",
  "%.flac",
  "%.tar.gz",
}


local status_ok, surround = pcall(require, "nvim-surround")
if not status_ok then
  return
end

surround.setup {
  keymaps = { -- vim-surround style keymaps
    insert = "<C-g>s",
    insert_line = "<C-g>S",
    normal = "s",
    normal_cur = "ss",
    normal_line = "S",
    normal_cur_line = "SS",
    visual = "s",
    visual_line = "gS",
    delete = "ds",
    change = "cs",
  },
}

vim.cmd [[nmap <leader>' siw']]

lvim.format_on_save.enabled = true
