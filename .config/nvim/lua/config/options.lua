vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.inccommand = "split" -- "for incsearch while sub

-- vim.opt.foldmethod = "manual"
-- vim.opt.mouse = "" -- Disable mouse
vim.opt.spell = false

vim.g.snacks_animate = false -- Disable smooth scroll from snacks

-- Neovide
if vim.g.neovide then
  -- Disable animations
  vim.g.neovide_position_animation_length = 0
  vim.g.neovide_cursor_animation_length = 0.00
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_scroll_animation_far_lines = 0
  vim.g.neovide_scroll_animation_length = 0.00
  -- Font
  vim.o.guifont = "JetBrainsMono Nerd Font"
end

-- Power Shell
vim.opt.shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"
vim.opt.shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
