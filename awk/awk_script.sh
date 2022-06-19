#print sum
awk 'NR>1 { sum=$2+$3+$4}{ print $1,sum }' score.txt 
#print highest total score
awk 'NR>1 { sum=$2+$3+$4; if(sum>max) {max=sum;winner=$1}}END { print winner,max }' score.txt 
#print average score
awk 'NR>1 { x= $2+$3+$4; print $1,int(x/3)}' score.txt 
#print highest math score
awk 'NR>1 { if($3>math_max) {math_max=$3;winner=$1}} END { print winner,math_max }' score.txt 
