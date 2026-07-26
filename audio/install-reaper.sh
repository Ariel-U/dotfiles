#!/usr/bin/env bash
notify "REAPER"
ReaperFolder="$HOME/.local/share"
wget -O reaper.tar.xz https://www.reaper.fm/files/7.x/reaper720_linux_x86_64.tar.xz
mkdir ./reaper
tar -C ./reaper -xf reaper.tar.xz
./reaper/reaper_linux_x86_64/install-reaper.sh --install $ReaperFolder --integrate-desktop
rm -rf ./reaper
rm reaper.tar.xz
touch $ReaperFolder/reaper.ini

