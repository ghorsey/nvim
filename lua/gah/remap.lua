-- Exit Insert mode with key stroke `jk`
-- vim.keymap.set("i", "jk", "<ESC>") -- can just use <C-c> from insert mode

-- Move highlighted lines remaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Should understand this syntax
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep J in place when appending next line to current
vim.keymap.set("n", "J", "mzJ`z") -- Should understand thsi syntax

-- As jumping, page up and down, keep the cursor in the center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- As you search, keep the cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Perserve yanked word when pasing over
vim.keymap.set("x", "<leader>p", "\"_dP") -- need to understand syntax and mode

-- Delete to void registers
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Use to copy values to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Use C-c when in insert mode to exit, also fixes applying changes to
-- vertical edits
vim.keymap.set("n", "<C-c>", "<Esc>")

-- unsure what disabling Q is important
vim.keymap.set("n", "Q", "<nop>")

-- format the whole buffer
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- navigation for quickfix list (need to learn about this again)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Debugger
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<M-F9>', function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
vim.keymap.set('n', '<F9>', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<C-F9>', function() require('dap').clear_breakpoints(); require("notify")("Breakpoints cleared", "warn") end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<S-F11>', function() require('dap').step_out() end)

-- floaterm short cuts
-- vim.keymap.set('n', "<leader>ft", ":FloatermNew --name=myFloat --height=0.8 --width=0.7 --autoclose=2 fish --cwd %:h<CR>")
-- vim.keymap.set('n', "t", ":FloatermToggle myfloat<CR>")
-- vim.keymap.set('t', "<ESC>", "<C-\\><C-n>:q<CR>")

-- Provide a way to edit current word everywhere
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- toggle nvim Tree
vim.keymap.set('n', "<leader>nt", ":NvimTreeToggle<CR>")

-- Trouble
vim.keymap.set('n', "<leader>e", ":TroubleToggle<CR>")
