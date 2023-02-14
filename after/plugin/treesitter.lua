local ok, tree_sitter_configs = pcall(require, "nvim-treesitter.configs")

if not ok then
    print("nvim-treesitter not installed")
    return
end

tree_sitter_configs.setup {
	ensure_installed = {
       "help",
       "javascript",
       "typescript",
       "lua",
       "rust",
       "toml",
       "c_sharp",
       "html",
       "jsdoc",
       "json",
       "markdown",
       "regex",
   },
	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
		additional_vim_regex_highlighting = false,
	},
	indent = { enabled = true, disable = { 'python' } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<c-backspace>',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- wheter to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leaderA>'] = '@parameter.inner'
      }
    }
  }
	-- rainbow = {
	-- 	enabled = true,
	-- 	extended_mode = true,
	-- 	max_file_lines = nil,
	-- }
}
