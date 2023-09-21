# dotfiles
This is a repository that consist of my personal configurations for Neovim, Vim & Tmux.

## Installation
On your Linux/GNU OS, you can use git to download the repository or use curl to download each individual file of this repository.
```bash
git clone https://github.com/inalelub/dotfiles ~/.dotfiles
```
or

```bash
git clone https://<PAT>@github.com/inalelub/dotfiles ~/.dotfiles
```

## Usage
To actually use these dotfiles it is best to symlink each file / directory manually. You can follow this method to do so.

```bash
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
```
To unlink a file

```bash
unlink ~/.vimrc
```

## Nvim
For any Neovim config, I will be using [NcChad](https://nvchad.com) or any other seamless config in the future.

## Acknowledgement
This dotfiles repository was made possible by a [guide](https://dotfiles.github.io/) GitHub made.
