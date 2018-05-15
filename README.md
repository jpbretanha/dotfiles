# My Dotfiles config for `Nvim + Tmux + zsh + iTerm2`

### Install Dependencies

Run `bash init.sh`

### Install plugins

Run `:PlugInstall` inside `nvim`

### Install Tmux plugins

Run `tmux source ~/.tmux.conf`

## Config iTerm

Open iTerm’s preferences with “⌘,” then tick the following settings:

1. “Load preferences from a custom folder or URL”
2. Choose ~/dotfiles
3. “Save changes to folder when iTerm2 quits”

### Theme: Dracula

1. Profiles tab
2. Colors sub-tab
3. Color Presets…
4. Import…
5. ~/dotfiles/iterm-dracula/Dracula.itermcolors

### Font: Fira Code

1. Profiles tab
2. Text sub-tab
3. Change Font
4. Family: Fira Code (I enjoy size 18)

### Cursor Guide

1. Profiles tab
2. Colors sub-tab
3. “Cursor Guide”
4. Set color (I prefer 255, 255, 255, 35)

### Tmux Tab Switching

1. Keys
2. New > “Ctrl Tab” > Send Hex Codes > 0x02 0x6E
3. New > “Ctrl Tab” > Send Hex Codes > 0x02 0x70