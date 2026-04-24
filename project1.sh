#!/bin/bash

while true
do
    clear   
    echo "1. CPU Usage"
    echo "2. Memory Usage"
    echo "3. Disk Usage"
    echo "4. Running Processes"
    echo "5. Exit"
    

    read -p "Enter choice: " ch

    case $ch in
        1)
            top -bn1 | grep "Cpu(s)"
            read -p "Press enter to continue"
            ;;

        2)
            free -h
            read -p "Press enter to continue"
            ;;

        3)
            df -h
            read -p "Press enter to continue"
            ;;

        4)
            ps -aux | head -10
            read -p "Press enter to continue"
            ;;

        5)
            break
            ;;

        *)
            echo "Invalid choice"
            ;;
    esac
done
