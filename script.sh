clear
echo "Enter file name to remove"
read file
rm $file
error=$?
if [ $error -eq 1 ]; then
echo "file not exist"
else
echo "$file remove successfully"
fi
