#!/usr/bin/env bash

# edelweiss colors for Tmux

set -g status 'on'
set -g status-style 'fg=#333333,bg=#ffffff'
set -g status-left ' '
set -g status-right '[%Y-%m-%d %H:%M:%S#[default]] '

setw -g window-status-current-format "#[bold][#I#{?window_name, #W,}]"
setw -g window-status-format "#[unbold][#I#{?window_name, #W,}]"
