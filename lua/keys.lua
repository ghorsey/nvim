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

-- Vimspector
vim.cmd([[ 
nmap <F5>    <cmd>call vimspector#Launch()<cr>
nmap <S-F5>  <cmd>call vimspector#Stop()<cr>
nmap <F6>    <cmd>call vimspector#Reset()<cr>
nmap <F10>   <cmd>call vimspector#StepOver()<cr>
nmap <F11>   <cmd>call vimspector#StepInto()<cr>
nmap <S-F11> <cmd>call vimspector#StepOut()<cr>
]])

map('n', '<F9>', ":call vimspector#ToggleBreakpoint()<cr>")
map('n', 'Dw', ":call vimspector#AddWatch()<cr>")
map('n', 'De', ":call vimspector#Evaluate()<cr>")

-- floaterm short cuts
map('n', "<leader>ft", ":FloatermNew --name=myFloat --height=0.8 --width=0.7 --autoclose=2 fish --cwd %:h<CR>")
map('n', "t", ":FloatermToggle myfloat<CR>")
map('t', "<ESC>", "<C-\\><C-n>:q<CR>")

-- toggle nvim Tree
map('n', "<leader>nt", ":NvimTreeToggle<CR>")

-- Telescope shortcuts
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Trouble
map('n', "<leader>e", ":TroubleToggle<CR>")
