# Defined in /home/clash/.local/share/omf/themes/bobthefish/fish_greeting.fish @ line 1
function fish_greeting --description What\'s\ up,\ fish\?
    set_color $fish_color_autosuggestion
    uname -nmsr

    # TODO: `command -q -s` only works on fish 2.5+, so hold off on that for now
    # command -s uptime >/dev/null
    command -q -s uptime 
    and command uptime

    set_color normal
    
    # custom stuff now
    fortune | lolcat

end
