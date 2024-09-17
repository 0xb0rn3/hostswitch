#!/bin/bash

# Function to print the current hostname
print_current_hostname() {
    echo "Current hostname: $(hostname)"
}

# Function to change the hostname
change_hostname() {
    read -p "Enter new hostname: " new_hostname

    # Validate hostname (basic validation, can be extended)
    if [[ ! "$new_hostname" =~ ^[a-zA-Z0-9_-]+$ ]]; then
        echo "Invalid hostname. It should only contain letters, numbers, hyphens, and underscores."
        exit 1
    fi

    echo "Changing hostname to $new_hostname..."

    # Update /etc/hostname
    echo "$new_hostname" > /etc/hostname

    # Update /etc/hosts
    sed -i "s/^\(127.0.1.1\s*\).*/\1$new_hostname/" /etc/hosts

    # Apply changes
    hostnamectl set-hostname "$new_hostname"

    echo "Hostname updated successfully."
}

# Main script execution
print_current_hostname
change_hostname
