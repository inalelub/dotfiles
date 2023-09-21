# dotfiles
This is a repository that consist of my personal configurations for Neovim, Vim & Tmux.

## Installation
On your Linux/GNU OS, you can use git to download the repository or use curl to download each individual file within this repository.
```bash
git clone https://github.com/inalelub/dotfiles ~/.dotfiles
```

## Usage
To actually use these dotfiles it is best to symlink each file manually. You can follow this method to do so.
```bash
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
```
To unlink a files & directory 
```bash
unlink ~/.vimrc
unlink ~/.config/nvim
```

## Acknowledgement
This dotfiles repository was made possible by a [guide](https://dotfiles.github.io/) GitHub made.
