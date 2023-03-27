local ok, telescope = pcall(require, "telescope")

if not ok then
    print("telescope is not installed")
    return
end

telescope.load_extension('file_browser')

telescope.setup {
    extensions = {
        file_browser = {
            hidden = true,
            respect_gitignore = true
        }
    },
	defaults = {
		file_ignore_patterns = {
			"^./.git",
			"^./target/*",
            "^./bin/*",
            "^./obj/*",
            "^./node_modules"
		}
	},
}

telescope.load_extension("dap")
-- telescope.load_extension("i23")
-- Telescope shortcuts
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>sf', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

