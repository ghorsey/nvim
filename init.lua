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

-- Disable netrw at the (:Explore)
vim.g.loaded_netrw = false
vim.g.loaded_netrwPlugin = false

vim.g.mapleader = " "


require('plugins')
require('opts')
require('keys')

-- Set theme to one monokai
require("one_monokai").setup({
	transparent = true
})

-- Setup Mason
require("mason").setup()
require("mason-lspconfig").setup()

-- Completion plugin
local cmp = require'cmp'

cmp.setup({
	-- Enable LSP snippets
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		['<C-p>']     = cmp.mapping.select_prev_item(),
		['<C-n>']     = cmp.mapping.select_next_item(),
		-- Add tab support
		['<S-Tab>']   = cmp.mapping.select_prev_item(),
		['<Tab>']     = cmp.mapping.select_next_item(),
		['<C-S-f>']   = cmp.mapping.scroll_docs(-4),
		['<C-f>']     = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>']     = cmp.mapping.close(),
		['<CR>']      = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		})
	},

	-- Installed sources:
	sources = {
		{ name = 'path' }, -- file paths
		{ name = 'nvim_lsp', keyboard_length = 3 }, -- from language server
		{ name = 'nvim_lsp_signature_help'},        -- display function signatures with current parameter emphasized
		{ name = 'nvim_lua', keyboard_length = 2 }, -- complete neovim's Lua runtime API such vim.slp.*
		{ name = 'buffer', keyword_length = 2 },    -- source current buffer
		{ name = 'vsnip', keyboard_length = 2 },    -- nvim-cmp source for vim-vsnip
		{ name = 'calc' },                          -- source for math calculation
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		fields = { 'menu', 'abbr', 'kind' },
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'λ',
				vsnip = '⋗',
				buffer = 'Ω',
				path = '🖫',
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
})

require('nvim-treesitter.configs').setup {
	ensure_installed = { "lua", "rust", "toml" },
	auto_install = true,
	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = false,
	},
	indent = { enabled = true },
	rainbow = {
		enabled = true, 
		extended_mode = true,
		max_file_lines = nil,
	}
}

-- Setup Lua LSP configuration
--[===[
require'lspconfig'.sumneko_lua.setup {
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim'},
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
}
--]===]

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

-- Setup telescope
require('telescope').setup {
	defaults = {
		file_ignore_patterns = {
			"^./.git",
			"^./target/*",
		}
	},
}

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
	},
	filters = {
		dotfiles = true,
	},
})

-- Setup lualine status bar
require('lualine').setup()

-- setup todos
require('todo-comments').setup { }

-- setup trouble
require("trouble").setup {
	position = "right",
	width = 75,
	padding = true,
	auto_preview = false,
}
