#script for greeting user
h=$(date +%H)
if [ $h -ge 0 -a $h -lt 12 ]; then
echo "Good morning $USER"
elif [ $h -ge 12 -a $h -lt 18 ]; then
echo "Good afternoon $USER"
elif [ $h -ge 18 -a $h -lt 22 ]; then
echo "Good evening $USER"
else
echo "Good night $USER"
fi

