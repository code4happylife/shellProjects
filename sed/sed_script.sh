#print first,3rd,5th line of demo.txt
sed -n '1p;3p;5p' demo.txt
#replace chinese character
sed "s/\b你/我/g" demo.txt
# delete 5th line
sed '5d' demo.txt 
