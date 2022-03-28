#!/bin/bash

clear

# 1. Run a command to send the terminal to sleep for 10 seconds.
sleep 10

# 2. Run another command to send the terminal to sleep for 60 seconds, but put the process running in the background.
sleep 60 &

# 3. Run an additional command to send the terminal to sleep for 70 seconds in the background.
sleep 70 &

# 4. View all running jobs.
jobs

# 5. Using the jobs command, bring the 700 second sleep job to the foreground.
fg %2

# 6. Run a command to sleep for 10 seconds in the background and then print out "hello world" to the screen.
sleep 10 && echo "Hello World" &

# 7. Using the ; command in one line, sleep for 5 seconds and then ls.
sleep 5; ls 

# 8. Create a new fix log named fixlog1.log in your home directory by pulling out all of the messages that are not new orders from fixlog.log
grep -v 35=D fixlog* > fixlog1.log

# 9. Using the || command, run a search in this new file for new order messages or for execution messages (35=8).
grep 35=D fixlog1.log || grep 35=8 fixlog1.log

# 10. Run the watch command on the date to see it work.
# watch date

# 11. Remove temporary files...
rm fixlog1.log