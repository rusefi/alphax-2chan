#!/bin/bash

if [ ! -f hellen-one/git_scripts ]; then
    echo "No submodules?"
    git submodule update --init --recursive
fi


# This command is me trying to be fancy
# '--entrypoint python3' skips the normal container CMD and starts python3 instead
#    using the parameters specified after 'hellen-one'
#
# -v "$(pwd)":/${PWD##*/} simply mounts the current working directory
#    at /<the name of the current directory>
#
# '/${PWD##*/}' is doing the $pwd basename thing again

docker run --rm -it --entrypoint python3 -v "$(pwd)":/${PWD##*/} hellen-one ./bin/copy_from_Kicad.py "frames:alphax_" "/${PWD##*/}" "../../gerber" "2ch" "c"

echo "Done!"
