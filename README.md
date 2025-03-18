# My dotfiles

This repo contains the dotfiles for my system.

## Requirements

I use [stow](https://www.gnu.org/software/stow/) to have the files in this repo and keep them functional.

Make sure [stow](https://www.gnu.org/software/stow/) is installed in you system.

## Installation

First, clone this repo in your home directory:

```sh
git clone git@github.com/Oldranda1414/dotfiles.git
cd dotfiles
```

Then use stow to create symlinks:

```sh
stow --adopt dotfiles
```

The --adopt option ensures that if a physical dotfile is present when stowing it is copied to the stow directory and replaced by a symlink.

This repo is based on the ideas expressed in this [video](https://youtu.be/y6XCebnB9gs?si=ApqFiTWsAKqE_-NI)

## Files

- `.zshrc` : This is the [zsh](https://zsh.sourceforge.io/) shell config file.

- `.oh-my-zsh/custom` : This contains the [oh-my-zsh](https://ohmyz.sh/) custom config files.
  - `alias.zsh` : Defines custom aliases
  - `misc.zsh` : Miscellaneous customizations
  - `path.zsh` : Defines custom additions to user path
  - `switch_project.zsh` : Defines utility function to switch to project directories

- `.gitconfig` : This is the [git](https://git-scm.com/) config file.

