# This file contains miscellaneous custom settings

# ssh automation {
  if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
  fi

  trap 'test -n "$SSH_AUTH_SOCK" && eval `/usr/bin/ssh-agent -k`' 0
# }

# Vim keybindings in terminal config
# {
  # Set vim keybindings
  bindkey -v

  # Bind <ctrl>-f to accept autosuggest as with emacs bindkey
  bindkey -M viins '^F' autosuggest-accept

  # Start in vim normal mode by default
  # Commented out couse I'm still deciding if I prefer insert or normal on default
  # autoload -Uz edit-command-line
  # zle-line-init() { zle vi-cmd-mode; }

  # Thin cursor when in insert mode
  # THIS SADLY DOES NOT WORK IN MY CURRENT TERMINAL
  # function zle-keymap-select {
  #   if [[ $KEYMAP == vicmd ]]; then
  #     echo -ne '\e[2 q'  # Fat block for NORMAL
  #   elif [[ $KEYMAP == viins ]]; then
  #     echo -ne '\e[6 q'  # Thin bar for INSERT
  #   fi
  #   zle reset-prompt
  # }

  # Hook functions
  # zle -N zle-line-init
  # zle -N zle-keymap-select
# }

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

