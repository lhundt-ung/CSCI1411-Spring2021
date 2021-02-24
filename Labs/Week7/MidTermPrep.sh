#1. Display Lines 9-16 in sherlock.txt using head and tail commands
head -n 16 sherlock.txt >> first16.txt
tail -n 8 first16.txt

head -n 16 sherlock.txt | tail -8

#2. Search for the word Holmes in the first 1000 lines, then copy results to extract.txt
head -1000 sherlock.txt | grep -w "Holmes" >> extract.txt

#3. Append the current date to extract.txt
date >> extract.txt

#4. Read the output of extracted.txt
cat extract.txt
more extract.txt

#5. Copy extract.txt into a new file called extracted_backup.txt
cp extract.txt extracted_backup.txt

#6. List out all files that start with the word "extract" only with file sizes listed
ls -d extract*

#7. Delete all files that start with the word "extract" 
rm extract*.txt

#8. Use a program called host to query Internet domain name servers for information.
#  Perform a lookup of google.com
host google.com

#9. Same query as #8 but only lines with mail addresses. Then write out to google.txt
host  google.com | grep "handled" >> google.txt


#10. Make this script file executable and execute it