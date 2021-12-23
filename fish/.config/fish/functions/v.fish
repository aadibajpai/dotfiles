function v --wraps=vim --description 'vim with theme switching'
    if is_dark
        vim $argv
    else
        # light theme peachpuff
        vim -c "colo peachpuff" $argv
    end
end
