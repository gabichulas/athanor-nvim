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

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local bg_color = "#ece1c6"
local border_color = "#b9aa86"

set_hl("NeoTreeNormal", { bg = bg_color })
set_hl("NeoTreeNormalNC", { bg = bg_color })
set_hl("NeoTreeWinSeparator", { fg = border_color, bg = bg_color })
set_hl("WinSeparator", { fg = border_color, bg = bg_color })
set_hl("VertSplit", { fg = border_color, bg = bg_color })
set_hl("Keyword", { fg = "#7c5510" })
set_hl("Comment", { fg = "#6e5f4c", italic = true })
