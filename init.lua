require('plugins')
require('keymap')
require('lsp/lsp')
require('pluginsetup')

vim.opt.number = true
vim.opt.mouse = 'a'
-- vim.opt.smartindent = true
-- vim.opt.autoindent = true
-- vim.opt.cindent = true
-- vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.cursorline = false
vim.opt.re = 0
vim.opt.wrap = false
-- vim.opt.textwidth = 80 
-- vim.opt.linebreak = true
vim.opt.synmaxcol = 0
-- vim.opt.columns = 100
vim.opt.colorcolumn = '+1' 
vim.opt.clipboard = 'unnamed'
vim.opt.filetype = "on"



-- =============================================================

-- vim.cmd "colorscheme NeoSolarized"
vim.cmd "colorscheme tomorrow-night-seablue"
vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
vim.cmd "hi lineNr ctermbg=NONE"
-- vim.cmd "hi ColorColumn ctermbg=blue guibg=blue"

-- Airline
-- vim.g.airline_theme = 'light'
-- vim.g.airline_theme = 'sol'
-- vim.g.airline_powerline_fonts = 1
-- vim.api.nvim_set_var('airline#extensions#tabline#enabled', 1)
-- vim.api.nvim_set_var('airline#extensions#tabline#formatter', 'unique_tail')
-- vim.api.nvim_set_var('airline#extensions#branch#enabled', '1')


