#!/bin/bash

# 1. Run a command to see all the processes running on the server owned by everyone.
ps -ef

# 2. Confirm the username you are running as.
echo $USER

# 3. Run a command to see all the processes running on the server and use grep to select only the processes your user is running.
ps -ef | grep $USER 

# 4. Repeat the previous exercise. This time, select every process except things running as you.
ps -ef | grep -v $USER

# 5. Show the process info for our current session without using a grep command.
ps -f $$

# 6. Show the process tree for the current session.
pstree -shapu $$

# 7. Run a process check on the server but only output the User, pid and cmd columns to your results.
ps -eo user,pid,cmd

# 8. Run a process check to pull all of the process ids running on the server and put the output into a file named list in your home directory.
ps -eo pid > processes.list

# 9. Run the following series of commands:
#     1. sleep 300 &
#     2. Find this command by checking the processes and running a grep
#     3. Stop the process using the process id
sleep 300 &

ps -ef | grep sleep

pgrep -l sleep

GETPS=`pgrep -n sleep`

echo $'\n' 

ps $GETPS

echo $'\nkilling sleep process:' $GETPS 

kill $GETPS

# 10. Run a command to see a dynamic view of all the processes running on your host.
top -n 3

# 11. Now run the same command but specifically only for root.
top -u root -n 3

# 12. Experiment with the following commands while running top and note your observations:
#     Z
#     C
#     Shift P
#     k
    
# top (Z, C, Shift P, k)

# 13. Run a command to check network connectivity between your Linux session and yahoo.com.
ping -c 3 yahoo.com

# 14. Show the network route between your session and yahoo.com and output the contents into a file named route in your home directory
traceroute yahoo.com > yahoo.route

# 15. View the file using less and see how many hops it took to get there.
# less yahoo.route
cat yahoo.route

# 16. Create a soft link named route to your network route.
ln -s yahoo.route route

# 17. Run a command to see all the network sockets on your server and output to a file named output in your home directory.
netstat -a > network.output

# 18. Create a folder named network in your home directory.
mkdir network

# 19. Move your route file and network output file into the network folder you just created.
mv yahoo.route network.output network/.

# 20. Run the command to query your network interfaces on your session.
ifconfig

# 21. Remove generated files...
rm -rf network/ processes.list route

echo $'\nTemporary files removed...'