vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "cinnabar"

local status_ok, base16 = pcall(require, "mini.base16")
if not status_ok then
  return
end

local cinnabar_palette = {
  base00 = "#1c0e0c",
  base01 = "#1c0e0c",
  base02 = "#4a2420",
  base03 = "#a8857a",
  base04 = "#f3e4cc",
  base05 = "#ecd9c0",
  base06 = "#f6e8d4",
  base07 = "#f6e8d4",
  base08 = "#f0643f",
  base09 = "#ffd27a",
  base0A = "#e2a24a",
  base0B = "#acaa6c",
  base0C = "#8cb8a0",
  base0D = "#a0abbd",
  base0E = "#de808c",
  base0F = "#eb9ca5",
}

base16.setup({ palette = cinnabar_palette })

local bg = "#1c0e0c"
local border = "#4a2420"
local fg = "#ecd9c0"
local dim = "#a8857a"
local red = "#f0643f"
local green = "#acaa6c"
local cyan = "#8cb8a0"
local purple = "#de808c"

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
hl(0, "Float", { fg = purple })
hl(0, "Boolean", { fg = purple })
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
hl(0, "@float", { fg = purple })
hl(0, "@boolean", { fg = purple })
hl(0, "@comment", { fg = dim, italic = true })

hl(0, "@function", { fg = fg })
hl(0, "@function.call", { fg = fg })
hl(0, "@function.macro", { fg = fg })
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
