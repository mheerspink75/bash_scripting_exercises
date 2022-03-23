#!/bin/bash

#./ec2.sh

cp fixlog.log ~/fixlog.log
cp fixGenerator.sh ~/fixGenerator.sh


#### Reading Files ####
cd ~ && pwd

# 1. Using the cat command, display the contents of the fixGenerator.sh script to the screen. 
# cat fixGenerator.sh
echo '-> skipping fixGenerator.sh & using fixlog.log'
# 2. Use the cat command to display the contents of the script you ran to the screen but with line numbers.
# cat -n fixGenerator.sh

# 3. Read the contents of the log file created using cat but direct it to a new file in your home directory named newlog.log
cat fixlog* > ~/newlog.log

# 4. Create a directory named logs
mkdir logs

# 5. Move the newlog.log into the logs directory.
mv newlog.log logs/.

# 6. Cat the original log file you created again. This time, append its output to the newlog.log file you just moved.
cat fixlog* >> logs/newlog.log

# 7. Create a soft link named Daily to your newlog.log file in the logs directory.
ln -s newlog.log daily

# 8. Return to your home directory.
cd  ~

# 9. Cat the original fix log file created into a less so that you can browse the file. 
#cat fixlog* | less
echo '-> skipping view less'

# 10. Using the search function in less, look for any new order messages. (You may need to refer back to your x training to look up the appropriate x tag.) In less you will run:
#/35=D 

# 11. Exit less and run a search using grep for all new order messages. Redirect the output to a le named newOrders.log in the logs directory.
grep 35=D fixlog* > logs/neworders.log

# 12. Copy the newOrders.log file from the logs directory to your home directory.
cp logs/neworders.log ~/.

# 13. Run a command to find out how many lines are in the newOrders.log file.
echo $'\nTotal Lines in newOrders.log: '
wc -l neworders.log

# 14. Run a command to pull out all of the messages with the instruction buy in x (you may need to look up the tag again) from the original log file and put them into a new log file in the logs directory named buyMessages.log
grep 54=1 fixlog* > logs/buymessages.log

# 15. Count how many lines are in that file.
echo $'\nTotal Lines in buyMessages.log:'
wc -l logs/buymessages.log

# 16. Count how many new orders are in the buyMessages.log.
echo $'\nNew Orders in buyMessages.log:'
grep 35=D logs/buymessages.log | wc -l

# 17. Create a new version of the log file named noNewOrders.log that has everything except new order messages in it and put it in the logs directory. 
grep -v 35=D fixlog* > logs/noneworders.log

# 18. Count how many words are in the noNewOrders.log. 
echo $'\nWord Count noNewOrders.log:'
wc -w logs/noneworders.log

# 19. Show the last 5 lines of the noNewOrders.log to the screen.
echo $'\nLast 5 lines of noNewOrders.log'
tail -n 5 logs/noneworders.log

# 20. Find all the messages relating to Apple in the original log file and show the first two lines to the screen. 
echo $'\nMessages relating to AAPL'
grep aapl fixlog* | head -n 2

# 21. Add a soft link named fix to your fixGenerator script.
ln -s fixgenerator.sh fix

# 22. Tail the log file created looking for new orders only in your tail command. (This will not actually cause any updates to the screen because the log file is not currently being updated.) 
# tail -f fixlog* | grep 35=D
echo $'Tail fixlog for new orders:'
tail fixlog* | grep 35=D

# 23. Create a new directory named superLogs
mkdir superlogs

# 24. Copy everything in the logs directory into the superLogs directory.
cp -r logs superlogs/.

# 25. Run a single grep command with an option on grep to count the number of messages for FB in the original log file that was created.
echo $'\nCount the number of messages for FB:'
grep -c FB fixlog*

# 26. Count the number of words in the original logfile. 
echo $'\nWord Count fixlog:'
wc -w fixlog*

# 27. Find the number of new order messages for Netflix in the original log file.
echo $'\nCount new messages for NFLX:'
grep 35=D fixlog* | grep NFLX | wc -l

# 28. Delete the files from the home directory
cd ~ && pwd && ls
rm -rf daily *fix* logs neworders.log superlogs

pwd && ls

echo '-> generated files deleted'