#!/usr/bin/env bash

# Exit immediately if any command exits with a non-zero status
# Treat unset variables as an error, and pipes will fail if any command fails
set -euo pipefail

# Define the path to the input FASTA file
FASTA="path/to/input.fasta"
# Define the path to the output JSON file
OUTPUT="result.json"

# Perform a POST request to submit the FASTA sequence to the API and run an phmmer search
# The sequence is read from the FASTA file and escaped appropriately
RESPONSE=$(curl -s -X POST \
    "https://www.ebi.ac.uk/Tools/hmmer/api/v1/search/phmmer" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d "{\"database\":\"pdb\",\"input\":\"$(cat $FASTA | awk '{printf "%s\\n", $0}' | sed 's/"/\\"/g')\"}")

# Extract the job ID from the JSON response using grep and sed
# The job ID is returned in the response and will be used to check the status later
JOB_ID=$(echo $RESPONSE | grep -o '"id":[^,}]*' | sed 's/"id": *"//g' | sed 's/"//g')

# Start an infinite loop to periodically check the status of the job
while true; do
    # Perform a GET request to check the status of the job using the job ID
    RESPONSE=$(curl -s -X GET \
        "https://www.ebi.ac.uk/Tools/hmmer/api/v1/result/$JOB_ID" \
        -H "Accept: application/json")

    # Extract the status field from the JSON response using grep and sed
    STATUS=$(echo "$RESPONSE" | grep -o '"status"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/.*:[[:space:]]*"//;s/"$//')

    # Check if the status is "SUCCESS"
    if [ "$STATUS" == "SUCCESS" ]; then
        # If successful, print a success message and save the response to a file
        echo "Job completed successfully!"
        echo $RESPONSE >$OUTPUT # Save the response (JSON) to the output file
        break                   # Exit the loop when the job is successful
    fi

    # Print the current status if it's not "SUCCESS"
    echo "Current status: $STATUS"

    # Sleep for 5 seconds before checking the status again
    sleep 5
done
