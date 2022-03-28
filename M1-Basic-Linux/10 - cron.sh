#!/bin/bash

### CRON #########################################

cp fixgenerator.sh ~/fixgenerator.sh

# 1. Set up the script to run Monday-Friday at 6am.
0 6 * * 1-5 ~/fixGenerator.sh

# 2. Set up the script to run at 6pm every Friday.
0 18 * * fri ~/fixGenerator.sh

# 3. Set up the script to run every half hour from 9-4 on Monday, Wednesday and Friday.
*/30 9-15 * * mon,wed,fri ~/fixGenerator.sh

# 4. Set up the script to run every other hour every day.
0 0-23/2 * * * ~/fixGenerator.sh

# 5. Set up the script to run on May 4 at midday.
0 12 4 5 * ~/fixGenerator.sh

# 6. Set up the script to run on the 1 of every month at 6:25am.
25 6 1 * * ~/fixGenerator.sh

# 7. Set up the script to run every 20 minutes every Tuesday between 10am and 2pm.
0/20 10-13 * * Tue ~/fixGenerator.sh

# 8. Set up the script to run the 1 of every other month on the hour.
0 * 1 */2 * ~/fixGenerator.sh

# 9. Set up the script to run at 6am and 8am on Saturday and Sunday.
0 6,8 * * 6-7 ~/fixGenerator.sh

#######################################################