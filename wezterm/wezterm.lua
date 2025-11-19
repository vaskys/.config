local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 12
config.color_scheme = 'Gruvbox Dark (Gogh)'

config.window_decorations = "RESIZE"
config.window_padding = { left = 5, right = 0, top = 10, bottom = 0 }
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.front_end = "WebGpu"
config.webgpu_power_preference = "LowPower"
config.cursor_blink_rate = 0

config.keys = {
  { key = 'LeftArrow', mods = 'CMD', action = act.ActivateTabRelative(-1) },
  { key = 'RightArrow', mods = 'CMD', action = act.ActivateTabRelative(1) },

  { key = 'e', mods = 'CMD', action = act.SplitHorizontal{domain = 'CurrentPaneDomain'}},
  { key = 'w', mods = 'CMD', action = act.CloseCurrentPane { confirm = false }},
  { key = 'n', mods = 'CMD', action = act.SplitVertical{domain = 'CurrentPaneDomain'}},
  { key = 'h', mods = 'CMD', action = act.ActivatePaneDirection 'Left'},
  { key = 'l', mods = 'CMD', action = act.ActivatePaneDirection 'Right'},
  { key = 'j', mods = 'CMD', action = act.ActivatePaneDirection 'Down'},
  { key = 'k', mods = 'CMD', action = act.ActivatePaneDirection 'Up'},

  { key = 'p', mods = 'CMD', action = act.SendString "\x1b[99;6u" }
}


return config
