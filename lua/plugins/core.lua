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

  -- terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*", -- always use latest version
    config = true,
    keys = {
      { "<leader>ft", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    },
  },
}
