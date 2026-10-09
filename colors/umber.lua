vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "umber"

local status_ok, base16 = pcall(require, "mini.base16")
if not status_ok then
  return
end

local umber_palette = {
  base00 = "#16120e",
  base01 = "#16120e",
  base02 = "#3a3126",
  base03 = "#8d7d65",
  base04 = "#cfc1a3",
  base05 = "#e3d6b8",
  base06 = "#f3ead3",
  base07 = "#f3ead3",
  base08 = "#d25f42",
  base09 = "#dd7357",
  base0A = "#d49a3a",
  base0B = "#8f9a5a",
  base0C = "#7aa08c",
  base0D = "#7f93a8",
  base0E = "#a8707a",
  base0F = "#c9939a",
}

base16.setup({ palette = umber_palette })

local bg = "#16120e"
local border = "#3a3126"
local fg = "#e3d6b8"
local dim = "#8d7d65"
local red = "#d25f42"
local green = "#8f9a5a"
local cyan = "#7aa08c"
local orange = "#dd7357"
local blue = "#7f93a8"
local purple = "#a8707a"

local hl = vim.api.nvim_set_hl

hl(0, "LineNr", { fg = dim, bg = bg })
hl(0, "SignColumn", { bg = bg })
hl(0, "FoldColumn", { bg = bg })
hl(0, "NeoTreeNormal", { bg = bg })
hl(0, "NeoTreeNormalNC", { bg = bg })
hl(0, "NeoTreeWinSeparator", { fg = border, bg = bg })
hl(0, "WinSeparator", { fg = border, bg = bg })
hl(0, "VertSplit", { fg = border, bg = bg })

hl(0, "Type", { fg = cyan })
hl(0, "StorageClass", { fg = cyan })
hl(0, "Structure", { fg = cyan })
hl(0, "Statement", { fg = red })
hl(0, "Conditional", { fg = red })
hl(0, "Repeat", { fg = red })
hl(0, "Keyword", { fg = red })
hl(0, "PreProc", { fg = red })
hl(0, "Include", { fg = red })
hl(0, "Define", { fg = red })
hl(0, "String", { fg = green })
hl(0, "Character", { fg = green })
hl(0, "Number", { fg = purple })
hl(0, "Float", { fg = orange })
hl(0, "Boolean", { fg = orange })
hl(0, "Comment", { fg = dim, italic = true })
hl(0, "SpecialChar", { fg = cyan })
hl(0, "SpecialComment", { fg = dim, italic = true })

hl(0, "Function", { fg = fg })

hl(0, "Identifier", { fg = fg })
hl(0, "Constant", { fg = fg })
hl(0, "Operator", { fg = fg })
hl(0, "Delimiter", { fg = fg })

hl(0, "@type", { fg = cyan })
hl(0, "@type.builtin", { fg = cyan })
hl(0, "@keyword", { fg = red })
hl(0, "@keyword.modifier", { fg = red })
hl(0, "@keyword.control", { fg = red })
hl(0, "@keyword.return", { fg = red })
hl(0, "@keyword.directive", { fg = red })
hl(0, "@keyword.import", { fg = red })
hl(0, "@string", { fg = green })
hl(0, "@string.escape", { fg = cyan })
hl(0, "@string.special", { fg = cyan })
hl(0, "@number", { fg = purple })
hl(0, "@float", { fg = orange })
hl(0, "@boolean", { fg = orange })
hl(0, "@comment", { fg = dim, italic = true })

hl(0, "@function", { fg = fg })
hl(0, "@function.call", { fg = blue })
hl(0, "@function.macro", { fg = blue })
hl(0, "@variable", { fg = fg })
hl(0, "@variable.parameter", { fg = fg })
hl(0, "@variable.builtin", { fg = fg })
hl(0, "@variable.member", { fg = fg })
hl(0, "@constant", { fg = fg })
hl(0, "@constant.builtin", { fg = fg })
hl(0, "@constant.macro", { fg = fg })
hl(0, "@property", { fg = fg })
hl(0, "@module", { fg = fg })
hl(0, "@punctuation", { fg = fg })
hl(0, "@operator", { fg = fg })
