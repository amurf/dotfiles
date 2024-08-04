# enable vim keybindings
fish_vi_key_bindings

# esc = jk
bind -M insert -m default jk backward-char force-repaint

# ctrl+f = accept autocomplete/suggest
bind -M insert \cf accept-autosuggestion
