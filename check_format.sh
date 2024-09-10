#!/bin/bash
for file in $(git diff --cached --name-only | grep ".txt$"); do
    if ! grep -q "Format" "$file"; then
        echo "Файл $file не соответствует формату"
        exit 1
    fi
done
exit 0
