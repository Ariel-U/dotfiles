#!/usr/bin/env bash
set -euo pipefail
# create group 'audio' and add user
grupo="audio"

if grep -q "^$grupo:" /etc/group; then
    echo "El grupo $grupo ya existe."
else
    echo "El grupo $grupo no existe. Creándolo..."
    sudo groupadd $grupo
    echo "Grupo $grupo creado."
fi

sudo usermod -a -G $grupo $USER

# memory limit fix
sudo cp /etc/security/limits.conf /etc/security/limits.conf.bak
echo '@audio - rtprio 90
@audio - memlock unlimited' | sudo tee -a /etc/security/limits.conf

# Aumentar el número de archivos que se pueden monitorear
sudo cp /etc/sysctl.conf /etc/sysctl.conf.bak
echo 'fs.inotify.max_user_watches=600000' | sudo tee -a /etc/sysctl.conf

# modify pipewire latency
#cp /etc/pipewire/pipewire.conf /home/$USER/.config/pipewire/pipewire.conf

#echo 'default.clock.max-quantum   = 256
#default.clock.min-quantum   = 128
#default.clock.rate          = 48000' | tee -a /home/$USER/.config/pipewire/pipewire.conf

echo 'done'
