vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Editor Extension
	-- use 'preservim/nerdtree'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	-- Misc
	use 'mhinz/vim-startify'
	use 'kyazdani42/nvim-web-devicons'
	use 'ryanoasis/vim-devicons'
	
	-- Code Editing
	-- use 'tpope/vim-fugitive'
	-- use 'tpope/vim-commentary'
	use 'numToStr/Comment.nvim'
	use 'tpope/vim-surround'
	use 'windwp/nvim-autopairs'
	-- use 'rust-lang/rust.vim'
	-- use 'jiangmiao/auto-pairs'

	-- Syntax / LSP
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'ron-rs/ron.vim'

	-- Themes
	use 'jamescherti/vim-tomorrow-night-seablue'
	use 'overcache/NeoSolarized'

   	-- Airline
	-- use 'vim-airline/vim-airline'
	-- use 'vim-airline/vim-airline-themes'
	
	-- LuaLine
	use 'nvim-lualine/lualine.nvim' 

end)
