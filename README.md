# My dotfiles

This repo contains the dotfiles for my system

## Requirements

I use stow to have the files in this repo and keep them functional

Make sure it is installe in you system

```
stow --adopt .
```

The --adopt option ensures that if a physical dotfile is present when stowing it is copied to the stow directory and substituted by a symlink

## Installation

First, clone this repo in your home directory

```
$ git clone git@github.com/Oldranda1414/dotfiles.git
$ cd dotfiles
```

Then use GNU stow to create symlinks

```
$ stow --adopt .
```

This repo is based on the ideas expressed in this [video](https://youtu.be/y6XCebnB9gs?si=ApqFiTWsAKqE_-NI)
