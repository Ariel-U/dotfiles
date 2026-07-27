#!/usr/bin/env bash

# EXPERIMENTAL
# Stops on fail
set -euo pipefail

# Make backups
mv -v ~/.config ~/.config.bak
mv -v ~/.local ~/.local.bak
mkdir -p ~/.config
mkdir -p ~/.config/REAPER
mkdir -p ~/.local/share/applications
mkdir -p ~/.local/bin
for file in $HOME/.{bashrc,aliases,zshrc,vimrc,tmux.conf,nanorc,p10k.zsh}
do
    mv -vi $file $file.bak
done

# Use stow to link the dotfiles
stow config shell

# Restore backups that are not in .dotfiles folder
rsync -aAXv --ignore-existing --progress ~/.config.bak/ ~/.config/
rsync -aAXv --ignore-existing --progress ~/.local.bak/ ~/.local/

# Remove backups
saltar=false
echo "¿Borrar backups .local y .config? (s/N)"
read -r respuesta
if [[ "$respuesta" != "s" ]]; then
	echo "manteniendo backups."
    saltar=true
fi

if [[ "$saltar" != true ]]; then
	rm -rf "$HOME/.config.bak"
	rm -rf "$HOME/.local.bak"
	echo "backups borrados"
fi

echo -e "done"
return 0
