vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "vellum"

local status_ok, base16 = pcall(require, "mini.base16")
if not status_ok then
  return
end

local vellum_palette = {
  base00 = "#ece1c6",
  base01 = "#ece1c6",
  base02 = "#b9aa86",
  base03 = "#6e5f4c",
  base04 = "#2b241c",
  base05 = "#1f1914",
  base06 = "#2b241c",
  base07 = "#2b241c",
  base08 = "#9a3522",
  base09 = "#9a3522",
  base0A = "#7c5510",
  base0B = "#5a6328",
  base0C = "#3e6650",
  base0D = "#3f5570",
  base0E = "#7a3f4c",
  base0F = "#64323e",
}

base16.setup({ palette = vellum_palette })

local bg = "#ece1c6"
local border = "#b9aa86"
local fg = "#1f1914"
local dim = "#6e5f4c"
local red = "#9a3522"
local green = "#5a6328"
local cyan = "#3e6650"
local purple = "#7a3f4c"

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
