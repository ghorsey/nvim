-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local ok, lsp = pcall(require, 'lsp-zero')

if not ok then
    print("lsp-zero not installed")
    return
end

lsp.preset('recommended')


lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'rust_analyzer',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>']     = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>']     = cmp.mapping.select_next_item(cmp_select),
	['<C-y>']     = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
	['<Tab>']     = cmp.mapping.confirm({ select = true }),
})

-- lsp.set_preferences({
-- 	sign_icons = { }
-- })
lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})


lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signatureHelp() end, opts)
end)

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})

--
-- cmp.setup({
-- 	-- Enable LSP snippets
-- 	snippet = {
-- 		expand = function(args)
-- 			vim.fn["vsnip#anonymous"](args.body)
-- 		end,
-- 	},
-- 	mapping = {
-- 		-- Add tab support
-- 		['<S-Tab>']   = cmp.mapping.select_prev_item(),
-- 		['<Tab>']     = cmp.mapping.select_next_item(),
-- 		['<C-S-f>']   = cmp.mapping.scroll_docs(-4),
-- 		['<C-f>']     = cmp.mapping.scroll_docs(4),
-- 		['<C-e>']     = cmp.mapping.close(),
-- 		['<CR>']      = cmp.mapping.confirm({
-- 			behavior = cmp.ConfirmBehavior.Insert,
-- 			select = true,
-- 		})
-- 	},
--
-- 	-- Installed sources:
-- 	sources = {
-- 		{ name = 'path' }, -- file paths
-- 		{ name = 'nvim_lsp', keyboard_length = 3 }, -- from language server
-- 		{ name = 'nvim_lsp_signature_help'},        -- display function signatures with current parameter emphasized
-- 		{ name = 'nvim_lua', keyboard_length = 2 }, -- complete neovim's Lua runtime API such vim.slp.*
-- 		{ name = 'buffer', keyword_length = 2 },    -- source current buffer
-- 		{ name = 'vsnip', keyboard_length = 2 },    -- nvim-cmp source for vim-vsnip
-- 		{ name = 'calc' },                          -- source for math calculation
-- 	},
-- 	window = {
-- 		completion = cmp.config.window.bordered(),
-- 		documentation = cmp.config.window.bordered(),
-- 	},
-- 	formatting = {
-- 		fields = { 'menu', 'abbr', 'kind' },
-- 		format = function(entry, item)
-- 			local menu_icon = {
-- 				nvim_lsp = 'λ',
-- 				vsnip = '⋗',
-- 				buffer = 'Ω',
-- 				path = '🖫',
-- 			}
-- 			item.menu = menu_icon[entry.source.name]
-- 			return item
-- 		end,
-- 	},
-- })
