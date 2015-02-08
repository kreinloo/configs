# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/kris/.zshrc'
#zstyle :compinstall filename '/home/kris/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

setopt appendhistory autocd beep extendedglob nomatch notify

autoload -U colors
colors
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

# colors
bl="%{$fg[black]%}"
g="%{$fg[green]%}"
b="%{$fg[blue]%}"
c="%{$fg[cyan]%}"
r="%{$fg[red]%}"
y="%{$fg[yellow]%}"
m="%{$fg[magenta]%}"
w="%{$fg[white]%}"
q="%{$reset_color%}"

# No 1
#prompt="$w┌╼[$g%n$w][$g%M$w][$b%~$w]
#└╼ %B$%b "

# No 2
#PROMPT="[$b%n$q][$m%m$q][$y%~$q] $ "

PROMPT="$b%n$y@$m%m $g→ $c%~
$r$ $q"

#RPROMPT="$bl black $g green $b blue $c cyan $r red $y yellow $m magenta $w white"

alias ls="ls -lh -G -p"
alias diff="git diff -u"

alias gs="git status"
alias gss="git status -sb"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdw="git diff --word-diff"
alias gc="git commit"
alias gl="git log --graph --all --decorate=full"
alias glo="git log --graph --all --decorate=full --oneline"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias pi="pacman -Qi"
alias prs="sudo pacman -Rcnssuv"
alias pr="sudo pacman -Rcnsuv"

# Linux
#bindkey ";5D" backward-word
#bindkey ";5C" forward-word

# OS X
bindkey "[D" backward-word
bindkey "[C" forward-word

setopt completealiases

# variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR="vim"
export TERM="screen-256color"

export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"

# add /usr/local/sbin to $PATH
export PATH="/usr/local/sbin:$PATH"

# add ruby gems to $PATH
export GEM_HOME="$HOME/.gem/ruby/2.0.0"
export PATH="$GEM_HOME/bin:$PATH"
