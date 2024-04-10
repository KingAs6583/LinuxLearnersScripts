#vowel count in str
clear
echo "Enter the string"
read str
l=$(expr length $str)
count=0
i=1
while [ $i -le $l ]; do
ch=$(echo $str | cut -c $i)
case $ch in
[aeiouAEIOU])count=$(expr $count + 1);;
esac
i=$(expr $i + 1)
done
echo "String is : $str"
echo "number of vowel in the string is : $count"
