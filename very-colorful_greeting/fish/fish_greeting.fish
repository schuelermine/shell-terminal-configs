function fish_greeting
    switch "$USER"
        case root toor
            echo "Hello."
        case '*'
            if command -v fortune > /dev/null
            and command -v cowsay > /dev/null
            and command -v lolcat > /dev/null
            and cowsay -l | grep "duck" > /dev/null
                fortune | cowsay -f duck | lolcat
            end
            echo ""
            echo "Welcome to fish."
    end
end
