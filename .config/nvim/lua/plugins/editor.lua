return {
  { "mbbill/undotree" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "telescope.nvim",
    keys = {
      {
        "<leader>fP",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        -- layout_strategy = "vertical",
      },
    },
  },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      -- formatters_by_ft = {
      --   ["javascript"] = { "biome" },
      --   ["javascriptreact"] = { "biome" },
      --   ["typescript"] = { "biome" },
      --   ["typescriptreact"] = { "biome" },
      --   ["json"] = { "biome" },
      --   ["jsonc"] = { "biome" },
      --   ["vue"] = { "biome" },
      --   ["css"] = { "biome" },
      --   ["html"] = { "biome" },
      -- },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      javascript = { "biome" },
      javascriptreact = { "biome" },
      typescript = { "biome" },
      typescriptreact = { "biome" },
      json = { "biome" },
      jsonc = { "biome" },
      vue = { "biome" },
      css = { "biome" },
      html = { "biome" },
    },
  },
}
