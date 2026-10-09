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

local hl = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

local bg = "#16120e"
local border = "#3a3126"
local fg = "#e3d6b8"
local dim = "#8d7d65"
local active = "#d49a3a"
local blue = "#7f93a8"
local red = "#d25f42"
local orange = "#dd7357"
local green = "#8f9a5a"

hl("NeoTreeNormal", { bg = bg })
hl("NeoTreeNormalNC", { bg = bg })
hl("NeoTreeWinSeparator", { fg = border, bg = bg })
hl("WinSeparator", { fg = border, bg = bg })
hl("VertSplit", { fg = border, bg = bg })

hl("@type", { fg = active })
hl("@type.builtin", { fg = active })
hl("@keyword", { fg = active })
hl("@keyword.modifier", { fg = active })
hl("@keyword.control", { fg = active })
hl("@keyword.directive", { fg = red })

hl("@function", { fg = blue })
hl("@function.call", { fg = blue })
hl("@function.macro", { fg = blue })

hl("@number", { fg = orange })
hl("@string", { fg = green })
hl("@comment", { fg = dim, italic = true })

hl("@variable", { fg = fg })
hl("@variable.parameter", { fg = fg })
hl("@property", { fg = fg })
