local opt = vim.opt -- with vim.opt we can set gloabl, window and buffer settings, acting like :set in vimscript
--
-- Show hybrid line numbers (both fixed and relative)
opt.relativenumber = true
opt.number = true
opt.foldlevel = 99 -- Set to keep file from being folded by default
opt.termguicolors = true
opt.smartcase = true -- ignore case if searchi sall lower case
opt.ignorecase = true -- ignore case when searching


-- Set completeopt to hve a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text untl a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortmess: avoid shoing extra messages when using completion
-- updatedtime: set updatetime for CursorHold

vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 300)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on tcursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

-- Treesitter folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.g.nofoldenable = true

-- Global function
function ColorSettings(color)
	color = color or "one_monokai"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorSettings()
