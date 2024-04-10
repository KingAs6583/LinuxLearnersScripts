#find word in first in second file
if [ $# -lt 2 ]; then
echo "Enter atleast 2 files"
else
for word in $(cat $1)
do
for file in $*
do
if [ "$file" != "$1" ]; then
echo " Word Frequency of $word in file $file is : $(grep -iow "$word" $file | wc -w)"
fi
done
done
fi
