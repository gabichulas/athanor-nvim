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

local bg = "#eddca8"
local border = "#c9b27a"
local fg = "#241a0c"
local dim = "#6a5737"
local active = "#7a4f06"
local blue = "#34506a"
local red = "#9a3522"
local orange = "#e8775a"
local green = "#4f5a1c"

set_hl("NeoTreeNormal", { bg = bg })
set_hl("NeoTreeNormalNC", { bg = bg })
set_hl("NeoTreeWinSeparator", { fg = border, bg = bg })
set_hl("WinSeparator", { fg = border, bg = bg })
set_hl("VertSplit", { fg = border, bg = bg })

set_hl("@type", { fg = active })
set_hl("@type.builtin", { fg = active })
set_hl("@keyword", { fg = active })
set_hl("@keyword.modifier", { fg = active })
set_hl("@keyword.control", { fg = active })
set_hl("@keyword.directive", { fg = red })

set_hl("@function", { fg = blue })
set_hl("@function.call", { fg = blue })
set_hl("@function.macro", { fg = blue })

set_hl("@number", { fg = orange })
set_hl("@string", { fg = green })
set_hl("@comment", { fg = dim, italic = true })

set_hl("@variable", { fg = fg })
set_hl("@variable.parameter", { fg = fg })
set_hl("@property", { fg = fg })
