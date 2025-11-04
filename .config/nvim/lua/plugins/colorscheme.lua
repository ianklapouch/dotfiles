return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
      no_italic = true,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
  -- {
  --   "catppuccin/nvim",
  --   opts = {
  --     term_colors = true,
  --     transparent_background = false,
  --     -- UNCOMENT THIS TO DISABLE ITALICS
  --     no_italic = true,
  --     styles = {
  --       comments = {},
  --       conditionals = {},
  --       loops = {},
  --       functions = {},
  --       keywords = {},
  --       strings = {},
  --       variables = {},
  --       numbers = {},
  --       booleans = {},
  --       properties = {},
  --       types = {},
  --     },
  --     color_overrides = {
  --       mocha = {
  --         base = "#000000",
  --         mantle = "#000000",
  --         crust = "#000000",
  --       },
  --     },
  --   },
  -- },
  {
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup({
        overrides = {
          Normal = { bg = "None" },
          NormalFloat = { bg = "None" },
          ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          -- CursorLine = { bg = "None" },
          CursorColumn = { bg = "None" },
          VertSplit = { bg = "None" },
        },
      })
    end,
  },
  "loctvl842/monokai-pro.nvim",
  "WTFox/jellybeans.nvim",
  {
    "rose-pine/neovim",
    config = function()
      require("rose-pine").setup({
        styles = { transparency = true },
        -- highlight_groups = {
        --   Normal = { bg = "#000000" },
        --   NormalNC = { bg = "#000000" },
        --   SignColumn = { bg = "#000000" },
        --   NormalFloat = { bg = "#000000" },
        --   FloatBorder = { bg = "#000000" },
        --   TelescopeNormal = { bg = "#000000" },
        --   TelescopeBorder = { bg = "#000000" },
        -- },
      })
    end,
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      -- vim.g.gruvbox_material_background = "soft"
    end,
  },
  "dgox16/oldworld.nvim",
  "olimorris/onedarkpro.nvim",
  "sainnhe/everforest",
  {
    -- dir = "~/dev/wildberries.nvim",
    "ianklapouch/wildberries.nvim",
    name = "wildberries",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
