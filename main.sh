#!/bin/bash

echo "========================================="
echo "  Welcome to the Number Guessing Game!"
echo "========================================="
echo "I'm thinking of a number between 1 and 100"
echo "Type 'exit' at any time to quit"
echo ""

while true; do
    # Generate random number between 1 and 100
        target=$((RANDOM % 100 + 1))
            attempts=0
                
                    echo "New round! I've picked a number. Can you guess it?"
                        
                            while true; do
                                    read -p "Enter your guess: " guess
                                            
                                                    # Check if user wants to exit
                                                            if [[ "$guess" == "exit" ]]; then
                                                                        echo "Thanks for playing! Goodbye!"
                                                                                    exit 0
                                                                                            fi
                                                                                                    
                                                                                                            # Validate input is a number
                                                                                                                    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
                                                                                                                                echo "Please enter a valid number or 'exit' to quit."
                                                                                                                                            continue
                                                                                                                                                    fi
                                                                                                                                                            
                                                                                                                                                                    ((attempts++))
                                                                                                                                                                            
                                                                                                                                                                                    # Check the guess
                                                                                                                                                                                            if [[ $guess -eq $target ]]; then
                                                                                                                                                                                                        echo "🎉 Congratulations! You guessed it in $attempts attempts!"
                                                                                                                                                                                                                    echo ""
                                                                                                                                                                                                                                read -p "Play again? (yes/exit): " play_again
                                                                                                                                                                                                                                            if [[ "$play_again" == "exit" ]]; then
                                                                                                                                                                                                                                                            echo "Thanks for playing! Goodbye!"
                                                                                                                                                                                                                                                                            exit 0
                                                                                                                                                                                                                                                                                        fi
                                                                                                                                                                                                                                                                                                    break
                                                                                                                                                                                                                                                                                                            elif [[ $guess -lt $target ]]; then
                                                                                                                                                                                                                                                                                                                        echo "Too low! Try again."
                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                            echo "Too high! Try again."
                                                                                                                                                                                                                                                                                                                                                    fi
                                                                                                                                                                                                                                                                                                                                                        done
                                                                                                                                                                                                                                                                                                                                                        done