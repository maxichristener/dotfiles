# maxi's ~/.zprofile
## This file loads only once, at the session start.
# It is mainly used for configuring environment variables and
# executing one-time commands, e.g: adding directories to PATH.

# Initial variables
R_VERS=4.3
#R_VERS="$(equery l dev-lang/R | sed 's/dev-lang\/R-\(.\..\).*/\1/')"
#R_VERS=$(pacman -Q r | sed 's/r \(.\)\.\(.\).*/\1\.\2/')
#RANGER_LOAD_DEFAULT_RC=false

### Default programs exports
export TERMINAL="st"
export TERMINAL_PROG="st"
export EDITOR="nvim"
export BROWSER="firefox"
export MOZ_ENABLE_WAYLAND=1
export OPENER="rifle"

export GTK_THEME=Adwaita:dark
#export XDG_CURRENT_DESKTOP=sway
export RTC_USE_PIPEWIRE=true

### Directory exports
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH=$PATH:~/.local/bin:/usr/local/texlive/2024/bin/x86_64-linux
export MANPATH=/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export XAUTHORITY="$XDG_CONFIG_HOME/x11/Xauthority"

export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"

export R_HOME_USER="$HOME/.config/R"
export R_PROFILE_USER="$HOME/.config/R/profile"
export R_HISTFILE="$HOME/.config/R/history"
export R_LIBS_USER="$HOME/.config/R/x86_64-pc-linux-gnu-library/$R_VERS"

export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var

#export GVIMINIT='let $MYGVIMRC="$XDG_CONFIG_HOME/vim/gvimrc" | source $MYGVIMRC'
#export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

export WGETRC="$XDG_CONFIG_HOME/wgetrc"
alias wget=wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"

export WORKON_HOME="$XDG_DATA_HOME/virtualenvs"
export W3M_DIR="$XDG_STATE_HOME/w3m"
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default # do mkdir -p "$XDG_DATA_HOME"/wineprefixes
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
# some customs
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export QT_QPA_PLATFORMTHEME="gtk2"        # have QT use gtk2 theme.
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

### Num lock
setleds -D +num
