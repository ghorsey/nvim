local M = {}


function M.has(name)
  return require("lazy.core.config").plugins[plugin] ~= nil
end



return M
