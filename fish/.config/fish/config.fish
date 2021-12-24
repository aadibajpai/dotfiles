# I have been moving tz a lot recently
# set -g theme_date_timezone America/Chicago
set -g theme_date_format "+%a %b %d %I:%M:%S %p %Y"
# enable passphrase prompt for gpg
set -gx GPG_TTY (tty)

# was slowing prompt bc checking path which is chonky
# also stopped adding windows path to linux tho
# am on i3/manjaro now tho
# set -g theme_display_ruby no

# ssh-agent stuff
# -n checks for newest process when there is ssh-add too
if test -z (pgrep -n ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  ssh-add
end

# in manjaro it seems ssh-agent autostarted so adding this, commenting for macOS
# if test (ssh-add -l) = "The agent has no identities."
#  ssh-add
# end

# nix things
# any-nix-shell fish --info-right | source
