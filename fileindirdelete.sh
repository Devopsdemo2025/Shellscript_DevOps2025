#!/bin/bash
files=$(find /tmp -type f)
if [ -z "$files" ] 
then
    echo "No files found in /tmp."
    exit 0
fi
echo "The following files will be deleted:"
echo "$files"

read -p "Please confirm to delete the files (Y/N): " confirmation
if [[ "$confirmation" =~ ^[Yy]$ ]] 
then
    echo "$files" | xargs -d '\n' rm -f
    echo "Files are deleted."
else
    echo "Files not deleted."
fi
