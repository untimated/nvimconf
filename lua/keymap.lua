-- Key Mapping
-- ''  -> :map
-- 'n' -> :nmap
-- 'v' -> :vmap
-- Key mapping Configuration

local conf = {
	expr = true,
	noremap = true,
	silent = false
}
local standard = {
	noremap = true,
	silent = true
}

-- NERD TREE
-- vim.g.NERDTreeShowHidden = 1
-- vim.api.nvim_set_keymap('n', '<Leader>n', ':NERDTreeFocus<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Buffer Shortcuts
vim.api.nvim_set_keymap('n', '<PageUp>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<PageDown>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-c>', ':bp|bd#<CR>', { noremap = true, silent = true })

-- LSP
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set('n', '<space>[', vim.diagnostic.goto_prev, standard)
vim.keymap.set('n', '<space>]', vim.diagnostic.goto_next, standard)

-- NVIM Tree
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Syntax Highlighting
local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end
local toggle_syntax = function ()
	if ( vim.g.syntax_on ) then
		return t':syntax off<CR>'
	else
		return t':syntax enable<CR>'
	end
end
vim.api.nvim_set_keymap('n', '<C-q>', 'v:lua.toggle_syntax()', conf)
_G.toggle_syntax = toggle_syntax
