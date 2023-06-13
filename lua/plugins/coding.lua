return {
  -- LSP config
  -- {
  --   'VonHeikemen/lsp-zero.nvim',
  --   branch = 'v2.x',
  --   dependencies = {
  --     -- LSP Support
  --     {'neovim/nvim-lspconfig'},             -- Required
  --     {                                      -- Optional
  --       'williamboman/mason.nvim',
  --       build = function()
  --         pcall(vim.cmd, 'MasonUpdate')
  --       end,
  --     },
  --     {'williamboman/mason-lspconfig.nvim'}, -- Optional
  --
  --     -- Autocompletion
  --     {'hrsh7th/nvim-cmp'},     -- Required
  --     {'hrsh7th/cmp-nvim-lsp'}, -- Required
  --     {'L3MON4D3/LuaSnip'},     -- Required
  --     {'hrsh7th/cmp-nvim-lua'},     -- Optional, by me
  --     {'hrsh7th/cmp-nvim-lsp-signature-help'}, -- Optional, by me
  --     {'hrsh7th/cmp-buffer'},       -- Optional
  --     {'hrsh7th/cmp-path'},         -- Optional
  --     {'saadparwaiz1/cmp_luasnip'}, -- Optional
  --     {'hrsh7th/cmp-nvim-lua'},     -- Optional
  --
  --     -- Snippets
  --     {'L3MON4D3/LuaSnip'},             -- Required
  --     {'rafamadriz/friendly-snippets'}, -- Optional
  --
  --     {'j-hui/fidget.nvim'}, -- Useful status updates for LSP
  --
  --     {'folke/neodev.nvim'}, -- Additional lua configuration, makes nvim stuff amazing
  --     { "folke/neoconf.nvim", cmd = "Neoconf", config = true },k
  --   },
  --   config = function()
  --     local lsp = require('lsp-zero').preset({})
  --
  --     lsp.on_attach(function(client, bufnr)
  --       lsp.default_keymaps({ buffer = bufnr })
  --     end)
  --
  --     -- (optional) Configure lua language server for neovim -- one small step
  --     lsp.nvim_workspace()
  --
  --     lsp.setup()
  --
  --     vim.diagnostic.config({ virtual_text = true })
  --
  --     require("fidget").setup()
  --     require("neodev").setup()
  --   end
  -- },

  -- comments
  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    opts = {
      options = {
        custom_commentstring = function()
          return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end,
      },
    },
  },

  -- snippets
  {
    "L3MON4D3/LuaSnip",
    build = (not jit.os:find("Windows"))
        and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
      or nil,
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
    -- stylua: ignore
    keys = {
      {
        "<tab>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true, silent = true, mode = "i",
      },
      { "<tab>", function() require("luasnip").jump(1) end, mode = "s" },
      { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
    },
  },

  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    },
    opts = function()
      local cmp = require("cmp")
      return {
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ["<S-CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
        formatting = {
          format = function(_, item)
            local icons = require("config").icons.kinds
            if icons[item.kind] then
              item.kind = icons[item.kind] .. item.kind
            end
            return item
          end,
        },
        experimental = {
          ghost_text = {
            hl_group = "LspCodeLens",
          },
        },
      }
    end,
  },
}
