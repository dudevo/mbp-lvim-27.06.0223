-- vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
--   { silent = true, noremap = true }
-- )
-- vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
--   { silent = true, noremap = true }
-- )
-- vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
--   { silent = true, noremap = true }
-- )
-- vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
--   { silent = true, noremap = true }
-- )
-- vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
--   { silent = true, noremap = true }
-- )
-- vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
--   { silent = true, noremap = true }
-- )

-- -- Diagnostic signs
-- -- https://github.com/folke/trouble.nvim/issues/52
-- local signs = {
--   Error = " ",
--   Warning = " ",
--   Hint = " ",
--   Information = " "
-- }
-- for type, icon in pairs(signs) do
--   local hl = "DiagnosticSign" .. type
--   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
-- end

-- lvim.builtin.which_key.mappings["t"] = {
--   name = "Diagnostics",
--   t = { "<cmd>TroubleToggle<cr>", "trouble" },
--   w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
--   d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
--   q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
--   l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
--   r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
-- }


-- return {
--   "folke/trouble.nvim",
--   opts = {}, -- for default options, refer to the configuration section for custom setup.
--   cmd = "Trouble",
--   keys = {
--     {
--       "<leader>xx",
--       "<cmd>Trouble diagnostics toggle<cr>",
--       desc = "Diagnostics (Trouble)",
--     },
--     {
--       "<leader>xX",
--       "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
--       desc = "Buffer Diagnostics (Trouble)",
--     },
--     {
--       "<leader>cs",
--       "<cmd>Trouble symbols toggle focus=false<cr>",
--       desc = "Symbols (Trouble)",
--     },
--     {
--       "<leader>cl",
--       "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
--       desc = "LSP Definitions / references / ... (Trouble)",
--     },
--     {
--       "<leader>xL",
--       "<cmd>Trouble loclist toggle<cr>",
--       desc = "Location List (Trouble)",
--     },
--     {
--       "<leader>xQ",
--       "<cmd>Trouble qflist toggle<cr>",
--       desc = "Quickfix List (Trouble)",
--     },
--   },
-- }

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
