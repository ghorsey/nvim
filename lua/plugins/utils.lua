return {
  -- Session Managment
  -- TODO: Causing an error when closing nvim
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    -- opts = { options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" } },
    opts = { options = { "buffers", "curdir", "tabpages", "winsize" } },
    -- stylua: ignore
    keys = {
      { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session", },
      { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session", },
      { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session", },
    },
  },

  -- libary used by other plugins
  { "nvim-lua/plenary.nvim", lazy = true },

  -- makes some plugins dot-repeatable like leap
  { "tpope/vim-repeat", event = "VeryLazy" },
}
