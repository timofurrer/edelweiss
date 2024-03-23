-- Parts of this module have been initially copied from 
-- https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/util.lua

local M = {}

function M.highlight(group, hl)
  if hl.style then
    if type(hl.style) == "table" then
      hl = vim.tbl_extend("force", hl, hl.style)
    elseif hl.style:lower() ~= "none" then
      -- handle old string style definitions
      for s in string.gmatch(hl.style, "([^,]+)") do
        hl[s] = true
      end
    end
    hl.style = nil
  end
  vim.api.nvim_set_hl(0, group, hl)
end

function M.do_syntax(highlights)
  for group, colors in pairs(highlights) do
    M.highlight(group, colors)
  end
end

---@param theme Theme
function M.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "edelweiss"

  M.do_syntax(theme.highlights)
end

return M
