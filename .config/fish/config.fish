if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish

fish_add_path $HOME/.antigravity/antigravity/bin
fish_add_path $HOME/.local/bin

set -gx PNPM_HOME "/Users/ash/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
