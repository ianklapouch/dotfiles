return {

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
    へ    ╱|、
   ૮ - ՛)  (` - 7
    / ⁻៸|    |、⁻〵
    乀(ˍ,ل ل    じしˍ,)ノ
            ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
