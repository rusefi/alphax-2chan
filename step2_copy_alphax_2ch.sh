#!/bin/bash

cd hellen-one
python2.7 ./bin/copy_from_Kicad.py "frames:alphax_" "../.." "../../gerber" "2ch" "a"

echo "Done!"
