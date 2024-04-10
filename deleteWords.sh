#script to delete specific word in a file
if [ $# -lt 1 ]; then
echo "provide atleast one file to delete word"
else
echo "Enter the search word to delete"
read word
for file in $*
do
#sed -i "s/$word //g" $file
grep -i -v "$word" $file | tee 1 > /dev/null $file
done
echo "successfully deleted $word from $1"
cat $1
fi

