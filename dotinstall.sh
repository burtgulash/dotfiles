#!/bin/bash

while [[ $# > 0 ]]; do
    filename=$(basename "$1")
    target="$HOME/$filename"

    # replace by default
    if [ -e "$target" ]; then
        (set -x; rm "$target")
    fi

    # print command using set -x in subshell
    (set -x; ln -s "$HOME/dotfiles/$filename" "$target")
    shift
done
