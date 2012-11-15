#!/bin/bash

NAMES=$(echo $PATH | xargs -d: -I{} find {} -type f -executable -maxdepth 1 -nowarn | xargs --max-args=1 basename )

for NAME in $NAMES
do
alias le_$NAME="$NAME"
done
