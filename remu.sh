#!/bin/bash

# File containing options
options_file="/home/me/bin/emulator/emulators_name.txt"

# Function to read options from file into an array
read_options_from_file() {
    mapfile -t options < "$options_file"
}

# Function to print the menu
print_menu() {
    clear
    for i in "${!options[@]}"; do
        if [[ $i -eq $current_selection ]]; then
            echo -e "> \e[7m${options[i]}\e[0m"  # Highlight the selected option
        else
            echo "  ${options[i]}"
        fi
    done
}

# Function to handle key presses
handle_key() {
    read -rsn1 input
    if [[ $input == $'\x1b' ]]; then
        read -rsn2 -t 0.1 input
        case $input in
            '[A') # Up arrow
                ((current_selection--))
                if [[ $current_selection -lt 0 ]]; then
                    current_selection=$((${#options[@]} - 1))
                fi
                ;;
            '[B') # Down arrow
                ((current_selection++))
                if [[ $current_selection -ge ${#options[@]} ]]; then
                    current_selection=0
                fi
                ;;
        esac
    elif [[ $input == "" ]]; then
        # Enter key
        return 1
    fi
    return 0
}

# Function to execute the selected option
execute_selection() {
    echo "lanching emulator: ${options[$current_selection]}"
    emulator=${options[$current_selection]}
    echo "running $emulator emulator"
       cd ~/android_sdk/emulator/
       ./emulator -avd $emulator &
}

# Main script function
main() {
    read_options_from_file
    current_selection=0
    while true; do
        print_menu
        handle_key
        if [[ $? -eq 1 ]]; then
            execute_selection
            break
        fi
    done
}

# Run the main function
main
