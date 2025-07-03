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
  - `direnv` : Contains [direnv](https://direnv.net/) config file.
    - `direnv.toml` : [direnv](https://direnv.net/) config file.
- `.tmux.conf` : Contains [tmux](https://github.com/tmux/tmux) configuration.
- `.tmux` : Contains [tmux](https://github.com/tmux/tmux) programs.
  - `plugins` : Contains [tmux](https://github.com/tmux/tmux) programs.
    - `tmp` : Contains [tmux](https://github.com/tmux/tmux) plugins. The only preinstalled one is tmux package manager. The rest are defined in `.tmux.conf`

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

