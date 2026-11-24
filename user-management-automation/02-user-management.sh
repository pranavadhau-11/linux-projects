#!/bin/bash

# Linux User Management Automation

LOG="logs/user-management.log"

# Check root permission
if [[ $EUID -ne 0 ]]; then
    echo "Please run this script as root."
    exit 1
fi

while true
do
    echo ""
    echo "================================"
    echo "   USER MANAGEMENT AUTOMATION"
    echo "================================"
    echo "1. Create User"
    echo "2. Check User"
    echo "3. Create Group"
    echo "4. Add User to Group"
    echo "5. Display Users"
    echo "6. Delete User"
    echo "7. Exit"
    echo "================================"

    read -rp "Enter your choice: " choice

    case $choice in

        1)
            read -rp "Enter username: " username

            if id "$username" &>/dev/null; then
                echo "User already exists."
            else
                if useradd "$username"; then
                    echo "User $username created successfully."
                    echo "$(date): Created user $username" >> "$LOG"
                else
                    echo "User creation failed."
                fi
            fi
            ;;

        2)
            read -rp "Enter username: " username

            if id "$username" &>/dev/null; then
                echo "User exists."
                id "$username"
            else
                echo "User does not exist."
            fi
            ;;

        3)
            read -rp "Enter group name: " groupname

            if getent group "$groupname" >/dev/null; then
                echo "Group already exists."
            else
                if groupadd "$groupname"; then
                    echo "Group created successfully."
                    echo "$(date): Created group $groupname" >> "$LOG"
                else
                    echo "Group creation failed."
                fi
            fi
            ;;

        4)
            read -rp "Enter username: " username
            read -rp "Enter group name: " groupname

            if id "$username" &>/dev/null &&
               getent group "$groupname" >/dev/null; then

                if usermod -aG "$groupname" "$username"; then
                    echo "User added to group successfully."
                    echo "$(date): Added $username to $groupname" >> "$LOG"
                else
                    echo "Failed to add user to group."
                fi
            else
                echo "User or group does not exist."
            fi
            ;;

        5)
            echo "Linux users:"
            cut -d: -f1 /etc/passwd
            ;;

        6)
            read -rp "Enter username to delete: " username

            if id "$username" &>/dev/null; then
                if userdel "$username"; then
                    echo "User deleted successfully."
                    echo "$(date): Deleted user $username" >> "$LOG"
                else
                    echo "User deletion failed."
                fi
            else
                echo "User does not exist."
            fi
            ;;

        7)
            echo "Exiting User Management Automation."
            break
            ;;

        *)
            echo "Invalid choice. Try again."
            ;;
    esac
done
