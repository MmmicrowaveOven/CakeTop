#!/bin/bash

main () {
  move_files
}


move_files () {
  if [ ! -e $HOME/.config/niri ]; then
    cp -r ./niri $HOME/.config/niri
  else
    mv --backup=numbered $HOME/.config/niri $HOME/.config/backups
    cp -r ./niri $HOME/.config
  fi
  if [ ! -e $HOME/.config/quickshell ]; then
    cp -r ./quickshell $HOME/.config/quickshell
  else
    mv --backup=numbered $HOME/.config/quickshell $HOME/.config/backups
    cp -r ./quickshell $HOME/.config
  fi
}

main
