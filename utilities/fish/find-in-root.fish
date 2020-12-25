function find-in-root --description "Finds files in the root, excluding mounted filesystems and home directories"
    for dir in (ls / -1)
        if test $dir != "mnt"; and test $dir != "media"; and test $dir != "home"
            find "/$dir" 2>/dev/null | grep $argv
        end
    end
end
