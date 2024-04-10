#script to copy a file
echo "1 copy file within current directory"
echo "2 copy file between 2 directories"
read option

if [ $option -eq 1 ]; then
echo "Enter the source file name"
read sourceFile
echo "\nEnter the destination file name"
read destinationFile
cp -i $sourceFile $destinationFile
echo "\nsuccessfully Copy the contain of $sourceFile into $destinationFile"

elif [ $option -eq 2 ]; then
echo "Current working Directory"
pwd
echo "\nEnter the path of source File"
read sourcePath
echo "\nEnter the path of destination File"
read destinationPath
echo "\nEnter the source File name "
read sourceFile
echo "\nEnter the Destination  file name "
read destinationFile
cp -i $sourcePath/$sourceFile $destinationPath/$destinationFile
echo "\nsuccessfully copy file"
fi
