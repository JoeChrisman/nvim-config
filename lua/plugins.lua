local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup({
  -- theme
  {
    "vague-theme/vague.nvim",
    name = "vague",
    config = function()
      require("config.vague")
    end,
  },

  -- ast parsing 
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require("config.treesitter")
    end,
  },

  -- lsp integration
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('config.lsp')
    end
  },

  -- autocomplete with lsp, buffer, and file system
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("config.cmp")
    end,
  },

  {
    "hrsh7th/cmp-nvim-lsp"
  },

  {
    "hrsh7th/cmp-buffer"
  },

  {
    "hrsh7th/cmp-path"
  },

  -- git integration
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("config.gitsigns")
    end,
  },

  -- fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
      },
    },
    config = function()
      require("config.telescope")
    end,
  },
})
