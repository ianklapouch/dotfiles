return {
  { "catppuccin/nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = function()
      return {
        variant = "moon",
        styles = {
          italic = false,
        },
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
