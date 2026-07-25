# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# otherwhise start tmux
#if [ -f /usr/bin/tmux ] ; then [[ -z "$TMUX" ]] && exec tmux ; fi


# Prompt
if [[ ${EUID} == "0" ]] ; then 
    PS1='\e[1;31m[\u@\h] \e[1;37m[\w]\e[0m' # Rojo si el usuario es root
    PS1+='\n\$ '
else                           
    PS1='\e[1;34m[\u@\h] \e[1;37m[\w]\e[0m' # Azul si el usuario no es root
    PS1+='\n\$ '
fi

# Cargar aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi


# History
HISTSIZE=1000
HISTFILESIZE=2000
HISTFILE=~/.bash_history

# corregir errores simples al usar cd
shopt -s cdspell

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export PATH="$PATH:/home/ariel/.local/bin"  
