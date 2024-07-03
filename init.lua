vim.api.nvim_set_keymap('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.cmd [[
  autocmd BufRead,BufNewFile *.component.html set filetype=html
]]

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Enable HTML syntax highlighting
vim.cmd [[
  autocmd FileType html syntax on
]]
