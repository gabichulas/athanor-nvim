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

local bg = "#1c0e0c"
local border = "#4a2420"
local fg = "#ecd9c0"
local dim = "#a8857a"
local active = "#e2a24a"
local blue = "#a0abbd"
local red = "#f0643f"
local orange = "#ffd27a"
local green = "#acaa6c"

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
