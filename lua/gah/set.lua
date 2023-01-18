-- Disable netrw at the (:Explore)
vim.g.loaded_netrw = false
vim.g.loaded_netrwPlugin = false

-- Leader
vim.g.mapleader = " "

-- Show hybrid line numbers (both fixed and relative)
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes" -- don't know what this does
vim.opt.isfname:append("@-@") -- don't know what this does

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartcase = true -- ignore case if search is all lower case
vim.opt.ignorecase = true -- ignore case when searching

-- Treesitter folding
vim.opt.foldlevel = 99 -- Set to keep file from being folded by default
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.g.nofoldenable = true


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
-- vim.cmd([[
-- set signcolumn=yes
-- autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
-- ]])

