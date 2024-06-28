# maxi's ~/.zprofile
## DEFINICIONES
### ~/.zprofile:
## Este archivo se carga solo una vez cuando se
# inicia la sesión, es decir, cuando un usuario inicia
# sesión en el sistema. Se utiliza principalmente para configurar
# variables de entorno y ejecutar comandos que deben realizarse
# una sola vez al iniciar la sesión, como añadir directorios al
# PATH.

### ~/.zshrc:
## Este archivo se carga cada vez que se inicia una nueva
# instancia de zsh en modo interactivo. Contiene
# configuraciones específicas del usuario, como alias de comandos,
# variables de entorno y configuraciones de shell. Se usa
# comúnmente para personalizar el entorno de la línea de comandos
# para un usuario específico.

### Cargar .bashrc desde ~/.config
# El comando chequea si existe allí un archivo y lo toma como configuración
#[[ -f ~/.bashrc ]] && source ~/.bashrc

# some variables
RANGER_LOAD_DEFAULT_RC=false
R_VERS=$(pacman -Q r | sed 's/r \(.\)\.\(.\).*/\1\.\2/')

### Default programs exports
export EDITOR="nvim"
export TERMINAL="st"
export TERMINAL_PROG="st"
export BROWSER="firefox"
export OPENER="rifle"

### Directory exports
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH=$PATH:~/.local/bin
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
