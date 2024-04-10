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

