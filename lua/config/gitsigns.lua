local gitsigns = require ('gitsigns')

gitsigns.setup {
  signs = {
    add = {
      hl = 'GitSignsAdd',
      text = '',
      numhl = 'GitSignsAddNr',
      linehl = 'GitSignsAddLn'
    },
    change = {
      hl = 'GitSignsChange',
      text = '',
      numhl = 'GitSignsChangeNr',
      linehl = 'GitSignsChangeLn'
    },
    delete = {
      hl = 'GitSignsDelete',
      text = '',
      numhl = 'GitSignsDeleteNr',
      linehl = 'GitSignsDeleteLn'
    },
  },
  numhl = true,
}

opts = {
  silent = true
}

vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, vim.tbl_extend("force", opts, { desc = "[g]it [p]review" }))
vim.keymap.set('n', '<leader>gr', gitsigns.reset_hunk, vim.tbl_extend("force", opts, { desc = "[g]it [r]eset" }))
vim.keymap.set('n', '<leader>gd', gitsigns.diffthis, vim.tbl_extend("force", opts, { desc = "[g]it [d]iff" }))
vim.keymap.set('n', '<leader>gR', gitsigns.reset_buffer, vim.tbl_extend("force", opts, { desc = "[g]it [R]eset file" }))

