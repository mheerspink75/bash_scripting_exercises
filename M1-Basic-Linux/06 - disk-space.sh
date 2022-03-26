#!/bin/bash

pwd
# 1.Run a command to see the disk usage across your file system
df

# 2. Run the command again. This time ensure the output is in human-readable format and added to a file named usage in your home directory.
df -h > filesystem.usage

# 3. Show the disk usage for your home directory.
# du ~

# 4. Show the disk usage for your home directory in human readable for and add it a file named usage in your home directory.
du -sh ~ > disk.usage

# 5. Run a disk check specifically showing output for all files and folders in human readable format. Put the results into usage2 in your home directory.
du -ah > disk.usage2

# 6. Show the disk usage for everything in /var
du /var

# 7. Run a disk usage command on your home directory that will follow any links if you have them set up and display the output in human-readable format.
# du -Lh ~

# 8. Create a folder named disk in your home directory
mkdir disk

# 9. Copy your output files from exercise 2, exercise 4, and exercise 5 into this folder.
cp disk.usage disk.usage2 filesystem.usage disk/.

# 10. Run a command to create an archive tar file named tar that includes everything in this folder.
cd disk

tar -cvf disk.tar *

# 11. Reverse the previous command and undo the archive.
tar -xvf disk.tar

# 12. Now run an archive of these files to ensure it creates a g-zipped tarball named disk.tar.gz in a single-line command.
tar -cvzf disk.tar.gz *

# 13. Create an empty file named newdisk in this directory.
touch newdisk

# 14. Create an empty file named newdisk in this directory.
##########################################
gunzip disk.tar.gz
## do you wish to overwrite (y or n)? n ##

# 15. Add the newdisk file to the tar file.
tar -rvf disk.tar newdisk

# 16. Compress the tar file again to make a g-zipped tar ball again.
gzip disk.tar.gz

# 17. Create another directory named disk_output in your home directory.
cd ..
mkdir disk_output

# 18. Uncompress your tarball to the directory you just created.
tar -xvzf disk/disk.tar.gz -C disk_output/.

# 19. Run a command to g-zip your disk_output directory. Ensure it recursively compresses everything.
gzip -r disk_output/

ls disk_output

# 20. Remove temporary files...
rm -rf disk disk_output disk.usage disk.usage2 filesystem.usage

echo $'\nTemporary files deleted...'