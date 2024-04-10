#script to find sum of digits
clear
echo "Enter the number"
read num
sum=0

while [ $num -gt 0 ]; do
rem=`expr $num % 10`
sum=`expr $sum + $rem`
num=`expr $num / 10`
done

echo "Sum of digit is $sum"

echo "code as to written yet"
