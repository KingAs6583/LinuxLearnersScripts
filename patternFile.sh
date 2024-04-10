#to find a given pattern in list of files
clear
echo "Enter the name of 3 files for searching"
read f1 f2 f3
echo "Enter the pattern to search"
read pattern
grep -n "$pattern" $f1 $f2 $f3
