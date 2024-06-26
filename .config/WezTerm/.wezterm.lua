local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Color scheme
config.color_scheme = "rose-pine"

-- Tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32

-- Font
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold", italic = true })

-- Disable the title bar but enable the resizable border
config.window_decorations = "RESIZE"

-- Opacity
config.window_background_opacity = 0.9

-- PowerShell Core as default shell
config.default_prog = { "C:/Program Files/WindowsApps/Microsoft.PowerShell_7.4.3.0_x64__8wekyb3d8bbwe/pwsh.exe" }

return config
