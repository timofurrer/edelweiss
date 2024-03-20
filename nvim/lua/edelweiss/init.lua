local config = require("edelweiss.config")
local theme = require("edelweiss.theme")
local util = require("edelweiss.util")

local M = {}

function M.load(opts)
  if opts then
    require("edelweiss.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

return M
