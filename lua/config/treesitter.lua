local treesitter = require('nvim-treesitter')

local languages = { 
  'c', 
  'cpp', 

  'rust', 

  'lua', 
  'python', 

  'json',
  'css',
  'html',

  'typescript', 
  'tsx',
  'javascript', 
}

treesitter.install(languages)

vim.api.nvim_create_autocmd('FileType', {
  callback = function() 
    pcall(vim.treesitter.start)
  end,
})
