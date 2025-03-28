return {
  {
    "ibhagwan/fzf-lua",
    opts = {
      defaults = {
        formatter = "path.filename_first",
      },
      winopts = {
        preview = {
          layout = "vertical",
          vertical = "up:60%",
        },
      },
      files = {
        git_icons = false,
      },
    },
  },
}
