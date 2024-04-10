#awk -F "|" -f Test.awk student.txt
BEGIN{
printf "  \t\t-----------\n"
printf "  \t\t| Testing |\n"
printf "  \t\t-----------\n"
}
{printf "\n %d %s %c %d %d %d \n",$1,$2,$3,$4,$5,$6}
END{
printf "\n\t\ttest complete\n\n"
}

