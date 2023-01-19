-- setup surround
local ok, surround = pcall(require, "nvim-surround")

if not ok then
    print("nvim-surround not installed")
    return
end

surround.setup()
