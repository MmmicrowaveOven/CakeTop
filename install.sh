#!/bin/bash

main () {
  move_files
}


move_files () {
  if [ ! -e $HOME/.config/niri ]; then
    cp -r ./niri $HOME/.config/niri
  else
    mv $HOME/.config/niri $HOME/.config/niri.backup
    cp -r ./niri $HOME/.config
  fi
  if [ ! -e $HOME/.config/quickshell ]; then
    cp -r ./quickshell $HOME/.config/quickshell
  else
    mv $HOME/.config/quickshell $HOME/.config/quickshell.backup
    cp -r ./quickshell $HOME/.config
  fi
}

main
