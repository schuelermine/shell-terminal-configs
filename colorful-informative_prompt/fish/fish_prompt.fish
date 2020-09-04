function fish_prompt --description 'Write out the prompt'
    set oldstatus $status
    
    set red (set_color red)
    set gray (set_color brblack)
    set user_color (set_color $fish_color_cwd)
    set root_color (set_color $fish_color_cwd_root)
    set normal_color (set_color normal)

    set warning_color $user_color
    if test $oldstatus -gt 0
        set warning_color $red
    end

    switch "$USER"
        case root toor
            echo ┌[(date +%H:%M:%S)] "$root_color""$USER" "$user_color""$PWD" "$warning_color"["$oldstatus"]"$gray" [fish]"$normal_color"
            echo ╘■" "

        case '*'
            echo ┌[(date +%H:%M:%S)] "$user_color""$USER" "$user_color""$PWD" "$warning_color"["$oldstatus"]"$gray" [fish]"$normal_color"
            echo └▶" "
    end
end
