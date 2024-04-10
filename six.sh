#!bin/sh
line(){
echo "------------------------------------------------------------------------"
}
line
echo '1 ls'
echo '2 mkdir'
echo '3 pwd'
echo '4 cd '
echo '5 touch'
line
read ch
case $ch in
 1) echo "file listing"
 ls -l
 ;;
 2) echo "create a directory"
 mkdir /home/kingas/Desktop/lapPgm/cmd
 ;;
 3) echo "display current directory"
 pwd
 ;;
 4) echo "change directory"
 cd
 ;;
 5) echo "create a file"
 echo "enter file name "
 read f
 touch /home/kingas/Desktop/$f
 ;;
 *) echo "invalid choice"
 ;;
esac
