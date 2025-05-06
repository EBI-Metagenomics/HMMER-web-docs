#!/usr/bin/env bash

set -euo pipefail

FASTA="path/to/input.fasta"
OUTPUT="result.json"

RESPONSE=$(curl -s -X POST \
    "https://wwwdev.ebi.ac.uk/Tools/hmmer/api/v1/search/phmmer" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d "{\"database\":\"pdb\",\"input\":\"$(cat $FASTA | awk '{printf "%s\\n", $0}' | sed 's/"/\\"/g')\"}")

JOB_ID=$(echo $RESPONSE | grep -o '"id":[^,}]*' | sed 's/"id": *"//g' | sed 's/"//g')

while true; do
    RESPONSE=$(curl -s -X GET \
        "https://wwwdev.ebi.ac.uk/Tools/hmmer/api/v1/result/$JOB_ID" \
        -H "Accept: application/json")

    STATUS=$(echo "$RESPONSE" | grep -o '"status"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/.*:[[:space:]]*"//;s/"$//')

    if [ "$STATUS" == "SUCCESS" ]; then
        echo "Job completed successfully!"
        echo $RESPONSE >$OUTPUT
        break
    fi

    echo "Current status: $STATUS"

    sleep 5
done
