#!/bin/bash

# Check if correct number of arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: ./gencsv.sh <start_index> <end_index>"
    exit 1
fi

# Get start and end index from arguments
start_index=$1
end_index=$2

# Create or overwrite the inputFile
output_file="inputFile"
> "$output_file"  # Clears the file if it exists

# Loop to generate entries and append them to the inputFile
for ((i=$start_index; i<=$end_index; i++))
do
    random_number=$((RANDOM % 100))  # Generate random number between 0-99
    echo "$i, $random_number" >> "$output_file"
done

echo "inputFile created with entries from index $start_index to $end_index."
