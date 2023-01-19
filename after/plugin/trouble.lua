local ok, trouble = pcall(require, "trouble")

if not ok then
    print("trouble is not installed")
    return
end

trouble.setup {
    position = "right",
    width = 75,
    padding = true,
    auto_preview = false,
}

