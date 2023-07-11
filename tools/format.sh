#!/bin/bash

main() {
    input
    case $lang in
    py)
        format_black
        ;;
    md)
        format_prettier
        ;;
    json)
        format_prettier
        ;;
    *)
        echo We don\'t have format in $lang yet
        ;;
    esac
}

input() {
    read -p "Enter md, json, or py: " lang
    read -p "Enter the dir you want to format: " dir
}

format_black() {
    python -m black $dir
}

format_prettier() {
    npx prettier --write --tab-width 4 $dir
}

main
