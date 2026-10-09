# Athanor Neovim Themes

A Neovim port of the original [Athanor](https://github.com/script-wizards/athanor) palette (Umber, Vellum, Orpiment, and Cinnabar).

![Athanor Palette](https://github.com/script-wizards/athanor/raw/main/docs/screenshots/palette.png)

## Prerequisites

This colorscheme relies on [mini.base16](https://github.com/echasnovski/mini.base16) to process the palettes.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
return {
  {
    "gabichulas/athanor-nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      -- Required dependency for the palette engine
      "nvim-mini/mini.base16",
    },
    config = function()
      -- Load your preferred theme here (you can also choose with the :colorscheme command)
      -- Options: "umber", "vellum", "orpiment", "cinnabar"
      vim.cmd("colorscheme umber")
    end,
  }
}
```

## Screenshots


## Credits

This work is based and inspired by the [Athanor](https://github.com/script-wizards/athanor) project by [Panat](https://x.com/ptaranat).

## License

MIT.
