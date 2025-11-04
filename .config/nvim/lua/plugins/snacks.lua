local Snacks = require("snacks")

local function lsp_symbols()
  vim.notify("LSP Symbols")
  Snacks.picker.pick({
    source = "lsp_symbols",
    focus = "list",
    supports_live = "true",
    auto_close = false,
    layout = {
      preset = "sidebar",
      layout = {
        position = "right",
      },
      auto_hide = { "input" },
    },
  })
end

return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = false,
    },
    picker = {
      formatters = {
        file = {
          filename_first = true,
          truncate = 200,
        },
      },
      sources = {
        -- files = {
        --   layout = {
        --     fullscreen = true,
        --     layout = {
        --       backdrop = false,
        --       width = 0.5,
        --       min_width = 80,
        --       height = 0.8,
        --       min_height = 30,
        --       box = "vertical",
        --       border = "rounded",
        --       title = "{title} {live} {flags}",
        --       title_pos = "center",
        --       { win = "input", height = 1, border = "bottom" },
        --       { win = "list", border = "none", height = 0.3 },
        --       { win = "preview", title = "{preview}", border = "top" },
        --     },
        --   },
        -- },
        explorer = {
          layout = {
            fullscreen = false,
            auto_hide = { "input" },
          },
        },
      },
    },
    dashboard = {
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
      preset = {
        header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
      },
    },
  },
  keys = {
    {
      "<leader>a",
      function()
        lsp_symbols()
      end,
      desc = "LSP Symbols v1",
    },
  },
}
