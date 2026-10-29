#!/bin/bash

main () {
  move_files
}


move_files () {
  if [ ! -e $HOME/.config/niri ]; then
    cp -R $HOME/.config/CakeTop/niri $HOME/.config/
  else
    if [ ! -e $HOME/.config/backups ]; then
      mkdir $HOME/.config/backups
    fi
    mv --backup=numbered -T $HOME/.config/niri $HOME/.config/backups/niri
    cp -R $HOME/.config/CakeTop/niri $HOME/.config
  fi
  if [ ! -e $HOME/.config/quickshell ]; then
    cp -R $HOME/.config/CakeTop/quickshell $HOME/.config/
  else
    if [ ! -e $HOME/.config/backups ]; then
      mkdir $HOME/.config/backups
    fi
    mv --backup=numbered -T $HOME/.config/quickshell $HOME/.config/backups/niri
    cp -R $HOME/.config/CakeTop/quickshell $HOME/.config
  fi
}

main
