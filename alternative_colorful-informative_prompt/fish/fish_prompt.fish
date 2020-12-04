function fish_prompt --description 'Write out the prompt'
    set oldstatus $status
    
    set red (set_color brred)
    set gray (set_color brblack)
    set user_color (set_color $fish_color_cwd)
    set root_color (set_color $fish_color_cwd_root)
    set path_color (set_color $fish_color_user)
    set normal_color (set_color normal)

    set warning_color $path_color
    if test $oldstatus -gt 0
        set warning_color $red
    end

    switch "$USER"
        case root toor
            echo ┌[(date +%H:%M:%S)] "$gray"[<><] "$root_color""$USER" "$path_color""$PWD" "$warning_color"["$oldstatus"]"$normal_color"
            echo ╘#" "

        case '*'
            echo ┌[(date +%H:%M:%S)] "$gray"[<><] "$user_color""$USER" "$path_color""$PWD" "$warning_color"["$oldstatus"]"$normal_color"
            echo └\$" "
    end
end
