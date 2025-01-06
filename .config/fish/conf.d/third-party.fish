fzf --fish | source
starship init fish | source

set orbstack_init ~/orbstack/shell/init.fish
test -f $orbstack_init; and source $orbstack_init

