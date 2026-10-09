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
  base01 = "#16120e", -- Gutter background (arreglado)
  base02 = "#3a3126", -- Visual selection background (arreglado)
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

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hl("NeoTreeNormal", { bg = "#16120e" })
hl("NeoTreeNormalNC", { bg = "#16120e" })
hl("NeoTreeWinSeparator", { fg = "#3a3126", bg = "#16120e" })
hl("WinSeparator", { fg = "#3a3126", bg = "#16120e" })
hl("VertSplit", { fg = "#3a3126", bg = "#16120e" })
hl("Keyword", { fg = "#d49a3a" })
hl("Comment", { fg = "#8d7d65", italic = true })
