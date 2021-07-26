function cat --wraps=bat --description 'alias cat bat'
    if is_dark
        bat --style=plain $argv
    else
        bat --style=plain --theme=ansi $argv
    end
end
