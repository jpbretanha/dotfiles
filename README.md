# My Dotfiles config for `Nvim + Tmux + zsh + iTerm2`

![Screenshot](screenshots/screen.png)

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

### Theme: Agnoster

Install [PowerLine fonts](https://github.com/powerline/fonts) to render theme correctly.

### Font: Fira Code

1. Profiles tab
2. Text sub-tab
3. Change Font
4. Family: Fira Code 

### Cursor Guide

1. Profiles tab
2. Colors sub-tab
3. “Cursor Guide”
4. Set color (I prefer 255, 255, 255, 35)

### Tmux Tab Switching

1. Keys
2. New > “Ctrl Tab” > Send Hex Codes > 0x02 0x6E
3. New > “Ctrl Tab” > Send Hex Codes > 0x02 0x70
