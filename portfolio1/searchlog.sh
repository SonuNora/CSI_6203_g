#!/bin/bash

#### STUDENT NAME: SONU SEBASTIAN CHENNATTU PARAMBIL ####
#### STUDENT NUMBER: 10443423 ####

while [[ $yes -eq y ]]; do                                                    ##Continue the program until user wishes to continue
echo "SEARCH FOR PATTERN "                                                    #Print the menu
echo "1. PATTERN in lines with line numbers and number of matches"
echo "2. PATTERN not in lines "
echo "3. EXIT "
                                                   
read -p 'Please enter your option: ' opt                                      #Prompt to enter the option from menu
case $opt in                                                                  #Start case conditions
    1) 
      read -p 'Enter the pattern you want to search for: ' pattern            #Prompt user to enter a pattern to search
       echo "RESULTS"
       echo "The total number of matches are: "                               #Display total number of matches
       grep -i -c $pattern "access_log.txt"                                   #Count the number of lines from the file making the input from user case insensitive
       echo -e "The line numbers along with the matches are as follows: \n"   #Display Matching lines with line numbers
       grep -i -n $pattern < access_log.txt > task4file.txt                   #The matching lines along with line numbers are saved in another text file
       cat task4file.txt                                                      #Display the matches to terminal
       ;;
   
    2)  read -p 'Enter the pattern that you dont want to display in your lines: ' pattern          #Prompt user to enter a pattern
        echo -e "The following lines and line numbers do not contain the match: \n"                
       grep -i -v -n $pattern "access_log.txt" ;;                                                  #Display the lines that do not contain the pattern
     
    
    3) echo "Exiting from program"
            exit 1;;                                                                               #Exit from program if user wishes to
    *) echo "Invalid option entered-Try again " ;;                                                 #Any other option entered display message
esac                             

read -p 'Do you wish to continue your search?: y for continue ' yes                                #Ask the user to enter 'y' if they wish to continue
if [[ $yes = y ]]; then                                                                            #check if the user entered y to continue
   continue                                                                                        #Continue the search
else  
   break                                                                                           #Break the loop if user did not enter 'y'
fi

done                                                                                               #End the loop
exit 0                                                                                               