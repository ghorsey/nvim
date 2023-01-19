local ok, tree_sitter_configs = pcall(require, "nvim-treesitter.configs")

if not ok then
    print("nvim-treesitter not installed")
    return
end

tree_sitter_configs.setup {
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
