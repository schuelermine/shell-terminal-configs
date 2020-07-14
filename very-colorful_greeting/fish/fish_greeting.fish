function fish_greeting
    if command -v fortune > /dev/null
    and command -v cowsay > /dev/null
    and command -v lolcat > /dev/null
    and cowsay -l | grep "duck" > /dev/null
        fortune | cowsay -f duck | lolcat
        echo ""
        echo "Welcome to fish."
    else
        echo ""
        echo "Hello."
    end
end
