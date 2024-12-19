#!/bin/bash

output_file="droid.ini"  # Specify the name of the output file
file_list=("basicmenus.txt" "binary_faderbanks.txt" "clocktool.txt" "motoquencer.txt" "contour.txt")  # List of files to concatenate

# Generate a timestamp suffix
timestamp=$(date +"%Y%m%d%H%M%S")

# Check if the output file already exists
if [ -f "$output_file" ]; then
    # Rename the existing output file with timestamp suffix
    mv "$output_file" "obsolete/$output_file.$timestamp"
fi

# Concatenate the files
for file in "${file_list[@]}"; do
    cat "$file" >> "$output_file"
done

echo "Concatenation complete. Output saved to $output_file."