local colors = require("weiss.colors")

local weiss = {}

local c = colors.setup()

weiss.normal = {
  a = { bg = c.black, fg = c.white },
}

weiss.insert = {
  a = { bg = c.colors.Green.shade_700, fg = c.white },
}

weiss.visual = {
  a = { bg = c.colors.Pink.shade_600, fg = c.white },
}

weiss.replace = {
  a = { bg = c.colors.Red.shade_600, fg = c.white },
}

weiss.command = {
  a = { bg = c.colors.Amber.shade_600, fg = c.white },
}

return weiss
