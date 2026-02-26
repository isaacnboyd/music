#!/bin/bash
# Convert MusicXML to LilyPond using Docker

if [ $# -eq 0 ]; then
    echo "Usage: $0 <input.mxl> [output.ly]"
    exit 1
fi

INPUT_FILE="$1"
INPUT_DIR=$(cd "$(dirname "$INPUT_FILE")" && pwd)
INPUT_NAME=$(basename "$INPUT_FILE")

if [ -n "$2" ]; then
    OUTPUT_FILE="$2"
    OUTPUT_DIR=$(cd "$(dirname "$OUTPUT_FILE")" && pwd)
    OUTPUT_NAME=$(basename "$OUTPUT_FILE")
else
    OUTPUT_DIR="$INPUT_DIR"
    OUTPUT_NAME="${INPUT_NAME%.*}.ly"
fi

# Disable MSYS path conversion for Docker volume paths
export MSYS_NO_PATHCONV=1

if docker run --rm \
    -v "$INPUT_DIR:/input" \
    -v "$OUTPUT_DIR:/output" \
    music-ci \
    musicxml2ly "/input/$INPUT_NAME" -o "/output/$OUTPUT_NAME"; then
    echo "Converted: $OUTPUT_NAME created in $OUTPUT_DIR"
else
    echo "Error: Conversion failed"
    exit 1
fi
