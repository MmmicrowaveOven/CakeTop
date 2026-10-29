#!/bin/bash
if [ -e $HOME/.config/CakeTop ]; then
  rm -rf $HOME/.config/CakeTop
fi
git clone https://github.com/MmmicrowaveOven/CakeTop.git $HOME/.config/CakeTop
chmod +x $HOME/.config/CakeTop/install.sh
$HOME/.config/CakeTop/install.sh
rm -rf $HOME/.config/CakeTop
quickshell &
