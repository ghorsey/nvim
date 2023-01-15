return require('packer').startup(function(use)
	use "wbthomason/packer.nvim" -- The plugin tool
	use "wbthomason/packer.nvm" -- The plugin tool
	use "cpea2506/one_monokai.nvim" -- Theme

	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

end)
