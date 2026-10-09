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

local bg = "#ece1c6"
local border = "#b9aa86"
local fg = "#1f1914"
local dim = "#6e5f4c"
local active = "#7c5510"
local blue = "#3f5570"
local red = "#9a3522"
local orange = "#9a3522"
local green = "#5a6328"

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
