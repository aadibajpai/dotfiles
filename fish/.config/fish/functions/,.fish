function , -d 'shorthand for running nix packages w/o install' -a PKG
    nix run nixpkgs#$PKG -- $argv[2..-1]  # remaining args
end
