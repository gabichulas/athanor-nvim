vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "orpiment"

local status_ok, base16 = pcall(require, "mini.base16")
if not status_ok then
  return
end

local orpiment_palette = {
  base00 = "#eddca8",
  base01 = "#eddca8",
  base02 = "#c9b27a",
  base03 = "#6a5737",
  base04 = "#e9c766",
  base05 = "#241a0c",
  base06 = "#241a0c",
  base07 = "#241a0c",
  base08 = "#9a3522",
  base09 = "#e8775a",
  base0A = "#7a4f06",
  base0B = "#4f5a1c",
  base0C = "#2f6048",
  base0D = "#34506a",
  base0E = "#763a48",
  base0F = "#61303c",
}

base16.setup({ palette = orpiment_palette })

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local bg_color = "#eddca8"
local border_color = "#c9b27a"

set_hl("NeoTreeNormal", { bg = bg_color })
set_hl("NeoTreeNormalNC", { bg = bg_color })
set_hl("NeoTreeWinSeparator", { fg = border_color, bg = bg_color })
set_hl("WinSeparator", { fg = border_color, bg = bg_color })
set_hl("VertSplit", { fg = border_color, bg = bg_color })
set_hl("Keyword", { fg = "#7a4f06" })
set_hl("Comment", { fg = "#6a5737", italic = true })
