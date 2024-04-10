#reverse string
clear
echo "Enter a string"
read str
l=$(expr length $str)
while [ $l -ge 1 ]; do
c=$(expr $str | cut -c $l)
strrev=$strrev$c
l=$(expr $l - 1)
done
echo "Original String is : $str"
echo "Reverse String is : $strrev"

