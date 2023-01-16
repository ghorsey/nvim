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

	-- Vimspector (Debugging)
	use 'puremourning/vimspector'

	-- Terminal
	use 'voldikss/vim-floaterm'

	-- Telescope for searching
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }

	-- Hop for fast motions, TODO setup keybindings
	use { 'phaazon/hop.nvim', branch='v2' }

	-- File explorer
	use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', } }

	-- Status bar
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

	--TODO: comments
	use {
		'folke/todo-comments.nvim',
		requires = "nvim-lua/plenary.nvim",
	}

	-- trouble window
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	}

	-- Indent blankline
	use "lukas-reineke/indent-blankline.nvim"

	-- Auto pairs
	use "windwp/nvim-autopairs"

	-- Surround plugin
	use "kylechui/nvim-surround"

	-- vim illuminate
	use "RRethy/vim-illuminate"

	-- comment plugin
	use "numToStr/Comment.nvim"

	-- highlight method arguments
	use {
		'm-demare/hlargs.nvim',
		requires = { 'nvim-treesitter/nvim-treesitter' }
	}

	use 'danilamihailov/beacon.nvim'
end)
