return {
  {
    "Shatur/neovim-ayu",
    opts = {
      mirage = false,
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "auto",
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- A variante mais escura do Catppuccin
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      theme = "dragon", -- Versão super escura do Kanagawa
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu-dark",
    },
  },
}
