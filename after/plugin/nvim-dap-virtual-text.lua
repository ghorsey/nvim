local ok, virtual_text = pcall(require, "nvim-dap-virtual-text")

if not ok then
    print("nvim-dap-virtual-text is not installed")
    return
end

virtual_text.setup({})
