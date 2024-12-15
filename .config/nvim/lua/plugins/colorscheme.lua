return {
  {
    "rose-pine/nvim",
    config = function()
      require("rose-pine").setup({
        styles = {
          bold = false,
          italic = false,
          transparency = false,
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
