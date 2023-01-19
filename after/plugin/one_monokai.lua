local ok, oneMonokai = pcall(require, "one_monokai")

if not ok then
    print("one_monokai is not installed")
    return
end

oneMonokai.setup({
    transparent = true
})

-- Global function
function ColorSettings(color)
	color = color or "one_monokai"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorSettings()
