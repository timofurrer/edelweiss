local colors = require("weiss.colors")
local util = require("weiss.util")
local color_util = require("weiss.color_util")

local M = {}

function M.setup()
  local theme = {
    colors = colors.setup()
  }

  local c = theme.colors

  theme.highlights = {
    Comment = { fg = c.comment, style = { italic = true }},
    ColorColumn = { bg = c.bg },
    Cursor = { bg = c.fg, fg = c.bg },
    CursorColumn = { bg = c.colors.Slate.shade_200 },
    CursorLine = { bg = c.colors.Slate.shade_200 },

    Directory = { fg = c.colors.Blue.shade_600 },

    SignColumn = { bg = c.bg, fg = c.colors.Slate.shade_200 },

    LineNr = { fg = c.fg },
    CursorLineNr = { fg = c.colors.Emerald.shade_600 },

    MatchParen = { fg = c.colors.Orange.shade_500, bold = true },

    ModeMsg = { fg = c.fg, bold = true },
    MsgArea = { bg = c.bg, fg = c.fg },

    Normal = { bg = c.bg, fg = c.fg },
    NormalFloat = { bg = c.bg, fg = c.fg },
    FloatBorder = { bg = c.bg, fg = c.black },
    FloatTitle = { bg = c.bg, fg = c.black, style = { bold = true } },

    Pmenu = { bg = c.colors.Slate.shade_200, fg = c.fg },
    PmenuSel = { bg = c.colors.Slate.shade_400 },
    PmenuSbar = { bg = c.colors.Slate.shade_600 },
    PmenuThumb = { bg = c.colors.Slate.shade_600 },

    Visual = { bg = c.fg, fg = c.bg },

    -- De-facto standard groups for vim
    Constant = { fg = c.colors.Orange.shade_600 },
    String = { fg = c.colors.Green.shade_700 },
    Character = { fg = c.colors.Green.shade_600 },
    Number = { fg = c.colors.Rose.shade_300 },
    Float = { fg = c.colors.Rose.shade_300 },
    Boolean = { fg = c.colors.Fuchsia.shade_400 },

    Identifier = { fg = c.colors.Cyan.shade_700 },
    Function = { fg = c.colors.Blue.shade_600 },

    Statement = { fg = c.colors.Pink.shade_700 },
    Operator = { fg = c.colors.Blue.shade_600 },
    Keyword = { fg = c.colors.Pink.shade_700 },

    Member = { fg = c.colors.Emerald.shade_600 },

    PreProc = { fg = c.colors.Pink.shade_500, style = { italic = true } },

    Type = { fg = c.colors.Fuchsia.shade_800 },

    Special = { fg = c.colors.Blue.shade_900 },

    Delimiter = { link = "Special" },

    Debug = { fg = c.colors.Orange.shade_700 },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    Error = { fg = c.error },
    Todo = { bg = c.colors.Amber.shade_600, fg = c.bg },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = c.fg }, -- used for highlighting "text" references
    LspReferenceRead = { bg = c.fg }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.fg }, -- used for highlighting "write" references

    DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary = { fg = c.black }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError = { fg = c.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { fg = c.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { fg = c.hint }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    LspSignatureActiveParameter = { bg = color_util.darken(c.bg, 0.4, c.bg), bold = true },
    LspCodeLens = { fg = c.comment },
    LspInlayHint = { bg = color_util.darken(c.colors.Blue.shade_300, 0.1, c.bg), fg = c.colors.Slate.shade_300 },

    LspInfoBorder = { fg = c.fg, bg = c.bg },

     -- These groups are for the Neovim tree-sitter highlights.
    ["@annotation"] = { link = "PreProc" },
    ["@attribute"] = { link = "PreProc" },
    ["@boolean"] = { link = "Boolean" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@comment"] = { link = "Comment" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Special" },
    ["@constant.macro"] = { link = "Define" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@number.float"] = { link = "Float" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Special" },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { link = "Macro" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.coroutine"] = { link = "@keyword" },
    ["@keyword.operator"] = { link = "@operator" },
    ["@keyword.return"] = { link = "@keyword" },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "@function.method" },
    ["@namespace.builtin"] = { link = "@variable.builtin" },
    ["@none"] = {},
    ["@number"] = { link = "Number" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@string"] = { link = "String" },
    ["@markup.link.label"] = { link = "SpecialChar" },
    ["@markup.link.label.symbol"] = { link = "Identifier" },
    ["@tag"] = { link = "Label" },
    ["@tag.attribute"] = { link = "@property" },
    ["@tag.delimiter"] = { link = "Delimiter" },
    ["@markup"] = { link = "@none" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },
    ["@markup.raw"] = { link = "String" },
    ["@markup.math"] = { link = "Special" },
    ["@markup.strong"] = { bold = true },
    ["@markup.emphasis"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { link = "Title" },
    ["@comment.note"] = { fg = c.hint },
    ["@comment.error"] = { fg = c.error },
    ["@comment.hint"] = { fg = c.hint },
    ["@comment.info"] = { fg = c.info },
    ["@comment.warning"] = { fg = c.warning },
    ["@comment.todo"] = { fg = c.todo },
    ["@markup.link.url"] = { link = "Underlined" },
    ["@type"] = { link = "Type" },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "@keyword" },
    ["@variable.member"] = { link = "Member" },

    -- Telescope
    TelescopeMatching = { bg = c.yellow, fg = c.black },

    -- Indent-blankline.nvim
    IblIndent = { fg = c.colors.Gray.shade_200, nocombine = true },
    IblScope = { fg = c.colors.Gray.shade_400, nocombine = true },

    -- Flash
    FlashLabel = { bg = c.colors.Red.shade_300, fg = c.fg, style = { bold = true } },
  }

  return theme
end

return M
