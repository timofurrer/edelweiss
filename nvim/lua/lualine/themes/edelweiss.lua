local colors = require("edelweiss.colors")

local edelweiss = {}

local c = colors.setup()

edelweiss.normal = {
  a = { bg = c.black, fg = c.white },
}

edelweiss.insert = {
  a = { bg = c.colors.Green.shade_700, fg = c.white },
}

edelweiss.visual = {
  a = { bg = c.colors.Pink.shade_600, fg = c.white },
}

edelweiss.replace = {
  a = { bg = c.colors.Red.shade_600, fg = c.white },
}

edelweiss.command = {
  a = { bg = c.colors.Amber.shade_600, fg = c.white },
}

return edelweiss
