#!/usr/bin/env bash

## EXPERIMENTAL

## make backups
mv -v ~/.config ~/.config.bak
mv -v ~/.local ~/.local.bak
mkdir -p ~/.config
mkdir -p ~/.local/share
mkdir -p ~/.local/bin

## use stow to link the dotfiles
stow --adopt config

## restore backups that are not in .dotfiles folder
rsync -aAXv --ignore-existing --progress ~/.config.bak/ ~/.config/

## remove backups
#rm -rf ~/.config.bak
