return {
  -- Theme
  {
    "cpea2506/one_monokai.nvim",
    config = function()
      require("one_monokai").setup({
        italics = false,
      })
    end,
  },
}
