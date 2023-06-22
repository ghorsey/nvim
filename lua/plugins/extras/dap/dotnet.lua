local function adapter_path(adapter)
  local c = vim.fn.stdpath("data") .. "/mason/bin/" .. adapter

  -- print(vim.inspect(jit))

  if jit.os == "Windows" then
    return c .. ".cmd"
  end

  return c
end

-- Helpers for dotnet
vim.g.dotnet_build_project = function()
  local default_path = vim.fn.getcwd() .. "/"
  if vim.g["dotnet_last_proj_path"] ~= nil then
    default_path = vim.g["dotnet_last_proj_path"]
  end
  local path = vim.fn.input("Path to your *proj file: ", default_path, "file")
  vim.g["dotnet_last_proj_path"] = path
  -- local cmd = "dotnet build -c Debug " .. path .. " > /dev/null"
  local cmd = "dotnet build -c Debug " .. path
  print("")
  print("Cmd to execute: " .. cmd)
  local f = os.execute(cmd)
  if f == 0 then
    print("\nBuild: ✔️ ")
  else
    print("\nBuild: ❌ (code: " .. f .. ")")
  end
end

vim.g.dotnet_get_dll_path = function()
  local request = function()
    return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
  end

  if vim.g["dotnet_last_dll_path"] == nil then
    vim.g["dotnet_last_dll_path"] = request()
  else
    if
      vim.fn.confirm("Do you want to change the path to dll?\n" .. vim.g["dotnet_last_dll_path"], "&yes\n&no", 2) == 1
    then
      vim.g["dotnet_last_dll_path"] = request()
    end
  end

  return vim.g["dotnet_last_dll_path"]
end

return {
  --   "mfussenegger/nvim-dap",
  --   config = function()
  --     local dap = require("dap")
  --     dap.set_log_level("INFO") -- Helps when debugging
  --
  --     -- dap.adapters.coreclr = {
  --     --   type = "executable",
  --     --   command = adapter_path("netcoredbg"),
  --     --   args = { "--interpreter=vscode" },
  --     -- }
  --
  --     dap.configurations.cs = {
  --       {
  --         type = "coreclr",
  --         name = "launch - netcoredbg",
  --         request = "launch",
  --         program = function()
  --           if vim.fn.confirm("Should I recompile first?", "&yes\n&no", 2) == 1 then
  --             vim.g.dotnet_build_project()
  --           end
  --           return vim.g.dotnet_get_dll_path()
  --         end,
  --       },
  --     }
  --     print(vim.inspect(dap.adapters))
  --     -- print(vim.inspect(dap.configurations))
  --   end,
}
