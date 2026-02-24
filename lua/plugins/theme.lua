return {
  -- PARTE 1: Instala o tema Rose Pine e configura a transparência
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
        transparency = true, -- A mágica da transparência
      },
    },
  },

  -- PARTE 2: Manda o LazyVim usar esse tema como padrão
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
