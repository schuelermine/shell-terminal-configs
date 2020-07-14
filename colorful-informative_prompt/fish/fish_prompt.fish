function fish_prompt --description 'Write out the prompt'
    set oldstatus $status

    set normalcolor (set_color normal)
    set bluecolor (set_color brblue)
    set redcolor (set_color brred)
    set whitecolor (set_color brwhite)
    set greencolor (set_color brgreen)

    set warningcolor $greencolor
    if test $oldstatus -gt 0
        set warningcolor $redcolor
    end

    switch "$USER"
        case root toor
            echo ┌[(date +%H:%M:%S)] "$redcolor""$USER"@(prompt_hostname) "$greencolor""$PWD" "$warningcolor"["$oldstatus"]"$normalcolor"
            echo ╘■" "

        case '*'
            echo ┌[(date +%H:%M:%S)] "$bluecolor""$USER"@(prompt_hostname) "$greencolor""$PWD" "$warningcolor"["$oldstatus"]"$normalcolor"
            echo └▶" "
    end
end
