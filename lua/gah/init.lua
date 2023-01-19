require("gah.plugins")

local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then
    impatient.enable_profile()
end

require("gah.set")
require("gah.remap")
