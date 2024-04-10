clear

red='\033[91m'
green='\e[1;32m'
blue='\e[1;34m'
yellow='\e[1;33m'
end='\e[0m'

cd /home/kingas/Desktop/labPgm
for fname in *
do
echo "---------------------------------------------------------------------"
if [ -r $fname ]; then
echo "$fname is a ordinary file"
fi

if [ -d $fname ]; then
echo "$fname is an $blue directory  $end"
fi

if [ -r $fname ]; then
echo "$fname has $red read permission $end"
fi

if [ -w $fname ]; then
echo "$fname has $yellow write permission $end"
fi

if [ -x $fname ]; then
echo "$fname has $green execute permission $end"
fi
echo "-----------------------------------------------------------------------"
done
