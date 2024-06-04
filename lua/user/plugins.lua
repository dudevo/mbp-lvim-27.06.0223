lvim.plugins = {
  {
    "pocco81/auto-save.nvim",
  },
  { "windwp/nvim-ts-autotag", event = "VeryLazy" },
  { "mg979/vim-visual-multi" },
  -- { "stevearc/conform.nvim" },
  -- { "mfussenegger/nvim-lint" },
  {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({ max_join_length = 1000, })
    end,
  },
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
    cmd = "TroubleToggle",
    keys = {
      { "<leader>xX", false },
      { "<leader>xL", false },
      { "<leader>xQ", false },
      { "<leader>dx", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document Diagnostics (Trouble)" },
      { "<leader>dX", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
      { "<leader>dL", "<cmd>TroubleToggle loclist<cr>",               desc = "Location List (Trouble)" },
    },
  },
  -- {
  --   "folke/trouble.nvim",
  --   opts = {}, -- for default options, refer to the configuration section for custom setup.
  --   cmd = "Trouble",
  --   -- keys = {
  --   --   {
  --   --     "<leader>xx",
  --   --     "<cmd>Trouble diagnostics toggle<cr>",
  --   --     desc = "Diagnostics (Trouble)",
  --   --   },
  --   --   {
  --   --     "<leader>xX",
  --   --     "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  --   --     desc = "Buffer Diagnostics (Trouble)",
  --   --   },
  --   --   {
  --   --     "<leader>cs",
  --   --     "<cmd>Trouble symbols toggle focus=false<cr>",
  --   --     desc = "Symbols (Trouble)",
  --   --   },
  --   --   {
  --   --     "<leader>cl",
  --   --     "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  --   --     desc = "LSP Definitions / references / ... (Trouble)",
  --   --   },
  --   --   {
  --   --     "<leader>xL",
  --   --     "<cmd>Trouble loclist toggle<cr>",
  --   --     desc = "Location List (Trouble)",
  --   --   },
  --   --   {
  --   --     "<leader>xQ",
  --   --     "<cmd>Trouble qflist toggle<cr>",
  --   --     desc = "Quickfix List (Trouble)",
  --   --   },
  --   -- },
  -- },
  {
    "codota/tabnine-nvim",
    build = "./dl_binaries.sh",

    config = function()
      require('tabnine').setup({
        disable_auto_comment = true,
        accept_keymap = "<C-t>", -- "<TAB>"
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
        log_file_path = nil, -- absolute path to Tabnine log file
      })
    end
  },
  -- {
  --   "jackMort/ChatGPT.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require("chatgpt").setup()
  --   end,
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   }
  -- },
}
