#script to count the number of vowels
echo "1 To Count the number of vowels in a string"
echo "2 To convert uppercase characters to lowercase"
echo "3 To accept word and perform pattern matching in a file"
read ch

countVowels(){

	echo "enter the string"
	read str
	count=0
	len=`expr length $str`
	i=1
	while [ $i -le $len ]
	do
	ch=`echo $str | cut -c $i`
	case $ch in
	[aeiouAEIOU]) count=`expr $count + 1` ;;
	esac
	i=`expr $i + 1`
	done
	echo "Number of vowels in the $str is $count"
}

caseConverter(){

echo "Enter the file or character to convert"
read fileOrChar

echo "\n file or character in upper case"

if [ -f $fileOrChar ]; then
cat $fileOrChar | tr '[a-z]' '[A-Z]'

echo "\n file or character in lower case"

cat $fileOrChar | tr '[A-Z]' '[a-z]'

else
echo $fileOrChar | tr '[a-z]' '[A-Z]'

echo "\n file or character in lower case"

echo $fileOrChar | tr '[A-Z]' '[a-z]'

fi

}

patternMatcher(){

echo "Enter the word to match in a file"
read word

echo "Enter the file name to match $word"
read file

cat $file | grep $word

}

if [ $ch -eq 1 ]; then
countVowels
elif [ $ch -eq 2 ]; then
caseConverter
elif [ $ch -eq 3 ]; then
patternMatcher
fi
