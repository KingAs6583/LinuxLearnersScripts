#printing the cantain of a file
echo "Enter the student id "
read id
echo "Enter the student name"
read name
echo "Enter the student age"
read age
echo "Enter the student gender"
read g
echo "Enter the student weight"
read wt
echo "Enter the student height"
read ht
echo "$id|$name|$age|$g|$wt|$ht" >> student.txt
echo "------------------------------------------"
awk -F "|" 'BEGIN{ printf "\n \t Test \n" } { printf "%4d %-20s %4d %8s %8d %3d \n",$1,$2,$3,$4,$5,$6 } END{ printf "\n \t complete \t" }
' student.txt
echo "------------------------------------------"
