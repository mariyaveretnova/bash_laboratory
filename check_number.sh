echo "Put a number"
read number
if [[ $number -lt 0 ]]; then
echo "$number is negative"
elif [[ $number -gt 0 ]]; then
echo "$number is positive"
else
echo "$number is equal to zero"
fi