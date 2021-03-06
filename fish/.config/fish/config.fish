set -g theme_date_timezone Asia/Kolkata
set -g theme_date_format "+%a %b %d %I:%M:%S %p %Y"
# enable passphrase prompt for gpg
set -gx GPG_TTY (tty)

# was slowing prompt bc checking path which is chonky
# also stopped adding windows path to linux tho
set -g theme_display_ruby no

# ssh-agent stuff
if test -z (pgrep ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  ssh-add
end
