vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers

vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.softtabstop = 4 -- Number of spaces tabs count for while in insert mode
vim.opt.shiftwidth = 4 -- Number of spaces tabs count for while in insert mode
vim.opt.expandtab = true -- Use spaces instead of tabs

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir" -- Set undo directory
vim.opt.undofile = true -- Persistent undo
vim.opt.cursorline = true -- Highlight current line

vim.opt.splitbelow = true -- Open new split panes below current pane
vim.opt.splitright = true -- Open new split panes to the right of current pane

-- vim.opt.showmode = false -- Don't show mode in command line

vim.opt.termguicolors = true -- True color support

vim.opt.scrolloff = 8 -- Show 8 lines above/below cursor when scrolling

vim.opt.updatetime = 50 -- Faster completion

vim.opt.colorcolumn = "101" -- Line length marker at 80 columns

vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Incremental search
vim.opt.smartcase = true -- Ignore case when searching lowercase, match case when searching uppercase
vim.opt.ignorecase = true -- Ignore case when searching

vim.opt.foldlevelstart = 99 -- Start unfolded
vim.wo.foldmethod = "expr" -- Fold based on expression
vim.wo.foldexpr = "nvim_treesitter#foldexpr()" -- Treesitter based folding
vim.g.nofoldenable = true -- Disable folding by default

vim.cmd.colorscheme "one_monokai" -- set the colorscheme
