require('nvim-treesitter.configs').setup {
	ensure_installed = {
       "help",
       "javascript",
       "typescript",
       "lua",
       "rust",
       "toml",
       "c_sharp",
       "html",
       "jsdoc",
       "json",
       "markdown",
       "regex",
   },
	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = false,
	},
	-- indent = { enabled = true },
	-- rainbow = {
	-- 	enabled = true,
	-- 	extended_mode = true,
	-- 	max_file_lines = nil,
	-- }
}
