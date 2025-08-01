# This file contains miscellaneous custom settings

# ssh automation {
  if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s` >/dev/null
    ssh-add -q
  fi

  trap 'test -n "$SSH_AUTH_SOCK" && eval `/usr/bin/ssh-agent -k`' 0
# }

# Vim keybindings in terminal config
# {
  # Set vim keybindings
  bindkey -v

  # Bind <ctrl>-f to accept autosuggest as with emacs bindkey
  bindkey -M viins '^F' autosuggest-accept

# Setting fzf theme to catpuccin-mocha (https://github.com/catppuccin/fzf) 
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"

# Setting bat theme
export BAT_THEME=Nord

# direnv setup hook
eval "$(direnv hook zsh)"

