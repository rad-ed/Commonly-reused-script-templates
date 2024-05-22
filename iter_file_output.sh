# reads input file provided line by line 
# and outputs to a new output file output.txt

#!/bin/bash

# Check if the user provided a text file as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"

# Check if the text file exists
if [ ! -e "$input_file" ]; then
    echo "Error: File '$input_file' not found."
    exit 1
fi

#!/bin/bash

file=output.txt
[ -e $file ] && rm $file
echo "test" >> $file

# Read the text file line by line and run a command with each line as an argument
while IFS= read -r line; do
    # Check if the line is empty (skip empty lines)
    if [ -n "$line" ]; then
        # Replace the following command with the one you want to run
        # For example, you can use "echo" to print the line or execute any other command.
        echo "Running command with argument: $line"
        echo $line >> $file
        # Replace the following command with the actual command you want to run
        # For example: command_to_run "$line"
    fi
done < "$input_file"
