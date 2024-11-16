echo "Input a source dir"
read source_dir
if [ ! -d "$source_dir" ]; then
    echo "Dir doesn't exist"
    exit 1
fi
echo "Inpur a destination dir"
read dest_dir
if [ ! -d "$dest_dir" ]; then
    echo "Making a dir..."
    mkdir -p "$target_dir"
fi
current_date=$(date +%Y-%m-%d)
for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp "$file" "$dest_dir/${current_date}_$filename"
    fi
done
