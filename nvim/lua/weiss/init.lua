local config = require("weiss.config")
local theme = require("weiss.theme")
local util = require("weiss.util")

local M = {}

function M.load(opts)
  if opts then
    require("weiss.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

return M
