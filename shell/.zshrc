# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit load zshzoo/cd-ls   



# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
#zinit snippet OMZP::archlinux
#zinit snippet OMZP::aws
#zinit snippet OMZP::kubectl
#zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e
bindkey "\e[3~" delete-char # del, home and end
bindkey "\e[H"  beginning-of-line
bindkey "\e[F"  end-of-line
bindkey "\e[1;5D" backward-word # ctrl-left and ctrl-right
bindkey "\e[1;5C" forward-word
bindkey "\e[3;5~" kill-word # ctrl-bs and ctrl-del
bindkey "^H" backward-kill-word
bindkey '^ ' autosuggest-accept # other


# History
zinit ice lucid wait'0'
zinit light joshskidmore/zsh-fzf-history-search
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
alias history="history 0"

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q
# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
zstyle ':completion:*' insert-tab true
setopt auto_cd

# Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# establecer el editor de la terminal
if [ -f /bin/micro ]; then
    export EDITOR=/bin/micro
elif [ -f /bin/nano ]; then
    export EDITOR=/bin/nano
elif [ -f /bin/vim ]; then
    export EDITOR=/bin/vim
fi


export PATH="/home/$USER/.local/bin:$PATH"






eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
