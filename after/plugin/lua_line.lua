-- Setup lualine status bar

local ok, lualine = pcall(require, 'lualine')

if not ok then
    print("lualine is not installed")
    return
end

lualine.setup {}

