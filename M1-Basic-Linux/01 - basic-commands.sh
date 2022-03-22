#!/bin/bash

#### Basic Linux Commands

# 1. Run a command to find your current location on the server
echo '1. Run a command to find your current location on the server -> pwd'

pwd

# 2. Change directory from your current location to /var/log
echo $'\n2. Change directory from your current location to /var/log -> cd /var/log'

cd /var/log && pwd

# 3. Go back up a directory
echo $'\n3. Go back up a directory -> cd ..'

cd .. && pwd

# 4. Find your current location again
echo $'\n4. Find your current location again -> pwd'

pwd

# 5. List all the files in the current directory
echo $'\n5. List all the files in the current directory -> ls'

ls

# 6. Now list all the files with the long listing
echo $'\n6. Now list all the files with the long listing -> ls -l'

ls -l

# 7. Now list all the files with the long listing in reverse order, with the newest appearing at the bottom of your screen
echo $'\n7. Now list all the files with the long listing in reverse order, with the newest appearing at the bottom of your screen -> ls -ltr'

ls -ltr

# 8. Change to root directory
echo $'\n8. Change to root directory -> cd /'

cd / && pwd

# 9. Change back to your home directory
echo $'\n9. Change back to your home directory -> cd ~'

cd ~ && pwd

# 10. Go up a level in directory structure
echo $'\n10. Go up a level in directory structure -> cd ..'

cd .. && pwd

# 11. Find out more information about the ls command
echo $'\n11. Find out more information about the ls command -> man ls'

#man
echo $'\nman ls -> man ls - too long for jupyter, run in linux terminal...'

# 12. Go back to /var
echo $'\n12. Go back to /var -> cd/var'

cd /var && pwd

# 13. Show the contents of this directory with details reverse sorted by size
echo $'\n13. Show the contents of this directory with details reverse sorted by size -> ls -ltrS'

ls -ltrS

# 14. Find out the hardware version you are running
echo $'\n14. Find out the hardware version you are running -> uname -i'

uname -i
