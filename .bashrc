###
#
# ~/.bashrc
#
### If not running interactively, don't do anything
[[ $- != *i* ]] && return


### MISC
## ranger
RANGER_LOAD_DEFAULT_RC=false
## completion in sudo
complete -cf sudo
## gpg
export GPG_TTY=$(tty)


### ALIAS

alias tem="emacsclient -nw"
alias em="emacsclient -nc"
#alias vim="nvim"
alias ls="ls --color=auto"
alias vdir="vdir -h --color=auto"
alias grep="grep --color=auto"
alias clip="xclip -selection clipboard"
alias u="cd /run/media/maxi/"
alias ra="ranger"
alias ri="rifle"
alias jl="julia"
alias gpglist="gpg --list-keys --keyid-format=long"


### COLORING

## gcc colors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

## This PS1 sets the color of the username (\u), hostname (\h), and current working directory (\w).
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
#PS1="\u@\h:\w\$" # uncolored version


## About the colors
# \[\033[01;32m\]: This sets the color to bright green (01;32m). The 01 is for bold/bright, and 32 is for green.
# \[\033[00m\]: This resets the color to the default terminal color (00m).
# \[\033[01;34m\]: This sets the color to bright blue (01;34m). The 01 is for bold/bright, and 34 is for blue.
# \[\033[00m\]: This resets the color to the default terminal color (00m).
