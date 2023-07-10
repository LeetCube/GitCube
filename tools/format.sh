#!/bin/bash

main() {
    input
    format_prettier
}

input() {
    read -p "Enter the dir you want to format, or all: " dir
}

format_prettier() {
    if [ $dir = "all" ]; then
        npx prettier --write --tab-width 4 .
    else
        npx prettier --write --tab-width 4 $dir
    fi
}

main
