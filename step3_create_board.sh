#!/bin/bash

if [ ! -f hellen-one/git_scripts ]; then
    echo "No submodules?"
    git submodule update --init --recursive
fi

# start virtual framebuffer (should be already installed)
export DISPLAY=:99.0
sudo Xvfb :99 -screen 0 640x480x24 &

cd hellen-one
sh bin/create_board_with_prefix.sh "alphax_" ".." "2ch" "c" "bom_replace_alphax-2ch-c.csv " "0,4"
