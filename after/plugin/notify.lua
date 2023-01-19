local ok, notify = pcall(require, "notify")
if not ok then
    print("notify is not installed")
    return
end
notify.setup({
    background_colour = "#000000"
})

