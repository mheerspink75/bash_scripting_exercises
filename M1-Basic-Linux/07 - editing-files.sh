#!/bin/bash
clear

# 1. Open a new file named avengers in your home directory in your editor and paste in the following text:
avengers="Six stones, three teams, one shot. Five years ago, we lost. All of us. We lost friends. We lost
family. We lost a part of ourselves. Today, we have a chance to take it all back. You know your
teams. You know your missions. Get the stones. Get them back. One round trip each. No mistakes.
No do-overs. Most of us are going somewhere we know. that doesn't mean we should know what to e
xpect. Be careful. Look out for each other. This is the fight of our lives, and we're gonna wi
n. Whatever it takes. Good luck."

echo $'\n'"$avengers"$'\n'

# 2. Exit and save the file.
echo "$avengers" >avengers.txt

# 3. Run a word count on the file.
# wc -w avengers.txt

# 4. Edit the file to add a blank line and type in "word count" followed by the value you just got.
echo $'\nword count:' $(wc -w <avengers.txt) >>avengers.txt

# 5. Replace every instance of the word "the" with "THE".
sed -i 's/ the / THE /g' avengers.txt

# 6. Copy the first line of the file and paste it after your word count entry at the bottom of the file.
firstline=$(head -1 avengers.txt)
echo $firstline >>avengers.txt

# 7. Delete the first line of the file.
sed -i '1d' avengers.txt

# 8. Undo that deletion.
lastline=$(tail -1 avengers.txt)
sed -i '1s/^/'"$lastline"'\n/' avengers.txt

# 9. Insert at the top of the file the text "Captain America – Endgame" followed by an empty line.
sed -i '1s/^/'"Captain America - Endgame"'\n\n/' avengers.txt

# 10. Find out the number of lines in the file now.
# wc -l avengers.txt

# 11. Delete "Good luck" wherever it occurs in the file
sed -i 's/'"Good luck."'/'""'/g' avengers.txt

# 12. Write the number of lines into the file one line above the word count with the text "line count" plus the value.
sed -i "$(($(wc -l <avengers.txt) - 2)),$ d" avengers.txt
echo $'line count:\nword count:' >>avengers.txt

line_count=$(wc -l <avengers.txt)
sed -i 's/line count:/line count: '"$line_count"'/g' avengers.txt

word_count=$(wc -w <avengers.txt)
sed -i 's/word count:/word count: '"$word_count"'/g' avengers.txt

cat avengers.txt

# 13. Remove the temporary files...
rm -rf avengers.txt