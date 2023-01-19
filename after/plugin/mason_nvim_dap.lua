-- Install libraries for Mason
local ok, mason = pcall(require, "mason-nvim-dap")
if not ok then
    print("mason-nvim-dap is not installed")
    return
end
require("mason-nvim-dap").setup({
    ensure_installed = {
        "chrome-debug-adapter",
        "node-debug2-adapter",
        "netcoredbg",
        "codelldb",
    },
    automatic_setup = true,
    automatic_installation = true,
})

