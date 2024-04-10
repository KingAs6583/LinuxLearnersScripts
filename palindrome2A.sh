#script to check given number is palindrome or not
clear
len=0
i=1

echo "Enter the string"
read str

len=$(expr length $str)
halfLen=$(expr $len / 2)

while [ $i -le $halfLen ]; do
c1=$(expr $str | cut -c $i)
c2=$(expr $str | cut -c $len)

if [ $c1 != $c2 ]; then
echo "$str is not a polindrome"
exit
fi

i=$(expr $i + 1)
len=$(expr $len - 1)
done

echo "$str is a palindrome \n"

#script print all the prime numbers between m to n
clear
echo "Enter the value of m"
read m
echo "Enter the value of n"
read n
echo  "prime number in the range $m and $n are \n"
while [ $m -le $n ]; do
i=2
flag=1
while [ $i -lt $m ]; do
if [ $(expr $m % $i) -eq 0 ]; then
flag=0
break
else
i=$(expr $i + 1)
fi
done
if [ $flag -eq 1 ]; then
echo "$m"
fi
m=$(expr $m + 1)
done

