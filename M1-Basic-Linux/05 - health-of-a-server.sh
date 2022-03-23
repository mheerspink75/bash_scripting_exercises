#cd ~/.ssh && ssh -i "mattheerspink_ec2.pem" ec2-user@ec2-3-87-218-91.compute-1.amazonaws.com

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

# 8. Run a process check to pull all of the process ids running on the server and put the output into a le named list in your home directory.
ps -eo pid > ~/processes.list