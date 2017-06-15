#!/usr/bin/env bash

DIR="${BASH_SOURCE%/*}"                                                                 
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi                                               
. "$DIR/build.sh"

COMMAND=$(docker run -it --rm $USERNAME/$REPONAME:$TAG whoami)

if [[ $COMMAND =~ ^app[\n]? ]]
then
        echo "success"
        exit 0
else
        echo "failed"
        exit 1
fi
