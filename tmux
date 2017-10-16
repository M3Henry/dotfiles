# use zsh
set-option -g default-shell /bin/zsh

# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# split panes using | and \
unbind '"'
unbind %
bind c new-window -c '~'
bind | split-window -v -c ''
bind \ split-window -h -c ''

# switch panes using Alt-arrow without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# switch windows using prefix arrow
bind Right next-window
bind Left previous-window
unbind n
unbind l

# switch to windows improved
bind ` select-window -t :0
bind 0 select-window -t :10

# reload config file (change file location to your the tmux.conf you want to use)
bind r source-file ~/.tmux.conf

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on
# Enable mouse mode (tmux 2.0 and below)
#set -g mode-mouse on
#set -g mouse-resize-pane on
#set -g mouse-select-pane on
#set -g mouse-select-window on
