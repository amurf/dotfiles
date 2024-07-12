if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Enable vim keybindings
fish_vi_key_bindings
bind -M insert -m default jk backward-char force-repaint
bind -M insert \cf accept-autosuggestion

fzf --fish | source
starship init fish | source
