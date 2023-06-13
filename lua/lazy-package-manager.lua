local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
    { import = "plugins.extras.coding.copilot" },
    { import = "plugins.extras.ui.edgy" },
    { import = "plugins.extras.dap.core" },
    { import = "plugins.extras.dap.nlua" },
    { import = "plugins.extras.test.core" },
    { import = "plugins.extras.lang.json" },
    { import = "plugins.extras.lang.tailwind" },
    { import = "plugins.extras.lang.typescript" },
    { import = "plugins.extras.linting.eslint" },
  },
})
