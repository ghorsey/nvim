vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local gah_Fugitive = vim.api.nvim_create_augroup("gah_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {
    group = gah_Fugitive,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }

        -- When in Fugitive window, <leader>p to push
        vim.keymap.set("n", "<leader>p", function()
            vim.cmd.Git("push")
        end, opts)

        -- Rebase always
        vim.keymap.set("n", "<leader>P", function()
            vim.cmd.Git({"pull", "--rebase"})
        end, opts)

        -- NOTE: Push a branch and setup tracking correctly
        vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)
    end
})
