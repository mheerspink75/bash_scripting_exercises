#!/bin/bash

#### Linux Files and Filesystems ####

# 1. Change directory to your home directory
cd ~

# 2. Print out your current directory
pwd

# 3. Create a folder named Algo1
mkdir Algo1

#4. Within Algo1, create subfolders named config, bin, logs, scripts
mkdir Algo1/bin Algo1/config Algo1/logs Algo1/scripts

# 5. Within config, create empty files named config.config and variables
touch Algo1/config/config.config Algo1/config/variables 

# 6. Within scripts create empty files named start.sh, stop.sh and admin.sh
touch Algo1/scripts/start.sh Algo1/scripts/stop.sh Algo1/scripts/admin.sh

# 7. Within logs create an empty file named today.log
touch Algo1/logs/today.log

# 8. Go back to your home directory
cd ~

# 9. Long list everything recursively
ls -lR

# 10. Remove the file named variables in the config directory
rm Algo1/config/variables

# 11. Remove the bin directory that you previously created
rmdir Algo1/bin

# 12. Change back to your home directory
cd ~

# 13. Create the bin directory again within Algo1
mkdir Algo1/bin

# 14. Create a directory in the logs folder named oldlogs
mkdir Algo1/logs/oldlogs

# 15. Within oldlogs, create folders named 2019 2018 2017
mkdir Algo1/logs/oldlogs/2017 Algo1/logs/oldlogs/2018 Algo1/logs/oldlogs/2019

# 16. Within 2017, create an empty file named 2017.log
touch Algo1/logs/oldlogs/2017/2017.log

# 17. Within 2018, create an empty file named 2018.log
touch Algo1/logs/oldlogs/2018/2018.log

# 18. Within 2019, create an empty file named 2019.log
touch Algo1/logs/oldlogs/2019/2019.log

# 19. Change back to your home directory
cd ~

# 20. Remove oldlogs using one command
rm -rf Algo1/logs/oldlogs

# 21. Ensure you are in your home directory
cd ~

# 22. Search for all files from your home directory that end in .sh
find -name "*.sh"

# 23. Go into the scripts directory and use a command to remove both the start and stop script without specifying each file separately
cd Algo1/scripts && rm s*.sh

# 24. Remove Algo1 from the home directory
cd ~ && rm -rf Algo1