function vim --wraps=vim --description 'vim with theme switching'
    if is_dark
        # command ignores aliases etc so we can alias vim to vim
        command vim $argv
    else
        # light theme peachpuff
        command vim -c "colo peachpuff" $argv
    end
end
