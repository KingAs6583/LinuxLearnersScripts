#script to  find number of words character and lines in a file
clear
echo "Enter the file name"
read file

wc -m $file
wc -l $file
wc -c $file

