#!/usr/bin/env bash

DIR="${BASH_SOURCE%/*}"                                                                 
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi                                               
. "$DIR/build.sh"

docker run -it --rm $USERNAME/$REPONAME:$TAG | grep "PHP 7.1.9 (cli)"
