-- local packer_bootstrap = ensure_packer() -- original line
local packer_bootstrap = require("gah.utils").ensure_packer()


-- Only required if you hae packer configured as `opt`
vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
	use "wbthomason/packer.nvim" -- The plugin tool

	-- Telescope for searching
	use {
        'nvim-telescope/telescope.nvim',
        tag='0.1.0',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            -- this will allow use of .vscode/launch.json
            -- { 'HUAHUAI23/telescope-dapzzzz'},
        }
    }

	use "cpea2506/one_monokai.nvim" -- Theme

	-- Treesitter
	use {
    'nvim-treesitter/nvim-treesitter',
     run = function()
       pcall(require('nvim-treesitter.install').update { with_sync = true })
     end,
  }

  use { -- Additional text objects via treesitter'
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter'
  }
	use ('nvim-treesitter/playground') -- Used for AST of lua and plugin development

	use('theprimeagen/harpoon')

	use('mbbill/undotree')

	use('tpope/vim-fugitive')
  use('tpope/vim-rhubarb')
  use('lewis6991/gitsigns.nvim')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-nvim-lua'},     -- Optional, by me
			{'hrsh7th/cmp-nvim-lsp-signature-help'}, -- Optional, by me
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional

      {'j-hui/fidget.nvim'}, -- Useful status updates for LSP

      {'folke/neodev.nvim'} -- Additional lua configuration, makes nvim stuff amazing
		}
	}

    -- Copilot
    use 'github/copilot.vim'

	-- Notify framework
	use 'rcarriga/nvim-notify'

	-- Rust
	use 'simrat39/rust-tools.nvim'

	-- Debugging
	use 'mfussenegger/nvim-dap'
	use 'jayp0521/mason-nvim-dap.nvim'
	use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }
    use "theHamsta/nvim-dap-virtual-text"
    use "nvim-telescope/telescope-dap.nvim"
    use "rcarriga/cmp-dap"

	-- Terminal
	use 'voldikss/vim-floaterm'

	-- Hop for fast motions, TODO setup keybindings
	-- use { 'phaazon/hop.nvim', branch='v2' }

	-- File explorer
	use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', } }

	-- Status bar
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

	-- use {
	-- 	'folke/todo-comments.nvim',
	-- 	requires = "nvim-lua/plenary.nvim",
	-- }

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

    -- Mermaid syntax
    use "craigmac/vim-mermaid"

	-- highlight method arguments
    -- use {
    --     'm-demare/hlargs.nvim',
    --     requires = { 'nvim-treesitter/nvim-treesitter' }
    -- }

	use 'danilamihailov/beacon.nvim'

	use 'lewis6991/impatient.nvim'

  -- use 'folke/zen-mode.nvim'

    use 'vimwiki/vimwiki'
    use 'michal-h21/vimwiki-sync'

  if packer_bootstrap then
    require("packer").sync()
  end
end)
