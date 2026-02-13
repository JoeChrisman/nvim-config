vim.g.mapleader = " "

vim.opt.mouse = ""

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 1000;
vim.opt.wrap = false;

vim.opt.expandtab = true;
vim.opt.tabstop = 2;
vim.opt.shiftwidth = 2;

vim.opt.signcolumn = "no"

vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.cmd([[filetype plugin indent on]])

vim.keymap.set({ 'n', 'x' }, "<leader>y", '"+y', { desc = "[y]ank to system clipboard" })
vim.keymap.set({ 'n', 'x' }, '<leader>p', '"+p', { desc = "[p]aste from system clipboard" })

vim.opt.pumheight = 8
vim.opt.winborder = "rounded"
vim.opt.termguicolors = true
