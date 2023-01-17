-- Functional wrapper for mapping custom keybindings
-- mode (as in Vim modes like Normal/Insert mode)
-- lhs (the custom keybinds you need)
-- rhs (the commands or existing keybinds to customise)
-- opts (additional options like <silent>/<noremap>, see :h map-arguments for more info on it)
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.cmd([[
inoremap jk <ESC>
]])

-- Debugger
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<M-F9>', function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
vim.keymap.set('n', '<F9>', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<C-F9>', function() require('dap').clear_breakpoints(); require("notify")("Breakpoints cleared", "warn") end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<S-F11>', function() require('dap').step_out() end)

-- floaterm short cuts
map('n', "<leader>ft", ":FloatermNew --name=myFloat --height=0.8 --width=0.7 --autoclose=2 fish --cwd %:h<CR>")
map('n', "t", ":FloatermToggle myfloat<CR>")
map('t', "<ESC>", "<C-\\><C-n>:q<CR>")

-- toggle nvim Tree
map('n', "<leader>nt", ":NvimTreeToggle<CR>")

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

-- Trouble
map('n', "<leader>e", ":TroubleToggle<CR>")
