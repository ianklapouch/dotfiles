return {
  {
    "rose-pine/nvim",
    config = function()
      require("rose-pine").setup({
        styles = {
          bold = false,
          italic = false,
          transparency = true,
        },
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        commentStyle = {
          italic = false,
        },
        keywordStyle = {
          italic = false,
        },

        -- transparent = true,
        -- colors = {
        --   theme = {
        --     all = {
        --       ui = {
        --         bg_gutter = "none",
        --       },
        --     },
        --   },
        -- },
      })
    end,
  },
  -- { "bluz71/vim-moonfly-colors" },
  -- {
  --   "navarasu/onedark.nvim",
  --   config = function()
  --     require("onedark").setup({
  --       style = "darker",
  --     })
  --   end,
  -- },
  -- { "aktersnurra/no-clown-fiesta.nvim" },
  -- { "sainnhe/gruvbox-material" },
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
  { "dgox16/oldworld.nvim" },
  { "mistweaverco/retro-theme.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
