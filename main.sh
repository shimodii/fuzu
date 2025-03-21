#!/bin/bash

HOME_DIRECTORY=~/.config/fuzu
ADD_ITEM="+ new task"
ADD_ITEM_DESC="Select if you want to add some tasks in your todo list :D"
#CLOSE="x close"
PID=$$

check_home_directory(){
    if [[ -d $HOME_DIRECTORY ]]; then
        echo ""
    else
        mkdir -p $HOME_DIRECTORY
    fi
}
adding_essential_items(){
    touch "$ADD_ITEM" $HOME_DIRECTORY
    echo "$ADD_ITEM_DESC" > "$ADD_ITEM"
    #touch "$CLOSE" $HOME_DIRECTORY
}

new_task(){
    touch "$1"
    echo "$2" > "$1"
}

# main
check_home_directory
cd $HOME_DIRECTORY
adding_essential_items

while true; do
    user_choice=$(fzf -e --preview 'bat --color=always {}')
    if [[ $? == 0 ]]; then
        if [[ $user_choice == "$ADD_ITEM" ]]; then
            clear
            printf "Task title: "
            read title
            printf "Task description: "
            read desc
            new_task "$title" "$desc"
        else
            if [[ -f $user_choice ]]; then
                rm $HOME_DIRECTORY/"$user_choice"
            fi
        fi
    else
        clear
        exit
    fi
done
