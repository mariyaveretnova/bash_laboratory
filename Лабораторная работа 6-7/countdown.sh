echo "Write a number"
read number
while [[ $number -gt 0 ]]; do
echo "$number"
(( number -= 1 ))
done