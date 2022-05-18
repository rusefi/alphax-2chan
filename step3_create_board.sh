#!/bin/bash

if [ ! -f hellen-one/git_scripts ]; then
    echo "No submodules?"
    git submodule update --init --recursive
fi

cd hellen-one
sh bin/create_board_with_prefix.sh "alphax_" ".." "2ch" "c" "bom_replace_alphax-2ch-c.csv " "0,4"
