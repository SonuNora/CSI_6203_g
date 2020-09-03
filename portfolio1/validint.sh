#!/bin/bash

#### STUDENT NAME: SONU SEBASTIAN CHENNATTU PARAMBIL ####
#### STUDENT NUMBER: 10443423 ####

while true; do                                                                                               #Loop checks if a Valid Input is entered by user
    read -p 'Enter a two digit numeric code (integer) that is no less than 20 and no greater than 40: ' int  #prompts the user to enter a integer value
    if [[ $int =~ [0-9]{2} ]]&& [[ $int -ge 20 ]] && [[ $int -le 40 ]]; then        #checks the condition if integer value entered and value entered is greater than or equal to 20 and less than or equal to 40
        echo "VALID INPUT"                                                          #Prints valid if condition met
        break                                                                       #Breaks out of loop
        
    elif [[ $int =~ ^[a-z]+$ ]] || [[ $int =~ ^[A-Z]+$ ]]; then                     #Checks if the value entered is string
        echo "String value entered - Please Try Again"                              #Print a message to try again if string entered
        
    elif [[ -z "$int" ]]; then                                                      #Checks if value entered is numm or no value
        echo "Null or no value entered - Please Try again"                          #Prints a message to try again if no value entered
    else 
        echo "Input entered by the user is REJECTED OR INVALID - Please Try Again"  #if any other value inserted print rejected or invalid message
        
    fi
done                                                                                 #close the loop

exit 0                                                                               #Exit the program
