echo "Input a filename"
read filename
echo "Input a word to change"
read change_word
echo "Input a new word"
read new_word
sed -i "s/\b$change_word\b/$new_word/g" "$filename"
