local wezterm = require 'wezterm'

local config = {}
if wezterm.config_builder then
    config = wezterm.config_builder()
end

local act = wezterm.action
-- cool
-- local selected_scheme = 'iceberg-dark'
-- dark
-- local selected_scheme = 'NvimDark'
-- local selected_scheme = 'Gruvbox Dark'
-- local selected_scheme = 'iTerm2 Default'
-- local selected_scheme = 'zenwritten_dark'
local selected_scheme = 'Dracula (Official)';
local scheme = wezterm.get_builtin_color_schemes()[selected_scheme]

config.window_background_opacity = 0.95
config.window_close_confirmation = 'NeverPrompt'

config.color_scheme = selected_scheme
config.colors = {
    tab_bar = {
        active_tab = { bg_color = scheme.background, fg_color = scheme.foreground },
    }
}

config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 2000 }
config.keys = {
    -- escape leader
    { key = 'a', mods = 'LEADER|CTRL', action = act.SendString '\x01' },
    -- tmux: window
    { key = 'c', mods = 'LEADER', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = 'n', mods = 'LEADER', action = act.ActivateTabRelative(1) },
    { key = 'p', mods = 'LEADER', action = act.ActivateTabRelative(-1) },
    { key = '1', mods = 'LEADER', action = act.ActivateTab(0) },
    { key = '2', mods = 'LEADER', action = act.ActivateTab(1) },
    { key = '3', mods = 'LEADER', action = act.ActivateTab(2) },
    { key = '4', mods = 'LEADER', action = act.ActivateTab(3) },
    { key = '5', mods = 'LEADER', action = act.ActivateTab(4) },
    { key = '6', mods = 'LEADER', action = act.ActivateTab(5) },
    { key = '7', mods = 'LEADER', action = act.ActivateTab(6) },
    { key = '8', mods = 'LEADER', action = act.ActivateTab(7) },
    { key = '9', mods = 'LEADER', action = act.ActivateTab(8) },
    { key = '&', mods = 'LEADER|SHIFT', action = act.CloseCurrentTab { confirm = true } },
    -- tmux: pane
    { key = '%', mods = 'LEADER|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = "'", mods = 'LEADER|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = 'o', mods = 'LEADER', action = act.ActivatePaneDirection 'Next' },
    { key = 'z', mods = 'LEADER', action = act.TogglePaneZoomState },
    { key = '{', mods = 'LEADER|SHIFT', action = act.RotatePanes 'CounterClockwise' },
    { key = '}', mods = 'LEADER|SHIFT', action = act.RotatePanes 'Clockwise' },
    { key = 'q', mods = 'LEADER', action = act.PaneSelect },
    -- vim: pane
    { key = 'h', mods = 'LEADER', action = act.ActivatePaneDirection('Left') },
    { key = 'j', mods = 'LEADER', action = act.ActivatePaneDirection('Down') },
    { key = 'k', mods = 'LEADER', action = act.ActivatePaneDirection('Up') },
    { key = 'l', mods = 'LEADER', action = act.ActivatePaneDirection('Right') },
    { key = 'H', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize({ 'Left', 5 }) },
    { key = 'J', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize({ 'Down', 5 }) },
    { key = 'K', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize({ 'Up', 5 }) },
    { key = 'L', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize({ 'Right', 5 }) }
}

return config
