function vf --description "Fuzzy find and open file in vim"
    set -l pattern $argv[1]

    if test -z "$pattern"
        echo "Usage: vf <filename>"
        return 1
    end

    set -l files (fd --type f --ignore-case "$pattern" 2>/dev/null)

    switch (count $files)
        case 0
            echo "No files found matching: $pattern"
            return 1
        case 1
            nvim $files[1]
        case '*'
            set -l selected (printf '%s\n' $files | fzf --height=40% --reverse)
            if test -n "$selected"
                nvim $selected
            end
    end
end
