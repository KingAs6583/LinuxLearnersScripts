#pgm to calculate power
base=$1
expn=$2
if [ $# -ne 2 ]; then
echo "invalid arg input base and exponent"
else
i=1
result=1
while [ $i -le  $expn ]; do
result=$(expr $result \* $base)
i=$(expr $i + 1)
done
echo "Result = $result"
fi
