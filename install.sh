#!/bin/bash

main () {
  move_files
}


move_files () {
  if [ ! -e $HOME/.config/niri ]; then
    cp -R ./niri $HOME/.config/
  else
    mv --backup=numbered -T $HOME/.config/niri $HOME/.config/backups
    cp -R ./niri $HOME/.config
  fi
  if [ ! -e $HOME/.config/quickshell ]; then
    cp -R ./quickshell $HOME/.config/
  else
    mv --backup=numbered -T $HOME/.config/quickshell $HOME/.config/backups
    cp -R ./quickshell $HOME/.config
  fi
}

main
