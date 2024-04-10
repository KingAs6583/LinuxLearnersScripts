#script to compare 2 data files
echo "Enter the file1  name"
read file1
echo "\nEnter the file2 name"
read file2

comm $file1 $file2
echo "comparation done"

