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
      { "<leader>1ft", "<cmd>1ToggleTerm<cr>", desc = "Toggle Terminal" },
      { "<leader>2ft", "<cmd>2ToggleTerm<cr>", desc = "Toggle Terminal" },
      { "<leader>3ft", "<cmd>3ToggleTerm<cr>", desc = "Toggle Terminal" },
    },
  },

  -- hardtime.nvim
  {
    "m4xshen/hardtime.nvim",
    event = "VeryLazy",
    opts = {
      disable_mouse = false,
    },
  },
}
