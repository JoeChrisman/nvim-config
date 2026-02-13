local telescope = require ('telescope')
local builtin = require ('telescope.builtin');
local actions = require('telescope.actions')

local opts = {
  silent = true
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, vim.tbl_extend("force", opts, { desc = '[f]ind [f]iles' }))
vim.keymap.set('n', '<leader>fe', builtin.live_grep, vim.tbl_extend("force", opts, { desc = '[f]ind [e]verywhere' }))
vim.keymap.set('n', '<leader>fo', builtin.buffers, vim.tbl_extend("force", opts, { desc = '[f]ind [o]pen files' }))

vim.keymap.set('n', '<leader>fg', builtin.git_files, vim.tbl_extend("force", opts, { desc = '[f]ind [g]it files' }))
vim.keymap.set("n", "<leader>fc", builtin.git_status, vim.tbl_extend("force", opts, { desc = '[f]ind git [c]hanges' }))

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
