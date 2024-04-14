-- options
-- require('options')
-- keymap
require('keymaps')
-- plugins
require('plugins')
-- colorschemes
require('colorscheme')
-- LSP
require('lsp')

require('config.clangd-extension')
require('config.tabby')
require('config.nvim-libmodal')

require('clangd-picker')
require('telescope-picker')
require('explainer')

require('modes')

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 2
