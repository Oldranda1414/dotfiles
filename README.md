# My dotfiles

This repo contains the dotfiles for my system.

This repo is based on the ideas expressed in this [video](https://youtu.be/y6XCebnB9gs?si=ApqFiTWsAKqE_-NI)

## Requirements

I use [stow](https://www.gnu.org/software/stow/) to have the files in this repo and keep them functional.

## Files

- `.zshrc` : This is the [zsh](https://zsh.sourceforge.io/) shell config file.
- `.oh-my-zsh/custom` : Contains the [oh-my-zsh](https://ohmyz.sh/) custom config files.
  - `alias.zsh` : Defines custom aliases.
  - `misc.zsh` : Miscellaneous customizations.
  - `path.zsh` : Defines custom additions to user path.
  - `switch_project.zsh` : Defines utility function to switch to project directories.
- `.gitconfig` : [git](https://git-scm.com/) config file.
- `.config` : Contains user programs config files.
  - `nvim`: Contains [neovim](https://neovim.io/) configuration files, based on [LazyVim](https://www.lazyvim.org/).
    - `lua/plugins`: Contains LazyVim customization files.
      - `colorscheme.lua`: Contains custom colorschemes.
  - `direnv` : Contains [direnv](https://direnv.net/) config file.
    - `direnv.toml` : [direnv](https://direnv.net/) config file.
  - `i3` : Contains [i3](https://i3wm.org/) config.
    - `config` : [i3](https://i3wm.org/) config.
  - `i3status` : Contains [i3status](https://github.com/i3/i3status) config.
    - `config` : [i3status](https://github.com/i3/i3status) config.
  - `picom` : Contains [picom](https://github.com/yshui/picom) config.
    - `.picom.conf` : [picom](https://github.com/yshui/picom) config.
- `.tmux.conf` : Contains [tmux](https://github.com/tmux/tmux) configuration.
- `.tmux` : Contains [tmux](https://github.com/tmux/tmux) programs.
  - `plugins` : Contains [tmux](https://github.com/tmux/tmux) plugins.
    - `tmp` : Contains [tmux](https://github.com/tmux/tmux) plugins. The only preinstalled one is tmux plugin manager. The rest are defined in `.tmux.conf`

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

