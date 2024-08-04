### maxi's ~/.zshrc
## This file loads on every new terminal session.
## It contains specific configurations, 
## like aliases and zsh configs.
#
HISTFILE=~/.local/share/histfile
HISTSIZE=1000
SAVEHIST=1000

### ZSH PARTICULAR CONFS ----
# emacs mode
bindkey -e
setopt interactive_comments # Allows you to use # and insert a comment after a command
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.


[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
autoload -Uz compinit promptinit # -U ensures that functions are loaded only once. -z loads in current shell, not subshell.
zstyle :compinstall filename '/home/maxi/.zshrc'
zstyle ':completion:*' menu select cache-path "$XDG_CACHE_HOME"/zsh/zcompcache completer _complete _ignored
zmodload zsh/complist
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)		# for completion in hidden files.
promptinit ; prompt gentoo

autoload -U colors && colors	# Loads colors
PS1='%F{green}%B%n@%m%b%f:%F{blue}%B%~%b%f$ '


### MISC ----

## gpg
export GPG_TTY=$(tty)
#alias gpg= "gpg --homedir "$XDG_DATA_HOME"/gnupg/"
## gcc colors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

### ALIAS
#alias lf="lfub"
alias ff="fastfetch"
alias sw="dbus-launch --exit-with-session sway"
alias sx="startx"
alias vim="nvim"
alias rm="rm -i"
alias ls="ls --color -X"
alias vdir="vdir -h --color=auto"
alias grep="grep --color=auto"
alias lsd="lsd -X"
alias tre="lsd --tree"
alias clip="xclip -selection clipboard"
#alias ra="ranger"
#alias ri="rifle"
#alias jl="julia"
alias R="R --quiet --no-restore-data --no-save"
alias gpglist="gpg --list-keys --keyid-format=long"

## THIS SHOULD GO AT EOF: fish-like syntax highlight. You need the arch package to be installed.
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
