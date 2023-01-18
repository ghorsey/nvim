-- Install libraries for Mason
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

