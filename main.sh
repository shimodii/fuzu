#!/bin/bash

HOME_DIRECTORY=~/.config/fuzu
ADD_ITEM="new task"

check_home_directory(){
    if [[ -d $HOME_DIRECTORY ]]; then
        echo ""
    else
        mkdir -p $HOME_DIRECTORY
    fi
}
adding_essential_items(){
    touch $ADD_ITEM $HOME_DIRECTORY
}

# main
check_home_directory
adding_essential_items