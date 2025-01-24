local colors = require("edelweiss.colors")
local color_util = require("edelweiss.color_util")

local M = {}

function M.setup()
  local theme = {}
  local c = colors.setup()

  theme.highlights = {
    Comment = { fg = c.comment, style = { italic = true }},
    ColorColumn = { bg = c.bg },
    Cursor = { bg = c.fg, fg = c.bg },
    CursorColumn = { bg = c.colors.Slate.shade_200 },
    CursorLine = { bg = c.colors.Slate.shade_200 },

    Directory = { fg = c.colors.Blue.shade_600 },
    DiffAdd = { fg = c.colors.Green.shade_600 },
    DiffChange = { fg = c.colors.Blue.shade_600 },
    DiffDelete = { fg = c.colors.Red.shade_600 },
    DiffText = { bg = c.colors.Blue.shade_300 },

    EndOfBuffer = { fg = c.colors.Gray.shade_400 },

    Folded = { bg = c.fg, fg = c.bg },

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

    Whitespace = { fg = c.colors.Gray.shade_400 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'

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

    --- Misc
    -- TODO:
    -- ["@comment.documentation"] = { },
    ["@operator"] = { link = "Operator" }, -- For any operator: `+`, but also `->` and `*` in C.

    --- Punctuation
    ["@punctuation.delimiter"] = { fg = c.fg }, -- For delimiters ie: `.`
    ["@punctuation.bracket"] = { fg = c.fg }, -- For brackets and parens.
    ["@punctuation.special"] = { fg = c.fg }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@markup.list"] = { fg = c.fg }, -- For special punctutation that does not fall in the catagories before.
    ["@markup.list.markdown"] = { fg = c.fg, bold = true },

    --- Literals
    ["@string.documentation"] = { fg = c.comment },
    ["@string.regexp"] = { fg = c.colors.Blue.shade_600 }, -- For regexes.
    ["@string.escape"] = { fg = c.colors.Pink.shade_600 }, -- For escape characters within a string.

    --- Functions
    ["@constructor"] = { fg = c.colors.Pink.shade_600 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@variable.parameter"] = { fg = c.fg }, -- For parameters of a function.
    -- ["@variable.parameter.builtin"] = { fg = color_util.lighten(c.yellow, 0.8, c.fg) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
    ["@variable.parameter.builtin"] = { fg = c.fg }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    --- Keywords
    ["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
    ["@keyword.function"] = { link = "Keyword" }, -- For keywords used to define a fuction.

    ["@label"] = { fg = c.fg }, -- For labels: `label:` in C and `:label:` in Lua.

    --- Types
    ["@type.builtin"] = { fg = color_util.darken(c.colors.Blue.shade_600, 0.8, c.bg) },
    ["@variable.member"] = { link = "Member" }, -- For fields.
    ["@property"] = { fg = c.colors.Green.shade_600 },

    --- Identifiers
    ["@variable"] = { fg = c.fg }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"] = { fg = c.colors.Red.shade_600 }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@module.builtin"] = { fg = c.colors.Red.shade_600 }, -- Variable names that are defined by the languages, like `this` or `self`.

    --- Text
    -- ["@markup.raw.markdown"] = { fg = c.blue },
    ["@markup.raw.markdown_inline"] = { bg = c.black, fg = c.white },
    ["@markup.link"] = { fg = c.colors.Teal.shade_600 },

    ["@markup.list.unchecked"] = { fg = c.colors.Blue.shade_600 }, -- For brackets and parens.
    ["@markup.list.checked"] = { fg = c.colors.Green.shade_600 }, -- For brackets and parens.

    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },

    ["@module"] = { link = "Include" },

    ["@property.yaml"] = { fg = c.colors.Blue.shade_600 },
    ["@property.json"] = { fg = c.colors.Blue.shade_600 },

    -- tsx
    -- ["@tag.tsx"] = { fg = c.colors.Rose.shade_400 },
    -- ["@constructor.tsx"] = { fg = c.colors. },
    -- ["@tag.delimiter.tsx"] = { fg = color_util.darken(c.colors.Blue.shade_600, 0.7, c.bg) },

    -- LSP Semantic Token Groups
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.deriveHelper"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@markup.list" },
    ["@lsp.type.generic"] = { link = "@variable" },
    ["@lsp.type.interface"] = { fg = color_util.lighten(c.colors.Blue.shade_600, 0.7, c.fg) },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.lifetime"] = { link = "@keyword.storage" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = c.colors.Red.shade_600 },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = color_util.darken(c.colors.Blue.shade_600, 0.8, c.bg) },
    ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = color_util.darken(c.colors.Blue.shade_600, 0.8, c.bg) },
    ["@lsp.typemod.variable.callable"] = { link = "@function" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["@lsp.typemod.variable.static"] = { link = "@constant" },
    -- NOTE: maybe add these with distinct highlights?
    -- ["@lsp.typemod.variable.globalScope"] (global variables)

    -- Tree-sitter context
    TreesitterContext = { bg = c.colors.Slate.shade_100 },

    -- Telescope
    TelescopeMatching = { bg = c.yellow, fg = c.black },

    -- Indent-blankline.nvim
    IblIndent = { fg = c.colors.Gray.shade_200, nocombine = true },
    IblScope = { fg = c.colors.Gray.shade_400, nocombine = true },

    -- Flash
    FlashLabel = { bg = c.colors.Red.shade_300, fg = c.fg, style = { bold = true } },

    -- Illuminate
    IlluminatedWordText = { bg = c.colors.Slate.shade_200 },
    IlluminatedWordRead = { bg = c.colors.Slate.shade_200 },
    IlluminatedWordWrite = { bg = c.colors.Slate.shade_200 },

    -- GitSign
    GitSignsAdd = { link = "DiffAdd" },
    GitSignsChange = { link = "DiffChange" },
    GitSignsDelete = { link = "DiffDelete" },

    -- Neotest
    NeotestPassed = { fg = c.colors.Green.shade_600 },
    NeotestRunning = { fg = c.colors.Cyan.shade_600 },
    NeotestFailed = { fg = c.colors.Red.shade_600 },
    NeotestSkipped = { fg = c.colors.Gray.shade_600 },
    NeotestTest = { fg = c.colors.Cyan.shade_800 },

    -- GitBlame (f-person/git-blame.nvim with custom highlight_group)
    GitBlameVirtualLine = { bg = c.colors.Slate.shade_200, fg = c.comment, style = { italic = true } },

    -- SmartOpen (see https://github.com/danielfalk/smart-open.nvim)
    SmartOpenDirectory = { fg = c.comment, style = { italic = true } },

    -- RenderMarkdown
    RenderMarkdownCodeInline = { fg = c.white, bg = c.black },
  }

  return theme
end

return M
