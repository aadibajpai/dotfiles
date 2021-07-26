function is_dark --description 'returns 0 if macOS theme dark else 1'
    
    # the command returns Dark if dark else throws error
    set dark (defaults read -g AppleInterfaceStyle 2> /dev/null)  
    test $status = 0; and test $dark = Dark  # test automatically sets exit status
end
