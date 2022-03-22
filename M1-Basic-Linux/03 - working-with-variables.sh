#!/bin/bash
cd ~ && pwd

#### Working with Variables ####

# 1. Create a variable named STOCK and assign it a value of AAPL
STOCK=AAPL

# 2. Print the value of the variable out to the screen
echo $STOCK

# 3. Change the value of the variable STOCK to be the previous value with _US appended onto the end
STOCK=$STOCK"_US"

# 4. Create a new variable named PRICE with value 290.84
PRICE=290.84

# 5. Print out to the screen a sentence ‘The current price of is ’ where you call the variables and get their values
echo "The current price of $STOCK is $PRICE".

# 6. Create a variable named WHOAMI and assign it your current username. Do this in one command.
WHOAMI=$USER

# 7. Using just $ and () assign a variable named SERVERTYPE by using the uname command
SERVERTYPE=$(uname)

# 8. Write a command to show to the screen the value of running the command assigned to SERVERTYPE
echo "$SERVERTYPE"

# 9. Assign a variable named CMD the command uname -i
CMD="uname -i"

# 10. Using echo and the variable CMD, show how you echo the value of CMD
echo $CMD

# 11. Using echo and the variable CMD, print what the CMD returns when run to the screen
echo $($CMD)

# 12. Change directory to your home directory
cd ~

# 13. Create a directory named scripts
mkdir scripts

# 14. Print out your $PATH Value
echo $PATH

# 15. Append your newly created script directory to your path variable
export PATH=$PATH:~/scripts/

# 16. Check you can see your new path appended to the end of the path variable
echo $PATH

# 17. If you have Algo1 still created from previous exercises, remove the directory structure and all files within it
#cd ~rm -rf Algo1

# 18. Make a directory named Payment1
mkdir Payment1

# 19. Within Payment1, make three directories named logs, configuration, and scripts
mkdir Payment1/logs Payment1/configuration Payment1/scripts

# 20. Within scripts, create an empty file named start.sh
touch Payment1/scripts/start.sh

# 21. Within configuration, create an empty file named instance.properties
touch Payment1/configuration/instance.properties

# 22. Give everyone permission to read the instance.properties file, but assign write and execute permissons only to yourself
chmod 744 Payment1/configuration/instance.properties

# 23. Set permissions on the le start.sh so that everyone can execute and so that the group and owner can read and write
chmod 771 Payment1/scripts/start.sh

# 24. Direct the output of man cat into a file in your home directory named cat.output
man cat >cat.output

# 25. Change the permission of that file so everyone can read it but only the group can write and execute
chmod 474 cat.output

# 26. Go back to your home directory
cd ~

# 27. Prove your location
pwd

# 28. Remove the directory Payment1 along with all subdirectories
rm -rf Payment1

# 29. Delete the cat.output file, but with a warning first to the user
rm -i cat.output

# 30. Create a directory named temp
mkdir temp

# 31. Set a variable named MYTEMP that references the new temp directory you just created
MYTEMP=~/temp

# 32. Run a command to see the value of the MYTEMP variable
echo $MYTEMP

# 33. Now set the value of $MYTEMP to nothing
MYTEMP=

# 34. Remove the temp directory that you created
rm -rf temp

# 34. Remove the scripts directory that you created
rm -rf scripts