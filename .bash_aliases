#	Directory Movement
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Directory List
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

#	Git Commands
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gs="git status"
alias gr="git remote"
alias gl="git log"

# NPM
alias ni="npm install"
alias nu="npm uninstall"
alias nri="rm -rf node_modules && npm install"

#	Directory / File Changes
alias mv="mv -i"
alias cp="cp -i"
alias rr="rm -rf"

# Misc
alias reload="source ~/.bashrc"

# Apps
alias fp="fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"
alias vim="nvim"
alias cat="batcat"
