return {
  -- Undotree
  { "mbbill/undotree" },
  -- Conform
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "eslint" },
        ["javascriptreact"] = { "eslint" },
        ["typescript"] = { "eslint" },
        ["typescriptreact"] = { "eslint" },
        ["vue"] = { "prettierd", "prettier" },
        ["css"] = { "prettierd", "prettier" },
        ["scss"] = { "prettierd", "prettier" },
        ["less"] = { "prettierd", "prettier" },
        ["html"] = { "prettierd", "prettier" },
        ["json"] = { "prettierd", "prettier" },
        ["jsonc"] = { "prettierd", "prettier" },
        ["yaml"] = { "prettierd", "prettier" },
        ["markdown"] = { "prettierd", "prettier" },
        ["markdown.mdx"] = { "prettierd", "prettier" },
        ["graphql"] = { "prettierd", "prettier" },
        ["handlebars"] = { "prettierd", "prettier" },
      },
    },
  },
}
