local use = require('packer').use

return require('packer').startup(function()
	use "wbthomason/packer.nvim" -- The plugin tool
	use "cpea2506/one_monokai.nvim" -- Theme

	-- Mason to pull LSP Servers
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

	-- LSP configuration options
	use 'neovim/nvim-lspconfig'

	-- Rust
	use 'simrat39/rust-tools.nvim'

	-- Completion framework:
	use 'hrsh7th/nvim-cmp'

	-- LSP completion source:
	use 'hrsh7th/cmp-nvim-lsp'

	-- Useful completion sources:
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'

	-- Treesitter
	use 'nvim-treesitter/nvim-treesitter'
end)
