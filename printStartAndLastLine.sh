#script to print start and end of line
if [ $# -ne 3 ]; then
echo "Not enough Arg"
echo "syntax pgmName fileName start endLine "
else
lastLine=$(wc -l < $1)
if [ $2 -lt $lastLine -a $3  -le $lastLine ]; then
nLine=$(expr $3 - $2 + 1)
echo "$(tail +$2 $1 | head -$nLine)"
else
echo "Invalid range"
fi
fi
