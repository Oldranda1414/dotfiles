# This file contains miscellaneous custom settings

# ssh automation {
  if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
  fi

  trap 'test -n "$SSH_AUTH_SOCK" && eval `/usr/bin/ssh-agent -k`' 0
# }

# Added to use emacs keybindings in terminal
bindkey -e
