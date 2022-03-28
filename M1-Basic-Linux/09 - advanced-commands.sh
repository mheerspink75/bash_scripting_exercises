#!/bin/bash

# 1. Create a directory named logs.
mkdir logs

# 2. Copy fixlog.log to the logs directory.
cp fixlog.log logs/fixlog.log

# 3. Replace all instances of MTHREE in logs/fixlog.log with M3 and put the output into a new file named fixlog2.log in the logs directory.
cat logs/fixlog*.log | sed 's/MTHREE/M3/g' >logs/fixlog2.log

# 4. Run a command to pull all fill messages from fixlog2.log and put the output into a new logfile named fills.log.
grep 35=8 logs/fixlog2.log | grep -v 32=0 >logs/fills.log

# 5. Run a command to pull all cancel acknowledgement messages (39=4) from fixlog2.log into a new log named cancels.log in th same directory.
grep 39=4 logs/fixlog2.log >logs/cancels.log

# 6. Run a command to create a new log file named partialFills.log and add the partial fills from fills.log to the new file.
grep 39=1 logs/fills.log >logs/partialFills.log

# 7. Use awk to create a new file out of the partial fill log that has the following tags only: Symbol (55); orderID (11);
# side(54); fill price (31); fill quantity (32); execution id (17). Name the file parsedPartialFills.log
awk '{print $7, $9, $13, $10, $15, $16}' logs/partialFills.log >logs/parsedPartialFills.log

# 8. Remove the first part of every fix tag and turn the file into a comma separated list with no spaces.
sed -i 's/'"; "'/'","'/g' logs/parsedPartialFills.log
sed -i 's/'";"'/'","'/g' logs/parsedPartialFills.log

sed -i 's/'"55="'/'""'/g' logs/parsedPartialFills.log
sed -i 's/'"54="'/'""'/g' logs/parsedPartialFills.log
sed -i 's/'"32="'/'""'/g' logs/parsedPartialFills.log
sed -i 's/'"31="'/'""'/g' logs/parsedPartialFills.log
sed -i 's/'"17="'/'""'/g' logs/parsedPartialFills.log
sed -i 's/'"11="'/'""'/g' logs/parsedPartialFills.log

# 9. In the file, add a row of column headers separated by commas. The headers should be Symbol, OrderID, Side, Price, Qty, and ExecID.
sed -i -e '1iSymbol,OrderID,Size,Price,Qty,ExecID' logs/parsedPartialFills.log

# 10. Save the file as module10.csv in the logs folder.
mv logs/parsedPartialFills.log logs/module10.csv

# 11. Make a copy of the cancels file and name it log
cp logs/cancels.log logs/cancels2.log

# 12. Open the cancels2.log file in an editor. Find the first symbol (tag 55) in the first line and add the letter A to the beginning of the value. (If it was 55=GOOG, it will become 55=AGOOG.)
sed -i 's/'"55="'/'"55=A"'/g' logs/cancels2.log

# 13. Run a difference between the original cancels file and the new file you just edited.
diff logs/cancels.log logs/cancels2.log

# 14. Remove temporary files...
rm -rf logs
