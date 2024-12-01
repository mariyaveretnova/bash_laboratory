echo "Input a filename to read"
read filename
cat "$filename" | while read line; do
    echo "$line"
done
