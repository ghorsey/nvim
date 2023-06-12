-- define common options
local opts = {
  noremap = true,
  silent = true,
}

-- Hint: see `:h vim.map.set()`
-- Better windwo navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Jump up and down the file keeping the cursor centered
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts) -- Center the cursor after jumping down
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts) -- Center the cursor after jumping up

vim.keymap.set('n', 'J', "mzJ`z", opts) -- Join lines and keep cursor position

-- As you search keep the cursor in the center
vim.keymap.set('n', 'n', 'nzzzv', opts) -- Search next and center
vim.keymap.set('n', 'N', 'Nzzzv', opts) -- Search previous and center


vim.keymap.set('n', 'Q', '<Nop>', opts) -- Disable Ex mode


-- Put, Delete, Yank
vim.keymap.set('x', '<leader>p', "\"_dP", opts) --- Preserve yanked word when pasting over
vim.keymap.set('n', '<leader>d', "\"_d", opts) --- Preserve deleted word when deleting over
vim.keymap.set('v', '<leader>d', "\"_d", opts) --- Preserve deleted word when deleting over

vim.keymap.set('n', '<C-c>', "<Esc>") -- Stop highlighting

-- Hint: start visual mode with the same area as the pevious area and the same mode
vim.keymap.set('v', '<', '<gv', opts) -- Hint: see `:h gv`
vim.keymap.set('v', '>', '>gv', opts) -- Hint: see `:h gv`
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts) -- Move highlighted lines down 
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts) -- Move highlighted lines up

-- navigation for the quick fix list
vim.keymap.set('n', '<M-j>', ':cnext<CR>zz', opts) -- Go to next quick fix item
vim.keymap.set('n', '<M-k>', ':cprev<CR>zz', opts) -- Go to previous quick fix item
vim.keymap.set('n', '<M-l>', ':copen<CR>zz', opts) -- Open quick fix list
vim.keymap.set('n', '<M-h>', ':cclose<CR>zz', opts) -- Close quick fix listk
vim.keymap.set('n', '<M-n>', ':cnfile<CR>zz', opts) -- Go to next quick fix item in the same file
vim.keymap.set('n', '<M-p>', ':cpfile<CR>zz', opts) -- Go to previous quick fix item in the same file
vim.keymap.set('n', '<M-q>', ':cquit<CR>zz', opts) -- Close quick fix list
vim.keymap.set('n', '<M-f>', ':cfirst<CR>zz', opts) -- Go to first quick fix item
vim.keymap.set('n', '<M-e>', ':clast<CR>zz', opts) -- Go to last quick fix item
vim.keymap.set('n', '<M-s>', ':colder<CR>zz', opts) -- Go to older quick fix list
vim.keymap.set('n', '<M-a>', ':cnewer<CR>zz', opts) -- Go to newer quick fix list


-- Debugging (Requires Dap and Notify.nvim)
-- vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
-- vim.keymap.set('n', '<M-F9>', function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
-- vim.keymap.set('n', '<F9>', function() require('dap').toggle_breakpoint() end)
-- vim.keymap.set('n', '<C-F9>', function() require('dap').clear_breakpoints(); require("notify")("Breakpoints cleared", "warn") end)
-- vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
-- vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
-- vim.keymap.set('n', '<S-F11>', function() require('dap').step_out() end)
