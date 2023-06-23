local Util = require("util")

-- Helpers for dotnet
-- local function dotnet_build_project()
--   if vim.fn.confirm("Do you want to build a project?", "&yes\n&no", 2) ~= 1 then
--     return
--   end
--
--   local projFile = await
--   coroutine.create(function(dap_run_co)
--     local items = vim.fn.globpath(vim.fn.getcwd(), "**/*.*proj", 0, 1)
--     local opts = {
--       format_item = function(path)
--         return vim.fn.fnamemodify(path, ":t")
--       end,
--     }
--     local function cont(choice)
--       if choice == nil then
--         return nil
--       else
--         coroutine.resume(dap_run_co, choice)
--       end
--     end
--
--     vim.ui.select(items, opts, cont)
--   end)
--
--   local cmd = "dotnet build -c Debug " .. projFile
--   print(cmd)
--
--   local r = os.execute(cmd)
--
--   if r == 0 then
--     print("\nBuild: ✔️")
--   else
--     print("\nBuild: ❌ (code: " .. r .. ")")
--   end
-- end

local function get_dll()
  return coroutine.create(function(dap_run_co)
    local items = vim.fn.globpath(vim.fn.getcwd(), "**/bin/Debug/**/*.dll", 0, 1)
    print(vim.inspect(items))

    local opts = {
      format_item = function(path)
        print("path: " .. path)
        return vim.fn.fnamemodify(path, ":t")
      end,
    }

    local function cont(choice)
      if choice == nil then
        return nil
      else
        coroutine.resume(dap_run_co, choice)
      end
    end

    vim.ui.select(items, opts, cont)
  end)
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        omnisharp = function(_, _) -- plugin, opts
          Util.on_attach(function(client, _) -- client, buffer
            if client.name == "omnisharp" then
              -- Fix E5248: Invalid character in group name
              -- https://github.com/williamboman/mason-lspconfig.nvim/issues/211
              client.server_capabilities.semanticTokensProvider = nil
            end
          end)
        end,
      },
    },
  },

  {
    "mfussenegger/nvim-dap",
    optional = true, -- What does optional do w/ lazy.vim
    dependencies = {
      "williamboman/mason.nvim",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        table.insert(opts.ensure_installed, "netcoredbg")
      end,
    },
    opts = function()
      local dap = require("dap")
      dap.set_log_level("TRACE")

      -- if not dap.adapters.coreclr then
      dap.adapters.coreclr = {
        type = "executable",
        command = vim.fn.exepath("netcoredbg"),
        args = { "--interpreter=vscode", "--log" },
      }
      -- end

      -- if not dap.configurations.cs then
      dap.configurations.cs = {
        {
          type = "coreclr",
          name = "NetCoreDbg: Launch",
          request = "launch",
          program = function()
            return get_dll()
          end,
        },
      }
      -- end
    end,
  },
}
