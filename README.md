# dotfiles
This is a repository that consist of my personal configurations for Neovim, Vim & Tmux.

## Installation
On your Unix OS, you can use git to download / install the repository & use curl to download each individual file within this repository. When using git, it's recommended you use a Personal Access Token to clone the repository.
```bash
git clone https://github.com/blkniga/dotfiles ~/.dotfiles
```

## Usage
To actually use these dotfiles use can either copy them & place them in your user directory / root directory which is located at `~/`. It is best to symlink each file & we will do it manually. You can follow this method to do so.
```bash
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
```

## Acknowledgement
This dotfiles repository was made possible by a [guide](https://dotfiles.github.io/) GitHub made.
