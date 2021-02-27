# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

#:-----------------------------------:
# agregar plugins
plugins=(zsh-autosuggestions zsh-completitions)

#:-----------------------------------:
# aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

#:-----------------------------------:
## scripts
SCRIPTS="/home/ariel/Documentos/Scripts"
alias xev="$SCRIPTS/xev.sh"
alias backup="$SCRIPTS/backup.sh"

###### cosas que fui agregando #######

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zhistory

# Enable history appending instead of overwriting.  #139609
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
#bindkey '^ ' autosuggest-accept


