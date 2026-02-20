-- unlucky.nvim
vim.cmd("highlight clear")
vim.cmd("set termguicolors")
vim.g.colors_name = "unlucky"

-- Color palette
local c = {
  -- Base
  bg          = "#000000",
  fg          = "#e0e0e0",
  line        = "#120909",
  alt_bg      = "#3E2018",
  visual      = "#3a1c1c",
  ugly        = "#7a3fff",
  ui_accent   = "#3a5f5f",

  -- Syntax
  comment     = "#444444",
  func        = "#bf5a50",
  type        = "#bf5a50",
  string      = "#e0c8a0",
  number      = "#c9a14a",
  keyword     = "#8a8a8a",
  constant    = "#d0d0d0",
  property    = "#d69992",
  variable    = "#c9c8c5",
  operator    = "#ff8f80",

  -- Diagnostics
  diag_red    = "#ff4444",
  diag_yellow = "#ffcc66",
  diag_blue   = "#66aaff",
  diag_green  = "#88cc88",
}

-- Helper
local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Core editor
hi("Normal",       { fg = c.fg, bg = c.bg })
hi("NormalFloat",  { fg = c.fg, bg = c.line })
hi("FloatBorder",  { fg = c.ui_accent, bg = c.bg })
hi("LineNr",       { fg = c.comment })
hi("CursorLineNr", { fg = c.type, bold = true })
hi("CursorLine",   { bg = "#1a0a0a" })
hi("CursorColumn", { bg = "#0a0505" })
hi("Visual",       { bg = c.visual })
hi("Search",       { fg = c.bg, bg = c.type, bold = true })
hi("IncSearch",    { fg = c.bg, bg = c.func, bold = true })
hi("SignColumn",   { bg = c.bg })
hi("MatchParen",   { fg = c.func, bg = c.visual, bold = true })

-- Syntax
hi("Comment",    { fg = c.comment, italic = true })
hi("String",     { fg = c.string })
hi("Number",     { fg = c.number })
hi("Boolean",    { fg = c.number })
hi("Function",   { fg = c.func })
hi("Keyword",    { fg = c.keyword })
hi("Operator",   { fg = c.operator })
hi("Constant",   { fg = c.constant })
hi("Identifier", { fg = c.func }) 

local type_style = { fg = c.type }
for _, group in ipairs({
  "Type", "@type", "@type.builtin",
  "@lsp.type.type", "@lsp.type.class", "@lsp.type.enum"
}) do
  hi(group, type_style)
end
vim.cmd("highlight link @lsp.type.type Type")
vim.cmd("highlight link @lsp.type.class Type")
vim.cmd("highlight link @lsp.type.enum Type")

hi("@function", { fg = c.func })
hi("@method",   { fg = c.func })
vim.cmd("highlight link @lsp.type.function Function")
vim.cmd("highlight link @lsp.type.method Function")

hi("@variable",         { fg = c.variable })
hi("@variable.member",  { fg = c.property })
hi("@variable.builtin", { fg = c.property, italic = true })
hi("@parameter",        { fg = c.constant })
hi("@property",         { fg = c.property })
hi("@field",            { fg = c.func })

-- Constants / Modules
hi("@constant",         { fg = c.keyword })
hi("@constant.builtin", { fg = c.property })
hi("@module",           { fg = c.keyword })
hi("@namespace",        { fg = c.keyword })

-- UI
hi("StatusLine",   { fg = c.fg, bg = c.line })
hi("WinSeparator", { fg = c.ui_accent })
hi("Pmenu",        { fg = c.fg, bg = c.line })
hi("PmenuSel",     { fg = c.bg, bg = c.ui_accent, bold = true })
hi("PmenuSbar",    { bg = "#1a0a0a" })
hi("PmenuThumb",   { bg = c.ui_accent })

-- Diagnostics
hi("DiagnosticError", { fg = c.diag_red })
hi("DiagnosticWarn",  { fg = c.diag_yellow })
hi("DiagnosticInfo",  { fg = c.diag_blue })
hi("DiagnosticHint",  { fg = c.ui_accent })

hi("DiagnosticUnderlineError", { undercurl = true, sp = c.diag_red })
hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.diag_yellow })
hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.diag_blue })
hi("DiagnosticUnderlineHint",  { undercurl = true, sp = c.ui_accent })

-- Telescope
hi("TelescopeSelection",      { fg = c.fg, bg = c.ui_accent, bold = true })
hi("TelescopeSelectionCaret", { fg = c.fg, bg = c.ui_accent, bold = true })

