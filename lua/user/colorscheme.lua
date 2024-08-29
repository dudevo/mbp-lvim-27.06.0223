lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        vim.api.nvim_set_hl(0, "LineNr", { fg = "#6E6F6F" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#BEBFBF", bold = true })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#252525" })
      end,
    },
  },
}
