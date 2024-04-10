#!bin/sh

line(){
echo "------------------------------------------------------------------------"
}

line
echo '1 ls'
echo '2 mkdir'
echo '3 pwd'
echo '4 rm '
echo '5 touch'
echo '6 cat'
echo '7 ps'
echo '8 date'
echo '9 who'
echo '10 cal'
line

read ch
case $ch in
 1) echo "file listing"
 ls -l
 ;;
 2) echo "create a directory"
 mkdir cmd
 ;;
 3) echo "display current directory"
 pwd
 ;;
 4) echo "Enter the file name to remove"
 read n
 rm -i $n
 ;;
 5) echo "create a file"
 echo "enter file name "
 read f
 touch $f
 ;;
 6) echo "Enter the file name"
 read file
 echo "printing contain of file"
 cat $file
 ;;
 7)echo "process cmd"
 ps
 ;;
 8) echo "date cmd"
 date
 ;;
 9) echo "who cmd"
 who
 ;;
 10) echo "calender cmd"
 cal
 ;;

 *) echo "invalid choice"
 ;;
esac
