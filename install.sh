#!/bin/bash

main() {
  move_files
}


move_files() {
  if [ ! -e $HOME/.config/niri ]; then
    cp ./niri $HOME/.config/niri
  else
    mv $HOME/.config/niri $HOME/.config/niri.backup
    cp ./niri $HOME/.config
  fi
  if [ ! -e $HOME/.config/quickshell ]; then
    cp ./quickshell $HOME/.config/quickshell
  else
    mv $HOME/.config/quickshell $HOME/.config/quickshell.backup
    cp ./quickshell $HOME/.config
  fi
}
