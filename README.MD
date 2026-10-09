# Athanor Neovim Themes

A Neovim port of the original [Athanor](https://github.com/script-wizards/athanor) palette (Umber, Vellum, Orpiment, and Cinnabar).

![Athanor Palette](https://github.com/script-wizards/athanor/raw/main/docs/screenshots/palette.png)

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

## Preview

<table align="center">
  <tr>
    <td align="center"><b>Umber</b></td>
    <td align="center"><b>Vellum</b></td>
  </tr>
  <tr>
    <!-- Adjust the width value to fit your preferences -->
    <td><img src="img/umber.png" width="400" alt="Umber theme preview"/></td>
    <td><img src="img/vellum.png" width="400" alt="Vellum theme preview"/></td>
  </tr>
  <tr>
    <td align="center"><b>Orpiment</b></td>
    <td align="center"><b>Cinnabar</b></td>
  </tr>
  <tr>
    <td><img src="img/orpiment.png" width="400" alt="Orpiment theme preview"/></td>
    <td><img src="img/cinnabar.png" width="400" alt="Cinnabar theme preview"/></td>
  </tr>
</table>

## Credits

This work is based and inspired by the [Athanor](https://github.com/script-wizards/athanor) project by [Panat](https://x.com/ptaranat).

## License

MIT.
