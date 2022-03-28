#!/bin/bash
clear

# 1. Run a search for all new order singles in the fix log and put the output of that search into a file named newOrders.log
grep 35=D fixlog* > newOrders.log
wc -l newOrders.log

# 2. Duplicate the first line in the file.
cat newOrders.log | awk 'NR==1'
sed -i '1s/^/'"$(cat newOrders.log | awk 'NR==1')"'\n/' newOrders.log
wc -l newOrders.log

# 3. Go to the fifth line in the file and duplicate it also.
cat newOrders.log | awk 'NR==5'
sed -i '5s/^/'"$(cat newOrders.log | awk 'NR==5')"'\n/' newOrders.log
wc -l newOrders.log

# 4. Find and replace every instance of MTHREE with M3.
sed -i 's/MTHREE/M3/g' newOrders.log

# 5. Find and replace every ; (semicolon) with a , (comma) and ensure there is no space after each ,
sed -i 's/;/,/g' newOrders.log
sed -i 's/'", "'/,/g' newOrders.log

# 6. Save newOrders.log as a csv
mv newOrders.log newOrders.csv
wc -l newOrders.csv

cat newOrders.csv

# 7. Remove the temporary files...
rm newOrders.csv
