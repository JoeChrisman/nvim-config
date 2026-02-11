local treesitter = require('nvim-treesitter')

treesitter.install
{ 
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

vim.api.nvim_create_autocmd('FileType', {
  pattern = {  },
  callback = function()
    vim.treesitter.start()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    local lang = vim.treesitter.language.get_lang(ft)

    if lang and vim.treesitter.language.add then
      if vim.treesitter.query.get(lang, "highlights") then
        vim.treesitter.start(args.buf, lang)
      else
        vim.notify(
          "no parser for " .. ft .. " files",
          vim.log.levels.WARN
        )
      end
    end
  end,
})
