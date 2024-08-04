fzf --fish | source
starship init fish | source
source ~/.orbstack/shell/init.fish

set orbstack_init ~/orbstack/shell/init.fish

test -f $orbstack_init; and source $orbstack_init

