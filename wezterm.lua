local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'MaterialOcean'
config.use_fancy_tab_bar = false

config.leader = { key = 'w', mods = 'CTRL', timeout_milliseconds = 1500 }

config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'm',
    mods = 'CMD',
    action = wezterm.action.DisableDefaultAssignment,
  },
  {
    key = 'r',
    mods = 'LEADER',
    action = wezterm.action.ReloadConfiguration,
  },

  {
    key = '\\',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '-',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'x',
    mods = 'LEADER',
    action = wezterm.action.ActivateCopyMode,
  },
  {
    key = ' ',
    mods = 'LEADER',
    action = wezterm.action.QuickSelect,
  },
  {
    key = 'W',
    mods = 'LEADER',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
  {
    key = 'w',
    mods = 'LEADER',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = 'c',
    mods = 'LEADER',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },

  { key = '1', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(0) },
  { key = '2', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(1) },
  { key = '3', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(2) },
  { key = '4', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(3) },
  { key = '5', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(4) },
  { key = '6', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(5) },
  { key = '7', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(6) },
  { key = '8', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(7) },
  { key = '9', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(8) },
  { key = '0', mods = 'LEADER', action = wezterm.action.ActivatePaneByIndex(9) },
  { key = '[', mods = 'LEADER', action = wezterm.action.ActivateTabRelative(-1) },
  { key = ']', mods = 'LEADER', action = wezterm.action.ActivateTabRelative(1) },
  { key = '{', mods = 'LEADER', action = wezterm.action.MoveTabRelative(-1) },
  { key = '}', mods = 'LEADER', action = wezterm.action.MoveTabRelative(1) },

  {
    key = ',',
    mods = 'LEADER',
    action = wezterm.action.PromptInputLine {
      description = 'Enter new name for tab',
      action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- Or the actual line of text they wrote
        if line then
          window:active_tab():set_title(line)
        end
      end),
    },
  },

  { key = 'p', mods = 'LEADER', action = wezterm.action.PaneSelect },
  {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'j',
    mods = 'ALT',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'k',
    mods = 'ALT',
    action = wezterm.action.AdjustPaneSize { 'Up', 5 },
  },
  {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
  {
    key = 'r',
    mods = 'ALT',
    action = wezterm.action.RotatePanes 'CounterClockwise',
  },
  {
    key = 'R',
    mods = 'ALT',
    action = wezterm.action.RotatePanes 'Clockwise'
  },
}

return config
