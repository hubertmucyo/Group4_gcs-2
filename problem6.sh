#!/usr/bin/env bash

# Check if the input files exist
if [ ! -f recipient_names.txt ] || [ ! -f message_template.txt ]; then
    echo "Input files not found."
    exit 1
fi

# Read each recipient's name and generate personalized messages
while IFS= read -r recipient_name; do
    # Use sed to replace the placeholder with the recipient's name
    problem6=$(sed "s/Recipient_Name/$recipient_name/g" message_template.txt)

    # Output the personalized message to a file
    echo "$problem6" >> messages.txt

    echo "Personalized message for $recipient_name generated."
done < recipient_names.txt

echo "Personalized messages have been created and saved in 'messages.txt'."
