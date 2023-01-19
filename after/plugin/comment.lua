-- setup comments plugin
-- gcc to comment linewise current line
-- gbc to comment blockwise current line
-- local comments = require("Comment").setup()
local ok, comment = pcall(require, "Comment")

if not ok then
    print("Comment not installed")
    return
end

comment.setup()
