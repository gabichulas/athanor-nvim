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

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local bg_color = "#1c0e0c"
local border_color = "#4a2420"

set_hl("NeoTreeNormal", { bg = bg_color })
set_hl("NeoTreeNormalNC", { bg = bg_color })
set_hl("NeoTreeWinSeparator", { fg = border_color, bg = bg_color })
set_hl("WinSeparator", { fg = border_color, bg = bg_color })
set_hl("VertSplit", { fg = border_color, bg = bg_color })
set_hl("Keyword", { fg = "#e2a24a" })
set_hl("Comment", { fg = "#a8857a", italic = true })
