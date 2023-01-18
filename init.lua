-- Ensure packer is installed when first cloning config files
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

-- local packer_bootstrap = ensure_packer() -- original line
ensure_packer()

require('plugins')
require('set')
require('remap')

require('notify').setup({
	background_colour = "#000000"
})

-- Set theme to one monokai
require("one_monokai").setup({
	transparent = true
})

-- Install libraries for Mason
require("mason-nvim-dap").setup({
	ensure_installed = {
		"chrome-debug-adapter",
		"node-debug2-adapter",
		"netcoredbg",
		"codelldb",
	},
	automatic_setup = true,
	automatic_installation = true,
})

-- Setup rust-tools
local rust_tools = require("rust-tools")

rust_tools.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover Actions
			vim.keymap.set("n", "<C-space>", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>a", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})

-- Setup treeview
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
		icons = {
			git_placement = "after",
			glyphs = {
				git = {
					unstaged = "-",
					staged = "s",
					untracked = "u",
					renamed = "r",
					deleted = "d",
					ignored = "i",
				},
			},
		},
	},
})

-- Setup lualine status bar
require('lualine').setup{}

-- setup todos
require('todo-comments').setup { }

-- setup trouble
require("trouble").setup {
	position = "right",
	width = 75,
	padding = true,
	auto_preview = false,
}

-- setup autopairs
require("nvim-autopairs").setup {}

-- setup surround
require("nvim-surround").setup()

-- setup comments plugin
-- gcc to comment linewise current line
-- gbc to comment blockwise current line
require("Comment").setup()

-- setup hlight args plugin
require("hlargs").setup()

-- setup impatient
require("impatient")

