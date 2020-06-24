function commit 

    set message $argv[1]

    if test -z "$argv[1]"
        set message "wip"
    end

    git add . && git commit -m "$message"
end