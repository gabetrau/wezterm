local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'MaterialOcean'
config.use_fancy_tab_bar = false

config.leader = { key = 'w', mods = 'CTRL', timeout_milliseconds = 1000 }

return config
