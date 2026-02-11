local telescope = require ('telescope')
local builtin = require ('telescope.builtin');
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[f]ind [f]iles' })
vim.keymap.set('n', '<leader>fe', builtin.live_grep, { desc = '[f]ind [e]verywhere' })
vim.keymap.set('n', '<leader>fo', builtin.buffers, { desc = '[f]ind [o]pen files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = '[f]ind [g]it files' })

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<leader>q"] = actions.close,
      },
      n = {
        ["<leader>q"] = actions.close,
      },
    },
  },
})
